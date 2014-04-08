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
page = "Algae Detail"

%>

<LINK REL=STYLESHEET HREF="<%=webroot%>/includes/styleMain.css" TYPE="text/css">
<script language="javascript" src="<%=webroot%>/javascripts/menu.js"></script>
</head>

<script language="VB" runat="server">



Dim Public imageDirectory = getImageLocation()
Dim Public dbFile = getDBLocation()

Dim recordCount as Boolean

Sub AlgaeDetail( algaeID as string)

  Dim MyConnection As OleDBConnection
  Dim MyAdapter as OleDbDataAdapter
  Dim MyDataReader As OleDbDataReader
  Dim DS as Dataset
  Dim MyCommand As OleDBCommand
  Dim sqlStr As String
  Dim RcdCount As Boolean

  IF not isNumeric(algaeID) 
	algaeID = cstr(0)
  END IF


  sqlStr= "select *, '<i>' + Genus + ' ' + Species + '<i>' as [Strain] from qry_AlgaeDetail where algaeID = " + AlgaeID

  'Open up our connection with our connection object
  MyConnection = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath(dbFile) & ";")

  'To execute our Sql Statement and provide out active connection
  MyCommand = New OleDbCommand(sqlStr, MyConnection)

  'Create instance of dataset object and fill our predetermined datagrid with it and we name it
  MyConnection.open()
  MyDataReader = MyCommand.ExecuteReader(CommandBehavior.CloseConnection)


  'Now we assign the dataview to the datasource of the datagrid and we send it right on it		
  AlgaeDetailGrid.DataSource = MyDataReader
  AlgaeDetailGrid.DataBind()


  ' Close our DataReader and Connection
  myDataReader.Close()
  myConnection.Close()


End Sub




Sub AlgaeImages( algaeID as string)
  Dim MyConnection As OleDBConnection
  Dim MyAdapter as OleDbDataAdapter
  Dim MyDataReader As OleDbDataReader
  Dim MyCommand As OleDBCommand
  Dim sqlStr As String
  Dim RcdCount As Integer

  IF not isNumeric(algaeID) 
	algaeID = cstr(0)
  END IF

  sqlStr = "Select '<img src=''"
  sqlStr = sqlStr + imageDirectory + "' + imageFile +''' border=0 height=300 width=400 align=center></a>' AS ImageReference from tblAlgaeImage where algaeID = " + algaeId

  'Open up our connection with our connection object
  MyConnection = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath(dbFile) & ";")

  'To execute our Sql Statement and provide out active connection
  MyCommand = New OleDbCommand(sqlStr, MyConnection)

  'Create instance of dataset object and fill our predetermined datagrid with it and we name it
  MyConnection.open()
  MyDataReader = MyCommand.ExecuteReader(CommandBehavior.CloseConnection)

  'Now we assign the dataview to the datasource of the datagrid and we send it right on it		
  imageGrid.DataSource = MyDataReader
  imageGrid.DataBind()

  ' Close our DataReader and Connection
  
  myDataReader.Close()
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
<% AlgaeDetail(request.queryString("AlgaeID")) %>
<asp:Repeater id="AlgaeDetailGrid" runat="server" >
<ItemTemplate>
<table class="normal" width="790" border="0" cellPadding = "2" cellspacing = "2">
  <tr>
    <td align="right"  valign="top">
	<b>UTEX&nbsp;Number:&nbsp;</b>
    </td>
    <td width="100%">
	<%# Container.DataItem ( "UtexPrefix" )%>
	<%# Container.DataItem ( "UtexNumber" )%>
    </td>
  </tr>
  <tr>
    <td align="right"  valign="top">
	<b>Class:&nbsp;</b>
    </td>
    <td>
	<%# Container.DataItem ( "Class" )%>
    </td>
  </tr>
  <tr>
    <td align="right"  valign="top">
	<b>Strain:&nbsp;</b>
    </td>
    <td>
	<%# Container.DataItem ( "Strain" )%> 	
    </td>
  </tr>
  <tr>
    <td align="right"  valign="top">
	<b>Media:&nbsp;</b>
    </td>
    <td>
	<%# Container.DataItem ( "MediaLink" )%>
    </td>
  </tr>
  <tr>
    <td align="right"  valign="top">
	<b>Origin:&nbsp;</b>
    </td>
    <td>
	<%# Container.DataItem ( "origin" )%><br>
    </td>
  </tr>
  <tr>
    <td align="right"  valign="top">
	<b>Description&nbsp;of&nbsp;Location:&nbsp;</b>
    </td>
    <td>
	<%# Container.DataItem ( "descriptionOfLocation" )%>
	 <%# Container.DataItem ( "GPS" )%>
    </td>
  </tr>
  <tr>
    <td align="right"  valign="top">
	<b>Type Culture:&nbsp;</b>
    </td>
    <td>
	<%# Container.DataItem ( "TypeCulture" )%>
    </td>
  </tr>
  <tr>
    <td align="right"  valign="top">
	<b>Collection:&nbsp;</b>
    </td>
    <td>
	<%# Container.DataItem ( "Collectors" )%> <%# Container.DataItem ( "CollectionDate" )%> 
    </td>
  </tr>
  <tr>
    <td align="right"  valign="top">
	<b>Isolation:&nbsp;</b>
    </td>
    <td>
	<%# Container.DataItem ( "Isolators" )%> <%# Container.DataItem ( "IsolationDate" )%> 
    </td>
  </tr>
  <tr>
    <td align="right"  valign="top">
	<b>Isolator&nbsp;Number:&nbsp;</b>
    </td>
    <td>
	<%# Container.DataItem ( "IsolatorNumber" )%>
    </td>
  </tr>
  <tr>
    <td align="right"  valign="top">
	<b>Deposition:&nbsp;</b>
    </td>
    <td>
	<%# Container.DataItem ( "Depositor" )%> <%# Container.DataItem ( "DepositionDate" )%> 
    </td>
  </tr>

  <tr>
    <td align="right"  valign="top">
	<b>Relatives:&nbsp;</b>
    </td>
    <td>
	<%# Container.DataItem ( "Relatives" )%>
    </td>
  </tr>
  <tr>
    <td align="right"  valign="top">
	<b>Also&nbsp;Known&nbsp;As:&nbsp;</b>
    </td>
    <td>
	<%# Container.DataItem ( "referenceLiterature" )%>
    </td>
  </tr>
  <tr>
    <td align="right" valign="top">
	<b>Notes:&nbsp;</b>
    </td>
    <td>
	<%# Container.DataItem ( "AccessionNotes" )%>
    </td>
  </tr>

</table>
</ItemTemplate>
</asp:Repeater>


  </td>
</tr>
<tr>
  <td colspan = 3 align="Center">

<%  AlgaeImages(request.queryString("algaeID")) %>
<table>
  <tr> 
    <td>
	<asp:DataGrid id="imageGrid" 
	runat="server" 
	showHeader = "False"
	border="0"
	Gridlines="None"	
	width="400"
	cellpadding="5"
	align="Center"
	/>
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
