<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@ Page Language="VB"%>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>
<%
Dim webroot, page, bgcolor, fgcolor
webroot = ""
bgcolor="white"
fgcolor="green"
page = "Culture Search"
%>

<script language="VB" runat="server">

Sub Page_Load(sender As Object, e As EventArgs)
  ' Only bind the data on the first visit to the page
  If Not Page.IsPostBack
    BindSQL()
  End If
End Sub

'Create an variable in Global scope
Dim ResultCount as Integer
Dim strWhereClause as String


Sub PageChange(sender As Object, e As DataGridPageChangedEventArgs)
	algaeData.CurrentPageIndex = e.NewPageIndex
	BindSQL()
End Sub

Sub PagerButtonClick(sender As Object, e As EventArgs)
  'used by external paging UI
  Dim arg As String = sender.CommandArgument

  Select arg
    Case "next":
      If (algaeData.CurrentPageIndex < (algaeData.PageCount - 1)) Then
        algaeData.CurrentPageIndex += 1
      End If 

    Case "prev":
      If (algaeData.CurrentPageIndex > 0) Then
         algaeData.CurrentPageIndex -= 1
      End If

    Case "last":
      algaeData.CurrentPageIndex = (algaeData.PageCount - 1)

    Case Else:
      algaeData.CurrentPageIndex = Convert.ToInt32(arg)
  End Select

  BindSQL()
End Sub



Sub Prev_Buttons()
  Dim PrevSet As String

  If algaeData.CurrentPageIndex+1 <> 1 and ResultCount <> -1 Then
    PrevSet = algaeData.PageSize
    PrevButton.Text = (" < Prev " & PrevSet)
	
    If algaeData.CurrentPageIndex+1 = algaeData.PageCount Then
      FirstButton.Text = (" << 1st Page ")
    End If
  End If
End Sub


Sub Next_Buttons()
  Dim NextSet As String

  If algaeData.CurrentPageIndex+1 < algaeData.PageCount Then
    NextSet = algaeData.PageSize
    NextButton.Text = (" Next " & NextSet & " > ")
  End If

  If algaeData.CurrentPageIndex+1 = algaeData.PageCount-1 Then
    Dim EndCount As Integer = ResultCount - (algaeData.PageSize * (algaeData.CurrentPageIndex+1))
    NextButton.Text = (" Next " & EndCount & " > ")
  End If
End Sub


Sub Repage(sender As Object, e As EventArgs)
  algaeData.CurrentPageIndex = 0
  BindSQL()
End Sub


Sub BindSQL()
  Dim MyConnection As OleDBConnection
  Dim MyAdapter as OleDbDataAdapter
  Dim MyDataReader As OleDbDataReader
  Dim DS as Dataset
  Dim MyCommand As OleDBCommand
  Dim sqlStr As String = "SELECT top 250 utexPrefix + utexNumber as UtexNumber, '<i>' + Genus + ' ' + Species + '<i>' as [Strain] ,  AuthoirityName as Authority, Media FROM qry_searchList"
  Dim strConn As String = "server=(local);uid=sa;pwd=;database=pubs;Trusted_Connection=yes;"
  Dim RcdCount As Integer

  'Open up our connection with our connection object
  MyConnection = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("database/20061106utex.mdb") & ";")

  'To execute our Sql Statement and provide out active connection
  MyCommand = New OleDbCommand(sqlStr, MyConnection)

  'Create instance of dataset object and fill our predetermined datagrid with it and we name it

  MyAdapter = new OleDBDataAdapter(MyCommand)
  DS = new Dataset()			
  MyAdapter.Fill(DS, "AlgaeData")

  RcdCount = DS.Tables("AlgaeData").Rows.Count.ToString()
  algaeData.Pagesize = CInt(ps.SelectedItem.Value)

  If Not Page.IsPostback
    algaeData.CurrentPageIndex = 0
  End if

  ResultCount = RcdCount
  RecordCount.Text = "<b><i>" & RcdCount & "</i> records found"

  'Now we assign the dataview to the datasource of the datagrid and we send it right on it
  Try
    algaeData.DataSource = DS
    algaeData.Databind()
  Catch e As Exception
    algaeData.CurrentPageIndex = 0
  End Try


  sqlStr = "select classid, class from qry_ClassList order by Class"
  'To execute our Sql Statement and provide out active connection
  MyCommand = New OleDbCommand(sqlStr, MyConnection)

  'Create instance of dataset object and fill our predetermined datagrid with it and we name it
  MyConnection.open()
  MyDataReader = MyCommand.ExecuteReader(CommandBehavior.CloseConnection)


  'Now we assign the dataview to the datasource of the datagrid and we send it right on it
	ClassList.DataSource = MyDataReader
	ClassList.DataValueField = "ClassID"
	ClassList.DataTextField = "Class"
	ClassList.DataBind()

  If algaeData.CurrentPageIndex <> 0 Then
    Call Prev_Buttons()
    Firstbutton.Visible = true
    Prevbutton.Visible = true
  else
    Firstbutton.Visible = false
    Prevbutton.Visible = false
  end if

  If algaeData.CurrentPageIndex <> (algaeData.PageCount-1) then
    Call Next_Buttons()
    NextButton.Visible = true
    Lastbutton.Visible = true
  else
    NextButton.Visible = false
    Lastbutton.Visible = False
  end if

  lblPageCount.Text = "Page " & algaeData.CurrentPageIndex + 1 & " of " & algaeData.PageCount
End Sub



</script>

<!--#include file="includes/functions.aspx"-->
<html>
<head>
<title>UTEX The Culture Collection of Algae</title>
<LINK REL=STYLESHEET HREF="<%=webroot%>/includes/styleMain.css" TYPE="text/css">
</head>

<body>

<table align="center" border ="0" cellspacing="0" cellpadding="0" width="760" height="100%" class="normal">

<tr align="center" height=100>
  <td colspan = 3>
<!--#include virtual="/includes/header.html"-->
  </td>
</tr>
<tr valign="top">
  <td width = 150 valign="TOP">
<%response.write ( print_navigation(page, bgColor, fgColor)) %>
  </td>
  <td width = 610 colspan = 1><br>
<!--MAIN BODY------------------------>





  <form runat="server">


Class:<asp:DropDownList id="ClassList" runat="server">
</asp:DropDownList>

Result Size:
    <asp:DropDownList id="ps" runat="server">
      <asp:ListItem>10</asp:ListItem>
      <asp:ListItem>25</asp:ListItem>
      <asp:ListItem>50</asp:ListItem>
    </asp:DropDownList>
    <asp:button text="Search" runat="server" OnClick="RePage"/>



<asp:label id="RecordCount" runat="server" />
    <ASP:Datagrid id="AlgaeData" runat="server" 
              AllowPaging="True" 
              AllowCustomPaging="False" 
	      Font-Size="10pt"
	      Width = "600"
	      AutoGenerateColumns="False"
	      Gridlines="None"	
	      cellspacing="2"
	      cellpadding="3"	     
              PagerStyle-Visible = "False"
  	      OnPageIndexChanged = "PageChange"
    >
<HeaderStyle BackColor="Blue" ForeColor="White" Font-Bold="True" HorizontalAlign="Center" />
<AlternatingItemStyle BackColor="#EFEFEE" />
     <columns>
        <asp:boundcolumn DataField="UtexNumber" HeaderText="Utex#" SortExpression="Utex#"/>
        <asp:boundcolumn DataField="Strain" HeaderText="Strain" SortExpression="Strain"/>
        <asp:boundcolumn DataField="Authority" HeaderText="Authority" />
        <asp:boundcolumn DataField="Media" HeaderText="Media" />
    </columns>
<PagerStyle Mode="NumericPages" position="Bottom" Horizontalalign="Right"/>

    </ASP:DataGrid>
<table width = 100% class="normal">
<tr>
<td width =40%>
    <asp:linkbutton id="Firstbutton" Text="<< 1st Page" CommandArgument="0" runat="server" onClick="PagerButtonClick"/>
    <asp:linkbutton id="Prevbutton" Text= "" CommandArgument="prev" runat="server" onClick="PagerButtonClick"/>
</td>
<td width =20%>  
	<asp:Label id="lblPageCount" runat="server" />
</td>
<td width =40% align="right">
    <asp:linkbutton id="Nextbutton" Text= "" CommandArgument="next" runat="server" onClick="PagerButtonClick"/>
    <asp:linkbutton id="Lastbutton" Text="Last Page >>" CommandArgument="last" runat="server" onClick="PagerButtonClick"/>
</td>
</tr>
</table>

  </form>




<!--MAIN BODY END------------------------>
  </td>
</tr>


<tr align="center">
  <td colspan = 2>
	<hr width=100% size=2>
<!--#include virtual="/includes/footer.html"-->
  </td>
</tr>


</table>	
</body>
</html>
