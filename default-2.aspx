<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
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
.auto-style5 {
	text-align:center;
	margin-top:0;
	vertical-align:top;
}
.auto-style8 {
	font-size: x-small;
}
.auto-style9 {
	border-collapse: collapse;
	border-color: #CCCCCC;
	border-width: 0;
}
.auto-style10 {
	text-align: center;
	margin-top: 3px;
	margin-bottom: 0px;
}
.hangingindent {
	padding-left:22px ;
	text-indent:-22px;
}

.auto-style11 {
	padding-left: 22px;
	text-indent: -22px;
	text-align: justify;
}

.auto-style12 {
	text-align: justify;
	margin-top: 3px;
	margin-bottom: 0px;
}
.auto-style13 {
	color: #CC6600;
}

.auto-style14 {
	font-weight: bold;
	text-align: right;
}

.auto-style15 {
	font-size: xx-small;
}

-->
</style>


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
  <td>
  <img src="images/spacer.gif" height='0' width='10'> </td>
  <td width = 810 colspan = 1 class="auto-style2">
  <table style="width:100%"><tr>
	  <th align="left" style="width:75%" class="auto-style13">Announcements</th><th>
	  <img src="images/spacer.gif" height='0' width='10'></th>
	  <th align="left" style="width:25%" class="auto-style13">Events</th></tr><tr>
	  <td rowspan="10" style="width:70%" class="auto-style3" valign="top"><div class="auto-style3">

	  <font size="2" face="Arial">

	 
  	  <p style="margin-bottom: 0" class="auto-style11">
	  <img src='images/algaeicon.png' border=0 width="15" height="15"><b> NAABB Strains Are Now Available Through UTEX</b><br>The National Alliance for Advanced Biofuels and Bioproducts (NAABB), a consortium of universities, research institutions, and companies funded by the US Department of Energy, has made 30 of their best performing strains available to the public through UTEX.  These strains are well characterized for lipid production and growth kinetics.  The strains can be accessed with a Material Transfer Agreement (MTA).  Please contact 
	  <a href="mailto:dnobles@austin.utexas.edu">Dr. David Nobles, Jr.</a> or 
	  <a href="mailto:stephen.o.pena@gmail.com">Stephen Pe&ntilde;a</a> for more 
	  information about ordering these strains.</p>
	  
	 
	  	</font></div></td><td rowspan="4">
		  <img src="images/spacer.gif" height='0' width='10'> </td>
	  <td  style="width:30%; height: 50%" valign="top"><div class="auto-style5"> 
		  <font size="2" face="Arial">	 
	   <table style="width:100%;border-bottom:1px; border-bottom-style:dotted; border-bottom-color:gray;padding:5px" class="auto-style9"><tr>
<td style="width: 35%;border-bottom:1px; border-bottom-style:dotted; border-bottom-color:gray; padding-bottom:0px" class="auto-style14"><font size="1" face="Arial">May 5-9::</font></td>
		   <td style="width:60%;border-bottom:1px; border-bottom-style:dotted; border-bottom-color:gray; padding-bottom:0px"><font size="1" face="Arial"><center><a href="atp3workshop.aspx" title="Principles & Processes: Algae Culture Maintenance, Production & Downstream Processing"><font size="1" face="Arial">ATP<sup>3</sup> 
		   Workshop</font></a></center></font></td></tr>
<tr>
<td style="width: 35%;border-bottom:1px; border-bottom-style:dotted; border-bottom-color:gray; padding-bottom:0px" class="auto-style14"><font size="1" face="Arial">June 4-6::</font></td><td style="width:60%;border-bottom:1px; border-bottom-style:dotted; border-bottom-color:gray; padding-bottom:0px"><center><a href="workshops1.aspx" title="Biochemistry and Laboratory Analysis of Biomass Composition"><font size="1" face="Arial">UTEX Microalgal Training Workshop</font></a></center></td>
</tr>
<tr>
<td style="width: 35%;border-bottom:1px; border-bottom-style:dotted; border-bottom-color:gray; padding-bottom:0px" class="auto-style14"><font size="1" face="Arial">July 21-25::</font></td><td style="width:60%;border-bottom:1px; border-bottom-style:dotted; border-bottom-color:gray; padding-bottom:0px"><font size="1" face="Arial"><center><a href="workshops1.aspx" title="Intro to Phycology -and- Genetic Modification of Cyanobacteria and Microalgae"><font size="1" face="Arial">UTEX Microalgal Training Workshop</font></a></center></font></td>
</tr>
<tr>
<td style="width: 35%;border-bottom:1px; border-bottom-style:dotted; border-bottom-color:gray; padding-bottom:0px" class="auto-style14"><font size="1" face="Arial">Aug 18-22::</font></td><td style="width:60%;border-bottom:1px; border-bottom-style:dotted; border-bottom-color:gray; padding-bottom:0px"><font size="1" face="Arial"><center><a href="atp3workshop.aspx" title="Taxonomy & Biochemistry of Microalgae with Commercial Potential"><font size="1" face="Arial">ATP<sup>3</sup> Workshop</font></a></center></font></td>
</tr>
<tr>
<td style="width:35%;border-bottom:1px; border-bottom-style:dotted; border-bottom-color:gray; padding-bottom:0px" class="auto-style14"><font size="1" face="Arial">Nov 3-7::</font></td><td style="width:60%;border-bottom:1px; border-bottom-style:dotted; border-bottom-color:gray; padding-bottom:0px"><font size="1" face="Arial"><center><a href="atp3workshop.aspx" title="Large-Scale Algal Cultivation, Harvesting & Downstream Processing"><font size="1" face="Arial">ATP<sup>3</sup> Workshop</font></a></center></font></td></tr>
</table><span class="auto-style15"><em>Hover over name for full event title and/or click on event name for additional information.</em></span></font></div></tr><tr rowspan="2">
		  <th  align="left" style="width:25%;" class="auto-style13"><br>What's New?</th></tr><tr>
	  <td style="height:50%" class="auto-style8">

	  <div class="auto-style3">

	  <font size="2" face="Arial">

	 
  	  <img src='images/new.gif' border=0></font><font size="1"><b><a href="photobioreactor.aspx" title="UTEX Photobioreactors Overview Page"><font size="1" face="Arial">UTEX Photobioreactors</font></a> </b><br>
	  </font></div>
	  <p style="width:90%;" class="auto-style10"><font size="1" face="Arial">Laboratory-scale photobioreactors available in 3 different packages.</font></p><hr>

	  <font size="1" face="Arial">

	 
  	  <img src='images/new.gif' border=0><b><a href="photobioreactor.aspx" title="AlgEternal Vertical Growth Modules Page"><font size="1" face="Arial">UTEX &amp; AlgEternal announce new vertical growth modules</font></a></b><br>
	  <p style="width:90%" class="auto-style12"><font size="1" face="Arial">Large-scale (15 and 60 liter total volume) photobioreactors designed to enable the transfer of basic research from a laboratory setting, to applied research in a scaled setting.</font></p></font><hr></td></tr>

</table>

  	

 
	 <table width="100%" border= 0>
 <tr>
 <td align="Left">
<asp:DataGrid id="imageGrid" runat="server" 
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

	 <p align="left"><span lang="en-us"><b>About Us</b><br>
   </span>The Culture Collection includes approximately 3,000 different strains of 
   living algae, representing most major algal taxa.&nbsp; Cultures in the 
   Collection are used for research, teaching, biotechnology development, and 
   various other projects throughout the world.&nbsp; UTEX supports this 
   community of users through the provision of algal cultures along with a 
   variety of other goods and services.&nbsp; This website contains a listing of 
   the cultures maintained by UTEX, conditions for their maintenance, 
   information regarding the purchase of cultures, and various other features of 
   UTEX.



<span class="auto-style1">



<br><br>
  </p>
  </p>



  </td>
</tr><br><br>


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