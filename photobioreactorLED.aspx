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
bgcolor="white"
fgcolor="green"
page = "RGB-LED Light Platform"
%>
<LINK REL=STYLESHEET HREF="<%=webroot%>/includes/styleMain.css" TYPE="text/css">
<script language="javascript" src="<%=webroot%>/javascripts/menu.js"></script>


<style type="text/css">
.auto-style2 {
	margin-top: 0;
	margin-bottom: 0;
}
.auto-style17 {
	margin-top: 0px;
	text-align: right;
}
.auto-style20 {
	margin-top: 0;
	margin-bottom: 0;
	font-size: x-small;
}
.auto-style21 {
	font-size: small;
	margin-bottom: 0px;
}
.auto-style22 {
	margin-left: 18px;
	margin-top: 0px;
}
.auto-style23 {
	font-size: small;
}
.auto-style24 {
	font-size: small;
	margin-left: 20px;
	margin-top: 0px;
	margin-bottom: 0px;
}
.auto-style25 {
	margin-left: 0px;
}
</style>

<!-- Add jQuery library -->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>

<!-- Add fancyBox -->
<link rel="stylesheet" href="includes/jquery.fancybox.css?v=2.1.0" type="text/css" media="screen" />
<script type="text/javascript" src="javascripts/jquery.fancybox.pack.js?v=2.1.0"></script>
<script type="text/javascript" src="javascripts/jquery.fancybox-media.js?v=1.0.3"></script>

<script language="JavaScript" type="text/javascript">
<!--
if (document.getElementById) {
document.writeln('<style type="text/css"><!--')
document.writeln('.texter {display:none} @media print {.texter {display:block;}}')
document.writeln('//--></style>') }

function openClose(theID) {
if (document.getElementById(theID).style.display == "block") { document.getElementById(theID).style.display = "none" }
else { document.getElementById(theID).style.display = "block" } }
</script>

<link rel="stylesheet" href="includes/MTLB.css" type="text/css" />
<script src="javascripts/MTLB.js" type="text/javascript"><!-- MTLB_MUTMJLD --></script>
	</head>
<body>
<table align="center" border ="0" cellspacing="0" cellpadding="0" width="960" height="84%" class="normal">
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
  <td width = 600 colspan = 1>
  
<table width="810" border=0>
<td width="810" valign=top>
 <p class="auto-style23">The RGB-LED light platform surrounds the 2-Liter UTEX photobioreactor.&nbsp; 
 It is designed for bench-scale experimentation and maintenance of stock 
 cultures used to seed larger photobioreactors.</p>
  <p class="auto-style21"><strong>RGB-LED Light Platform Features:</strong></p>
  <ul class="auto-style22">
	  <li class="auto-style23">
	  36 Total LED Lights: Three (3) rows of twelve (12)
	  </li>
	  <li class="auto-style23">
	  Fully adjustable red (626nm), green (525nm), and 
	  blue (470nm) LED lights
	  </li>
	  <li class="auto-style23">
	  Reflective mylar surface
	  </li>
	  <li class="auto-style23">
	  43,200 millicandela (MCD) output
	  </li>
	  <li class="auto-style23">
	  40,000 hour life expectancy
	  </li>
	  <li class="auto-style23">
	  Waterproof power supply
	  </li>
	  <li class="auto-style23">
	  120V input	  /
	  50-60hz
	  </li>
  </ul>
 <br>
	</td>	
<td width="250" valign=top>	
	<img src="images/rgbledmain1.jpg" height="250" width="228" border="2"><a id="MTLB0" name="MTLB_MUTMJLD" href="http://web.biosci.utexas.edu/utex/images/rgbledmainfull.jpg" style="text-decoration:none"><p class="auto-style17" style="height: 0px; width: 228px">Click here for additional images.        
    <script type="text/javascript">/*<![CDATA[*/ var MTLB0list=[["http://web.biosci.utexas.edu/utex/images/rgbledmainfull.jpg","RGB-LED Light Platform"], ["http://web.biosci.utexas.edu/utex/images/rgbledmain-2.jpg","2-Liter UTEX Photobioreactor with RGB-LED Light Platform"], ["http://web.biosci.utexas.edu/utex/images/rgbled1.jpg","RGB-LED Light Platform"], ["http://web.biosci.utexas.edu/utex/images/rgbled1-2.jpg","2-Liter UTEX Photobioreactors with RGB-LED Light Platform"], ["http://web.biosci.utexas.edu/utex/images/rgbled2.jpg","RGB-LED Light Platform"], ["http://web.biosci.utexas.edu/utex/images/rgbled2-2.jpg","2-Liter UTEX Photobioreactor with RGB-LED Light Platform"], ["http://web.biosci.utexas.edu/utex/images/rgbled3.jpg","RGB-LED Light Platform"], ["http://web.biosci.utexas.edu/utex/images/rgbled3-2.jpg","2-Liter UTEX Photobioreactor with RGB-LED Light Platform"], ["http://web.biosci.utexas.edu/utex/images/rgbledoff.jpg","RGB-LED Light Platform turned OFF"], ["http://web.biosci.utexas.edu/utex/images/rgbledoff-2.jpg","2-Liter UTEX Photobioreactor with RGB-LED Light Platform turned OFF"]];/*]]>*/</script></a>
</td>
</table>
  <p class="auto-style2"><strong>UTEX RGB-LED Lighting Platform Charge:</strong>
  <ul class="auto-style24">	<li class="auto-style25">
	  <p class="auto-style2"><strong>$275 USD each</strong><ul>
		  <li>
		  <p class="auto-style20"><em>The RGB-LED lighting platform can be 
		  purchased with any one of our UTEX Photobioreactor Packages thru 
		  <strong>TxShop</strong> by clicking on the "optional items - LED Lights" checkbox. </em>
		  </li>
	  </ul>
	  </li>
  </ul>
 <br> 
<p>
  <a href="http://utdirect.utexas.edu/txshop/list.WBX?component=0&amp;application_name=BSALGAEShttp://utdirect.utexas.edu/txshop/list.WBX?component=0&amp;application_name=BSALGAES" target="_blank">
  <img src="images/txshoporder.gif" border="0" style="float: left"></a></p><br><br><br>
<p>
<a href="http://web.biosci.utexas.edu/utex/photobioreactoroverview.aspx">Return to Photobioreactors Overview Page
		 </a></p>

<td width="50"></td>
</tr>
</table> 
</center>


            </tr>
        </table>






<!--------------------END MAIN CONTENT-------------------------->

  </td>
</tr>


<tr align="center">
  <td colspan = 3>
	<hr width=960 size=2>
<!--#include virtual="includes/footer.html"-->
  </td>
</tr>


</table>	

