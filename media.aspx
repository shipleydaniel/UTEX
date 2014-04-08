<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@ Page Language="VB" %>
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
page = "Media List"
%>

<LINK REL=STYLESHEET HREF="<%=webroot%>/includes/styleMain.css" TYPE="text/css">
<script language="javascript" src="<%=webroot%>/javascripts/menu.js"></script>

<script language="VB" runat="server">

Dim Public imageDirectory = getImageLocation()
Dim Public dbFile = getDBLocation()


'Create an variable in Global scope
Dim ResultCount as Integer
Dim strWhereClause as String


Sub getFwMediaList()
  Dim MyConnection As OleDBConnection
  Dim MyAdapter as OleDbDataAdapter
  Dim MyDataReader As OleDbDataReader
  Dim DS as Dataset
  Dim MyCommand As OleDBCommand
  Dim sqlStr As String = "SELECT '<a href=mediaDetail.aspx?mediaID=' + cstr(mediaID) + '>'+ media+'</a>' as media " 
	sqlStr = sqlStr + " FROM tblMedia where WaterType = ""FW"" order by media"
  Dim RcdCount As Integer
  Dim strWhereClause as String

  'Response.write ( sqlStr )
  'Open up our connection with our connection object
  MyConnection = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath(dbFile ) & ";")

  'To execute our Sql Statement and provide out active connection
  MyCommand = New OleDbCommand(sqlStr, MyConnection)

  'Create instance of dataset object and fill our predetermined datagrid with it and we name it

  MyAdapter = new OleDBDataAdapter(MyCommand)
  DS = new Dataset()			
  MyAdapter.Fill(DS, "FWMediaData")


  'Now we assign the dataview to the datasource of the datagrid and we send it right on it
  Try
    FWmediaData.DataSource = DS
    FWmediaData.Databind()
  Catch e As Exception
    FwmediaData.CurrentPageIndex = 0
  End Try

  myConnection.Close()

End Sub

Sub getSWMediaList()
  Dim MyConnection As OleDBConnection
  Dim MyAdapter as OleDbDataAdapter
  Dim MyDataReader As OleDbDataReader
  Dim DS as Dataset
  Dim MyCommand As OleDBCommand
  Dim sqlStr As String = "SELECT '<a href=mediaDetail.aspx?mediaID=' + cstr(mediaID) + '>'+ media+'</a>' as media " 
	sqlStr = sqlStr + " FROM tblMedia where WaterType = ""SW"" order by media"
  Dim RcdCount As Integer
  Dim strWhereClause as String

  'Response.write ( sqlStr )
  'Open up our connection with our connection object
  MyConnection = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath(dbFile ) & ";")

  'To execute our Sql Statement and provide out active connection
  MyCommand = New OleDbCommand(sqlStr, MyConnection)

  'Create instance of dataset object and fill our predetermined datagrid with it and we name it

  MyAdapter = new OleDBDataAdapter(MyCommand)
  DS = new Dataset()			
  MyAdapter.Fill(DS, "SWMediaData")


  'Now we assign the dataview to the datasource of the datagrid and we send it right on it
  Try
    SWmediaData.DataSource = DS
    SWmediaData.Databind()
  Catch e As Exception
    SWmediaData.CurrentPageIndex = 0
  End Try

  myConnection.Close()

End Sub



</script>

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

<% 
getFWMediaList()
getSWMediaList()
%>
<table class="normal" border="0" width="100%" cellspacing ="0" cellPadding = "0">
  <tr>
    <td valign="top">
    <ASP:Datagrid id="FwmediaData" runat="server" 
              AllowPaging="False" 
              AllowCustomPaging="False" 
	      Font-Size="10pt"
	      Width = "390"
	      AutoGenerateColumns="False"
	      Gridlines="None"	
	      cellspacing="2"
	      cellpadding="3"	     
              PagerStyle-Visible = "False"
    >
<HeaderStyle BackColor="Blue" ForeColor="White" Font-Bold="True" HorizontalAlign="Center" />
<AlternatingItemStyle BackColor="#EFEFEE" />
     <columns>
        <asp:boundcolumn DataField="Media" HeaderText="Fresh Water Media" SortExpression="Media" ItemStyle-Width="390" />
    </columns>
    </ASP:DataGrid>
    </td>
    <td valign="top">
    <ASP:Datagrid id="SWmediaData" runat="server" 
              AllowPaging="False" 
              AllowCustomPaging="False" 
	      Font-Size="10pt"
	      Width = "390"
	      AutoGenerateColumns="False"
	      Gridlines="None"	
	      cellspacing="2"
	      cellpadding="3"	     
              PagerStyle-Visible = "False"
    >
<HeaderStyle BackColor="Blue" ForeColor="White" Font-Bold="True" HorizontalAlign="Center" />
<AlternatingItemStyle BackColor="#EFEFEE" />
     <columns>
        <asp:boundcolumn DataField="Media" HeaderText="Salt Water Media" SortExpression="Media" ItemStyle-Width="390" />
    </columns>
    </ASP:DataGrid>
    </td>
  </tr>
</table>



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
