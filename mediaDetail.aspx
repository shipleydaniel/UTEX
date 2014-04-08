<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@ Page Language="VB" debug="true" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>
<%@ Import Namespace="System.IO" %>

<!--#include file="includes/functions.aspx"-->
<html>
<head>
<title>UTEX The Culture Collection of Algae</title>
<%
Dim webroot, page, bgcolor, fgcolor
webroot = "/utex"
bgcolor="white"
fgcolor="green"
page = "Media Detail"

%>

<LINK REL=STYLESHEET HREF="<%=webroot%>/includes/styleMain.css" TYPE="text/css">
<script language="javascript" src="<%=webroot%>/javascripts/menu.js"></script>
</head>

<script language="VB" runat="server">



Dim Public imageDirectory = getImageLocation()
Dim Public dbFile = getDBLocation()

Dim recordCount as Boolean

Sub mediaDetail( mediaID as string)
  Dim MyConnection As OleDBConnection
  Dim MyAdapter as OleDbDataAdapter
  Dim MyDataReader As OleDbDataReader
  Dim MyCommand As OleDBCommand
  Dim sqlStr As String
  Dim RcdCount As Integer

  IF not isNumeric(mediaID) 
	mediaID = cstr(0)
  END IF

  sqlStr= "select media, abbreviation, webDirections from tblmedia where mediaID = " + mediaID

  'Open up our connection with our connection object
  MyConnection = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath(dbFile) & ";")

  'To execute our Sql Statement and provide out active connection
  MyCommand = New OleDbCommand(sqlStr, MyConnection)

  'Create instance of dataset object and fill our predetermined datagrid with it and we name it
  MyConnection.open()
  MyDataReader = MyCommand.ExecuteReader(CommandBehavior.CloseConnection)

  'Now we assign the dataview to the datasource of the datagrid and we send it right on it		
  mediaDetailGrid.DataSource = MyDataReader
  mediaDetailGrid.DataBind()

  ' Close our DataReader and Connection
  
  myDataReader.Close()
  myConnection.Close()

End Sub




Sub mediaComponentsFinal( mediaID as string)
  Dim MyConnection As OleDBConnection
  Dim MyAdapter as OleDbDataAdapter
  Dim MyDataReader As OleDbDataReader
  Dim DS as Dataset
  Dim MyCommand As OleDBCommand
  Dim sqlStr As String
  Dim RcdCount As Integer

  IF not isNumeric(mediaID) 
	mediaID = cstr(0)
  END IF

  sqlStr = "select sortBy, nutrient , Amount, StockPerFinalAmount, FinalConcentration from qry_MediaComponentsFinal where mediaID = " + mediaID
  sqlStr = sqlStr + " order by Sortby"

  'Open up our connection with our connection object
  MyConnection = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath(dbFile) & ";")

  'To execute our Sql Statement and provide out active connection
  MyCommand = New OleDbCommand(sqlStr, MyConnection)

  'Create instance of dataset object and fill our predetermined datagrid with it and we name it

  MyAdapter = new OleDBDataAdapter(MyCommand)
  DS = new Dataset()			
  MyAdapter.Fill(DS, "mediaCompoentsFinalData")

  RcdCount = DS.Tables("mediaCompoentsFinalData").Rows.Count.ToString()

  IF RcdCount > 0
	  mediaCompoentsFinalData.DataSource = DS
	  mediaCompoentsFinalData.Databind()
  END IF

  ' Close our DataReader and Connection

  myConnection.Close()

End Sub

</script>





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

<!--Display the Media Name Abbreviation and the web directions-->

<% mediaDetail(request.queryString("mediaID")) %>
<asp:Repeater id="mediaDetailGrid" runat="server" >
<ItemTemplate>
<table class="normal" width="100%" border="0" cellPadding = "0" cellspacing = "0">
  <tr>
    <td width="100%" align = "LEFT">
	<font size=3><b><%# Container.DataItem ( "Media" )%></b>&nbsp;&nbsp;</font>
	<br/><Br/>
    </td>
  </tr>
  <tr>
    <td align="Left"  valign="top">
	<b>Directions&nbsp;</b>
    </td>
  </tr>
  <tr>
    <td align="Left"  valign="top">
	<%# Container.DataItem ( "webDirections" )%><br><br>
    </td>
  </tr>
</table>
</ItemTemplate>
</asp:Repeater>



<!--List all media information in this media  -->
<% mediaComponentsFinal(request.queryString("mediaID")) %>
<table>
  <tr> 
    <td>&nbsp;&nbsp;</td>
    <td>
    <ASP:Datagrid 
	      id="mediaCompoentsFinalData"
	      runat="server" 
	      Font-Size="10pt"
	      Width = "625"
	      AutoGenerateColumns="False"
	      Gridlines="None"	
	      cellspacing="0"
	      cellpadding="2"	     
    >
<HeaderStyle BackColor="Blue" ForeColor="White" Font-Bold="True" HorizontalAlign="Left"  VerticalAlign = "TOP" />
<AlternatingItemStyle BackColor="#EFEFEE" />

    <columns>
        <asp:boundcolumn DataField="SortBy" HeaderText="#" ItemStyle-Width="25" />
        <asp:boundcolumn DataField="nutrient" HeaderText="Component" ItemStyle-Width="150" />
        <asp:boundcolumn DataField="Amount" HeaderText="Amount" SortExpression="Strain"  ItemStyle-Width="150" />
        <asp:boundcolumn DataField="StockPerFinalAmount" HeaderText="Stock Solution <br>Concentration"  ItemStyle-Width="150"  />
        <asp:boundcolumn DataField="FinalConcentration" HeaderText="Final Concentration"   ItemStyle-Width="150" />
    </columns>

    </ASP:DataGrid>
    </td>
  </tr>
</table>

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
