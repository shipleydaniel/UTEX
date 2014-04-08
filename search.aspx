<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@ Page Language="VB" debug = "true" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>
<%@ Import Namespace="System.IO" %>
<%
Dim webroot, page, bgcolor, fgcolor
webroot = "/utex"
bgcolor="white"
fgcolor="green"
page = "Culture Search"
%>

<script language="VB" runat="server">

Dim Public imageDirectory = getImageLocation()
Dim Public dbFile = getDBLocation()


Sub Page_Load(sender As Object, e As EventArgs)
  ' Only bind the data on the first visit to the page
  If Not Page.IsPostBack


    searchFormHeader ( request.queryString("txtSearch") ) 
    searchFormUTEX (request.queryString("utexNumber") )

    PullClassList()
    BindSQL(SortOrder.text)

  End If
End Sub

'Create an variable in Global scope
Dim ResultCount as Integer
Dim strWhereClause as String


'****User the search criteria from header search click if everything else is null*****'
Sub searchFormHeader ( txtSearch as string)

 if isItNull(txtSearch)  <> "" and isItNull(txtStrain.text) = "" and isItNull(txtutex.text)  = "" 

	txtStrain.text = txtSearch

 END IF

END sub

Sub searchFormUTEX ( UtexNumber as string)

 if isItNull(utexNumber)  <> "" and isItNull(txtUtex.text) = ""

	txtUtex.text = UtexNumber

 END IF

END sub





Sub SortResults(sender as Object, e as DataGridSortCommandEventArgs)

  
  IF SortOrder.text = replace (e.sortExpression, "DESC", "ASC")
	SortOrder.text = replace (e.sortExpression, "ASC", "DESC")
  ELSE
  	SortOrder.text = replace (e.sortExpression, "DESC", "ASC")
  END IF 

	BindSQL( SortOrder.text)

End Sub

Sub PageChange(sender As Object, e As DataGridPageChangedEventArgs)
	algaeData.CurrentPageIndex = e.NewPageIndex
	BindSQL(SortOrder.text)
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

  BindSQL(SortOrder.text)
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
  BindSQL(SortOrder.text)
End Sub


Sub PullClassList()

  Dim MyConnection As OleDBConnection
  Dim MyAdapter as OleDbDataAdapter
  Dim MyDataReader As OleDbDataReader
  Dim DS as Dataset
  Dim MyCommand As OleDBCommand
  Dim sqlStr As String= "select classid, className from qry_ClassList order by ClassName"
  Dim strConn As String = "server=(local);uid=sa;pwd=;database=pubs;Trusted_Connection=yes;"

  'Open up our connection with our connection object
  MyConnection = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath(dbFile ) & ";")

  'To execute our Sql Statement and provide out active connection
  MyCommand = New OleDbCommand(sqlStr, MyConnection)

  'Create instance of dataset object and fill our predetermined datagrid with it and we name it
  MyConnection.open()
  MyDataReader = MyCommand.ExecuteReader(CommandBehavior.CloseConnection)


  'Now we assign the dataview to the datasource of the datagrid and we send it right on it
	ClassList.DataSource = MyDataReader
	ClassList.DataValueField = "ClassID"
	ClassList.DataTextField = "ClassName"
	ClassList.DataBind()

  myConnection.Close()
  myDataReader.Close()

End Sub


Sub BindSQL(sortExpr as String)
  Dim MyConnection As OleDBConnection
  Dim MyAdapter as OleDbDataAdapter
  Dim MyDataReader As OleDbDataReader
  Dim DS as Dataset
  Dim MyCommand As OleDBCommand
  Dim sqlStr As String = "SELECT top 500 '<a href=algaeDetail.aspx?algaeID=' + cstr(algaeID) + '>'+ utexNumber+'</a>' as UtexNumber, '<i>' + Strain + '<i>' as [Strain] ,  " 
	sqlStr = sqlStr + "Authority, mediaLink as Media FROM qry_searchList"
  Dim RcdCount As Integer
  Dim strWhereClause as String
  Dim hasImage as Integer
  Dim isTypeCulture as Integer


	
  IF chkImages.checked  
	hasImage = 1
  ELSE
	hasImage = 0
  END IF


  IF chkTypeCulture.checked  
	isTypeCulture = 1
  ELSE
	isTypeCulture = 0
  END IF



        strWhereClause = " where 1 = 2 "

        strWhereClause = strWhereClause + GetWhereClause(isItNull(txtStrain.Text), isItNull(txtutex.Text), ClassList.SelectedItem.Value, hasImage, isTypeCulture, isItNull(txtNotes.Text), isItNull(txtRelatives.Text), isItNull(txtAKA.Text))

        Response.Write(txtStrain.Text)
  TestText.Text = strWhereClause

  IF isItNull (SortExpr) = ""
            'sortOrder.text = " Strain ASC"
            'SortExpr = " Strain ASC"
            SortOrder.Text = " UtexNumber ASC"
            sortExpr = " UtexNumber ASC"
  END IF


  sqlStr = sqlStr + strWhereClause + " Order by " + sortExpr 
   'Response.write ( isItNull(sqlStr) )
   'Response.write (isitnull(txtAKA.text))

  'Open up our connection with our connection object
  MyConnection = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath(dbFile ) & ";")

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

  myConnection.Close()

End Sub



</script>

<!--#include file="includes/functions.aspx"-->
<html>
<head>
<title>UTEX The Culture Collection of Algae</title>
<LINK REL=STYLESHEET HREF="<%=webroot%>/includes/styleMain.css" TYPE="text/css">
<script language="javascript" src="<%=webroot%>/javascripts/menu.js"></script>
</head>

<body>

<table align="center" border ="0" cellspacing="0" cellpadding="0" width="960" height="100%" class="normal">

<tr align="center" height=100>
  <td colspan = 3>
<!--#include virtual="includes/header.html"-->
  </td>
</tr>
<tr valign="top">
  <td width = 150 valign="TOP">
<%response.write ( print_navigation(page, bgColor, fgColor)) %>
  </td>
  <td><img src="images\spacer.gif" height='0' width='10'> </td>
  <td width = 810 colspan = 1><br>
<!--MAIN BODY------------------------>



<form runat="server">
<table class="normal" border="0" width="790" cellspacing ="0" cellPadding = "1">
  <tr>
    <td width="70">UTEX#:</td>
    <td width="320">
	<asp:TextBox id="txtutex" runat="server" width="300" />
    </td>
    <td width="70"><img src="images/spacer.gif" height="0" width="3">Class:</td>
    <td width="320">
  	<asp:DropDownList id="ClassList" runat="server">
	</asp:DropDownList>
    </td>
  </tr>
  <tr>
    <td width="75">Genus/Species:</td>
    <td width="315" >
	<asp:TextBox id="txtStrain" runat="server"  width="300" />
    </td>
    <td width="75"><img src="images/spacer.gif" height="0" width="3">Result&nbsp;Size:</td>
    <td width="315">
    	<asp:DropDownList id="ps" runat="server">
	  <asp:ListItem>10</asp:ListItem>
	  <asp:ListItem>25</asp:ListItem>
      	  <asp:ListItem>50</asp:ListItem>
      	  <asp:ListItem>100</asp:ListItem>
	</asp:DropDownList>
    </td>
  </tr>
  <tr>
    <td width="75">Notes:</td>
    <td width="315">
  	<asp:TextBox id="txtNotes" runat="server"  width="300" />
    </td>
    <td width = "390" colspan = "2">
	<table class="normal" border="0">
	  <tr>
	    <td>Has Images:</td>
	    <td align="left">
    		<asp:CheckBox id="chkImages" runat="server" Value = "1" />
	    </td>
      	    <td >Type Culture:</td>
  	    <td >
		<asp:CheckBox id="chkTypeCulture" runat="server"  Value = "1" />
	    </td>
	  </tr>
	</table>
    </td>
  </tr>
  <tr>
    <td width="75">Relatives:</td>
    <td width="315">
  	<asp:TextBox id="txtRelatives" runat="server"  width="300" />
    </td>
    <td width = "390" colspan = "2">&nbsp;
	
    </td>
  </tr>
  <tr>
    <td width="75">Also Known As:</td>
    <td width="315">
  	<asp:TextBox id="txtAKA" runat="server"  width="300" />
    </td>
    <td width = "390" colspan = "2">&nbsp;
	
    </td>
  </tr>
  <tr>
    <td width="390" colspan="2">&nbsp; 
</td>
    <td width="390" colspan="2"><img src="images/spacer.gif" height="0" width="3"><a href="searchAbbreviations.aspx">
<center>How to read the online catalog</a><br>
	<a href="searchFaq.aspx">Tips on how to search</a>
   </td>
    </tr>

  <tr>    
    <td colspan=2 align="left" valign="top">&nbsp; 

     </td>



    <td colspan=2 align="Right">
    <asp:Label id="SortOrder" runat="server" Visible="False" />	
	<asp:button text="Search" runat="server" OnClick="RePage"/><br>
	<asp:label id="RecordCount" runat="server" />
	</td>
  </tr>
</table>
<br><br>
<img src="images/exclaim.gif" height="15" width="15"> Click on header name 
    to sort (default is Alphabetical by strain)

    <ASP:Datagrid id="AlgaeData" runat="server" 
              AllowPaging="True" 
              AllowCustomPaging="False" 
	      AllowSorting="True"
              OnSortCommand="SortResults"
	      Font-Size="10pt"
	      Width = "790"
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
        <asp:boundcolumn DataField="UtexNumber" HeaderText="<b>UTEX#</b>" SortExpression=" UtexSort ASC, utexnumber ASC" ItemStyle-Width="10%" />
        <asp:boundcolumn DataField="Strain" HeaderText="<b>Strain</b>" SortExpression=" Strain ASC"  ItemStyle-Width="50%" />
        <asp:boundcolumn DataField="Authority" HeaderText="<b>Authority</b>" SortExpression=" Authority ASC" ItemStyle-Width="20%"  />
        <asp:boundcolumn DataField="Media" HeaderText="<b>Media</b>" SortExpression=" Media ASC"  ItemStyle-Width="20%" />
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
<br>
<!--	<asp:label id="TestText" runat="server" /> -->
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
  <td colspan = 3>
	<hr width=100% size=2>
<!--#include virtual="includes/footer.html"-->
  </td>
</tr>


</table>	
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-41541937-1', 'utexas.edu');
  ga('send', 'pageview');

</script>
</body>
</html>	
