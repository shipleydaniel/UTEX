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
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="javascripts/jquery.classysocial.min.js"></script>
<link rel="stylesheet" type="text/css" href="includes/jquery.classysocial.min.css" />



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

  sqlStr= "select top 1  '<a href=algaeDetail.aspx?algaeID='+CStr(algaeID)+'><img src=''"
  sqlStr = sqlStr + imageDirectory + "' + imageFile +''' border=0  height=300 width=400></a>' AS ImageReference from tblAlgaeImage where algaeImageID >= " + cstr( GetRandomNumberInRange(3, 876) ) + " order by algaeImageID"

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
	align: center;
}
.auto-style3 {
	text-align: left;
}
.auto-style5 {
	text-align:center;
	margin-top:0;
	vertical-align:top;
}
.auto-style9 {
	border-collapse: collapse;
	border-color: #CCCCCC;
	border-width: 0;
}
.hangingindent {
	padding-left:25px ;
	text-indent:-28px;
}

.auto-style11 {
	padding-left: 22px;
	text-indent: -22px;
	text-align: justify;
	}

.auto-style13 {
	color: #CC6600;
}

.auto-style14 {
	font-weight: bold;
	text-align: right;
	font-size: x-small;
}

.auto-style15 {
	font-size: x-small;
}
.auto-style17 {
	color: #CC6600;
	text-align: center;
}

-->

.curvedEdges { border:2px dotted gray;-webkit-border-radius:13px;-moz-border-radius:13px;-ms-border-radius:13px;-o-border-radius:13px;border-radius:13px; }
.curvedEdges td, table.curvedEdges th { border-bottom:1px dotted gray; }

.auto-style18 {
	padding-left: 25px;
	text-indent: -28px;
	text-align: left;
}

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
<%response.write ( print_navigation(page, bgColor, fgColor)) %><br>
<center><div class="classysocial"
		data-arc-length="180" 
		data-image-type="picture"
		data-picture="http://web.biosci.utexas.edu/utex/unused/test/images/share_core_square.jpg"
		data-facebook-handle="UTEXalgae"
		data-twitter-handle="UTEX_CC"
		data-linkedin-handle="UTEX"
		data-orientation="linedown"
		data-radius="90"
		data-networks="facebook,twitter,linkedin"></div></center>
		<script>
                                        $(document).ready(function() {
                                            $(".classysocial").ClassySocial();
                                        });
                                    </script>


  </td>
  <td>
  <img src="images/spacer.gif" height='0' width='10'> </td>
  <td width = 810 colspan = 1 class="auto-style2">
  <table style="width:100%"><tr>
	  <th align="left" style="width:100%" colspan="3" class="auto-style13">Announcements</th></tr>
	  <tr><td colspan="3">
	  <font size="2" face="Arial">

	 
  	  <p style="margin-bottom: 0" class="auto-style11">
	  <img src='images/algaeicon.png' border=0 width="15" height="15"><font size="2"><b> NAABB Strains Are Now Available Through UTEX</b><br>The National Alliance for Advanced Biofuels and Bioproducts (NAABB), a consortium of universities, research institutions, and companies funded by the US Department of Energy, has made 30 of their best performing strains available to the public through UTEX.  These strains are well characterized for lipid production and growth kinetics.  The strains can be accessed with a Material Transfer Agreement (MTA).  Please contact 
	  <a href="mailto:dnobles@austin.utexas.edu">Dr. David Nobles, Jr.</a> or 
	  <a href="mailto:stephen.o.pena@gmail.com">Stephen Pe&ntilde;a</a> for more 
	  information about ordering these strains.</font></p><br><hr>
	  
	 
	  	</font></td></tr><tr>
		  <th style="width:45%; height: 23px;" class="auto-style13">Upcoming Events</th><th style="width:5%" rowspan="2">
		  <img src="images/spacer.gif" height='0' width='10' class="auto-style15"></th>
		  <th style="width:45%; height: 23px;" class="auto-style17">What's New?</th></tr>
	  	<tr>
	  <td  style="width:45%; height: 50%" class="curvedEdges"><div class="auto-style5" style="width:100%;" align="center"> 
		  <font size="2" face="Arial">	 
	   <table style="width:100%;border-bottom:1px; border-bottom-style:dotted; border-bottom-color:gray;padding:5px" class="auto-style9"><tr>
<td style="width: 35%;border-bottom:1px; border-bottom-style:dotted; border-bottom-color:gray; padding-bottom:0px" class="auto-style14">
<font face="Arial">May 5-9::</font></td>
		   <td style="width:60%;border-bottom:1px; border-bottom-style:dotted; border-bottom-color:gray; padding-bottom:0px"><font size="1" face="Arial"><center><a href="atp3workshop.aspx" title="Principles & Processes: Algae Culture Maintenance, Production & Downstream Processing">
		   <font size="3" face="Arial" class="auto-style15">ATP<sup>3</sup> 
		   Workshop</font></a></center></font></td></tr>
<tr>
<td style="width: 35%;border-bottom:1px; border-bottom-style:dotted; border-bottom-color:gray; padding-bottom:0px" class="auto-style14">
<font face="Arial">June 4-6::</font></td><td style="width:60%;border-bottom:1px; border-bottom-style:dotted; border-bottom-color:gray; padding-bottom:0px"><center><a href="workshops1.aspx" title="Biochemistry and Laboratory Analysis of Biomass Composition">
	<font size="3" face="Arial" class="auto-style15">UTEX Microalgal Training Workshop</font></a></center></td>
</tr>
<tr>
<td style="width: 35%;border-bottom:1px; border-bottom-style:dotted; border-bottom-color:gray; padding-bottom:0px" class="auto-style14">
<font face="Arial">July 21-25::</font></td><td style="width:60%;border-bottom:1px; border-bottom-style:dotted; border-bottom-color:gray; padding-bottom:0px"><font size="1" face="Arial"><center><a href="workshops1.aspx" title="Intro to Phycology -and- Genetic Modification of Cyanobacteria and Microalgae">
	<font size="3" face="Arial" class="auto-style15">UTEX Microalgal Training Workshop</font></a></center></font></td>
</tr>
<tr>
<td style="width: 35%;border-bottom:1px; border-bottom-style:dotted; border-bottom-color:gray; padding-bottom:0px" class="auto-style14">
<font face="Arial">August 18-22::</font></td><td style="width:60%;border-bottom:1px; border-bottom-style:dotted; border-bottom-color:gray; padding-bottom:0px"><font size="1" face="Arial"><center><a href="atp3workshop.aspx" title="Taxonomy & Biochemistry of Microalgae with Commercial Potential">
	<font size="3" face="Arial" class="auto-style15">ATP<sup>3</sup> Workshop</font></a></center></font></td>
</tr>
<tr>
<td style="width:35%;border-bottom:1px; border-bottom-style:dotted; border-bottom-color:gray; padding-bottom:0px" class="auto-style14">
<font face="Arial">November 3-7::</font></td><td style="width:60%;border-bottom:1px; border-bottom-style:dotted; border-bottom-color:gray; padding-bottom:0px"><font size="1" face="Arial"><center><a href="atp3workshop.aspx" title="Large-Scale Algal Cultivation, Harvesting & Downstream Processing">
	<font size="3" face="Arial" class="auto-style15">ATP<sup>3</sup> Workshop</font></a></center></font></td></tr>
</table><em><span class="auto-style15">Hover over name for full event title and/or click on event for additional information.</span></em></font></div>
		  
	 <td style="height: 50%" class="curvedEdges">

	  <div class="auto-style3" style="width:100%">

	  

	 
  	  <p class="auto-style18" style="margin-bottom:1px;margin-left:3px;margin-right:5px;width:90%" ><img src='images/new.gif' border=0 class="auto-style15"><a href="photobioreactor.aspx" title="UTEX Photobioreactors Overview Page"><font size="1"><b>UTEX Photobioreactors</b></font></a>
		  <br>
	  <font size="1" face="Arial">Laboratory-scale photobioreactors available in 3 different packages.</font></p><hr>

	   
  	  <p class="auto-style18" style="margin-bottom:3px;margin-top:1px;margin-left:3px; margin-right:5px;width:90%" ><img src='images/new.gif' border=0 class="auto-style15"><a href="photobioreactor.aspx" title="UTEX Photobioreactors Overview Page"><font size="1"><b>UTEX &amp; AlgEternal announce new Vertical Growth Modules</b></font></a><br>
	  
	  <font size="1" face="Arial">Large-scale (15 and 60 liter total volume) photobioreactors designed to enable the transfer of basic research from a laboratory setting, to applied research in a scaled setting.</font></p></div></td></tr>

</table>

  	
<br>

	 <p align="justify" style="padding-left:15px ;
	text-indent:-10px"></p><font size="2"><b>About Us</b><br>
   The Culture Collection includes approximately 3,000 different strains of 
   living algae, representing most major algal taxa.&nbsp; Cultures in the 
   Collection are used for research, teaching, biotechnology development, and 
   various other projects throughout the world.&nbsp; UTEX supports this 
   community of users through the provision of algal cultures along with a 
   variety of other goods and services.&nbsp; This website contains a listing of 
   the cultures maintained by UTEX, conditions for their maintenance, 
   information regarding the purchase of cultures, and various other features of 
   UTEX.</font>



  </p>
 <br>
	 <table width="100%">
 <tr>
 <td align="center" style="width:100%" class="auto-style2">
<asp:DataGrid id="imageGrid" runat="server" 
showHeader = "False"
border="2"
Gridlines="None"	
width="400"
align="center"
/>
</td>
</tr>
</table>
  <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" id="table1">
    <tr>
      <td>
      <p align="center"><font size="2">Click on image for algae detail.</font><p align="center">
	  &nbsp;</td>
    </tr>
  </table>

	 <span class="auto-style1">



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