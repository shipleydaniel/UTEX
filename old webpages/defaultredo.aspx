﻿<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@ Page Language="VB"%>
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
bgcolor="green"
fgcolor="white"
page = "Home"


%>
<LINK REL=STYLESHEET HREF="<%=webroot%>/includes/styleMain.css" TYPE="text/css">
<script language="javascript" src="<%=webroot%>/javascripts/menu.js"></script>


<script language="VB" runat="server">

Dim Public imageDirectory = getImageLocation()
Dim Public dbFile = getDBLocation()



Sub Page_Load(sender As Object, e As EventArgs)
  ' Only bind the data on the first visit to the page
    PullImage()
End Sub



Sub PullImage()

  Dim MyConnection As OleDBConnection
  Dim MyAdapter as OleDbDataAdapter
  Dim MyDataReader As OleDbDataReader
  Dim DS as Dataset
  Dim MyCommand As OleDBCommand
  Dim sqlStr As String

  sqlStr= "select top 1  '<img src=''" + imageDirectory + "\spacer.gif'' width=120 height=0><a href=algaeDetail.aspx?algaeID='+CStr(algaeID)+'><img src=''"
  sqlStr = sqlStr + imageDirectory + "' + imageFile +''' border=0  height=300 width=400 align=center></a>' AS ImageReference from tblAlgaeImage where algaeImageID >= " + cstr( GetRandomNumberInRange(3, 876) ) + " order by algaeImageID"

  'Open up our connection with our connection object
  MyConnection = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath(dbFile) & ";")

  'To execute our Sql Statement and provide out active connection
  MyCommand = New OleDbCommand(sqlStr, MyConnection)

  'Create instance of dataset object and fill our predetermined datagrid with it and we name it
  MyConnection.open()
  MyDataReader = MyCommand.ExecuteReader(CommandBehavior.CloseConnection)


  'Now we assign the dataview to the datasource of the datagrid and we send it right on it		
  imageGrid.DataSource = myDataReader
  imageGrid.DataBind()



  ' Close our DataReader and Connection
  myDataReader.Close()
  myConnection.Close()

End Sub

</script>
<style>
<!--
 p.MsoNormal
	{mso-style-parent:"";
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman";
	margin-left:0in; margin-right:0in; margin-top:0in}
.auto-style1 {
	font-weight: bold;
	text-decoration: underline;
}
.auto-style2 {
	text-align: center;
}
.auto-style3 {
	text-align: left;
}
.auto-style4 {
	text-decoration: underline;
}
.auto-style5 {
	text-align: justify;
}
.auto-style6 {
	text-align: justify;
	margin-top: 0;
	margin-bottom: 0;
}
.auto-style7 {
	text-decoration: none;
}
-->
</style>
<script language="JavaScript" type="text/javascript">
<!--
if (document.getElementById) {
document.writeln('<style type="text/css"><!--')
document.writeln('.texter {display:none} @media print {.texter {display:block;}}')
document.writeln('//--></style>') }

function openClose(theID) {
if (document.getElementById(theID).style.display == "block") { document.getElementById(theID).style.display = "none" }
else { document.getElementById(theID).style.display = "block" } }
// -->
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
  <td width = 810 colspan = 1 class="auto-style2">
<table width="810" border=0>
<td width="405" valign=top class="auto-style3" style="height: 279px">
 <span class="auto-style1"><strong>Announcements<br></strong></span>

  	  <div onClick="openClose('a1')" style="cursor:hand; cursor:pointer">
		  <span class="auto-style3"><span class="auto-style8">
		  <img border="0" src="images/exclaim.gif" width="15" height="15"></span><font color="red"><span class="auto-style4"><strong>Weather 
	  Restriction</strong></span></font></div><div id="a1" class="texter">
Due to the recent temperature 
	  extremes, shipment of <em><strong>all temperature-sensitive algae</strong></em> 
	  will be delayed until the weather has cooled sufficiently to maximize 
	  algal viability during transit.&nbsp; UTEX also offers an alternative 
	  option to ship these cultures in a larger Styrofoam container with an ice 
	  pack for an additional $10 USD charge, which covers the cost of the 
	  container, ice pack, and added shipping weight.&nbsp;
	  <a href="http://web.biosci.utexas.edu/utex/livingalgalstrains.aspx">For 
	  more information about the weather restriction, please visit our Living 
	  Algal Cultures page.</a> </div></td>	
<td width="405" valign=top style="height: 279px">	
	<span class="auto-style1"><strong>New at UTEX<br></strong></span>
 <br>
<div onClick="openClose('a2')" style="cursor:hand; cursor:pointer">
		  <span class="auto-style3"><span class="auto-style8"><strong>
		  <img src='images/new.gif' border=0>UTEX Photobioreactor</span></span></strong></div>
	  
		  <div id="a2" class="texter">
			  UTEX now sells laboratory scale photobioreactors in 
	three different 
	  packages.&nbsp; The 2-Liter UTEX photobioreactor offers an optimized 
	  design for deliverying light to maximize growth and prodcut accumulation 
	  rates. 
	<a href="http://web.biosci.utexas.edu/utex/photobioreactor.aspx">For more information, please visit our UTEX Photobioreactor page.</a><br>		  </div>
	  </div>
	  <strong>
	  <div onclick="openClose('a3')" style="cursor:hand; cursor:pointer"><span class="auto-style3"><span class="auto-style8"><strong>
		  <img src='images/new.gif' border=0>UTEX and UT-ASTF Workshops</div></strong></span>
	  </strong>
  	  
		  <div id="a3" class="texter">
			  UTEX and 
	  UT-ASTF now offer 2- or 3-day workshops for individuals interested 
	  in learning principles and practices of growing, managing algal cultures, 
	  and processing and analyzing biomass.&nbsp; <strong>The next workshops 
	  presented by UTEX and UT-ASTF are scheduled for October 24 - 26, 2012.&nbsp; </strong>Workshops are held at the site of UTEX on the 
	  University of Texas at Austin campus as well as the JJ Pickle Research 
	  Center in Austin, Texas. &nbsp;
	  <a href="http://web.biosci.utexas.edu/utex/workshopsoverview.aspx">For 
	  more information, please visit our Workshop Overview page.</a>
			  		  </div>
	  
	  </td>
</table>
  
  <table width="810" border=0>
<td width="350" valign=top class="auto-style3" style="height: 279px">
<p class="auto-style3"><span lang="en-us"><span class="auto-style8">About Us</span></span><p class="auto-style3">
<span lang="en-us">The UTEX Culture Collection of Algae includes approximately 3,000 different strains of 
   living algae, representing most major algal taxa.&nbsp; Cultures in the 
   Collection are used for research, teaching, biotechnology development, and 
   various other projects throughout the world.&nbsp; UTEX supports this 
   community of users through the provision of algal cultures along with a 
   variety of other goods and services.&nbsp; This website contains a listing of 
   the cultures maintained by UTEX, conditions for their maintenance, 
   information regarding the purchase of cultures, and various other features of 
   UTEX.</td>
 <td width="400" valign=top style="height: 279px"><asp:DataGrid id="imageGrid" runat="server" 
showHeader = "False"
border="0"
Gridlines="None"	
width="400"
align="Left"
/>
</td>
</tr>
</table>
  <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" id="table1">
    <tr>
      <td>
      <p align="center"><font size="2">Click on image for algae detail.</font></td>
    </tr>
  </table>



  </td>
</tr><br><br>


<tr align="center">
  <td colspan = 3>
	<hr width=100% size=2>
<!--#include virtual="includes/footer.html"-->
  </td>
</tr>


</table>	
</body>
</html>