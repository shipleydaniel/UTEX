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
page = "Preparation of Living Algal Strains for Shipment"


%>
<LINK REL=STYLESHEET HREF="<%=webroot%>/includes/styleMain.css" TYPE="text/css">
<script language="javascript" src="<%=webroot%>/javascripts/menu.js"></script>

<style type="text/css">
.auto-style1 {
	text-decoration: underline;
}
.auto-style2 {
	margin-left: 9px;
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
<%response.write ( print_navigation(page, bgColor, fgColor)) %>
  </td>
  <td><img src="images\spacer.gif" height='0' width='10'> </td>
  <td width = 810 colspan = 1><p>&nbsp;<p>Agar and liquid cultures 
  for an order are packaged within a Styrofoam* box and shipped on the same 
  day they are packed.&nbsp; UTEX makes no attempt to quantify the number of 
  organisms or other characteristics of the culture.&nbsp; UTEX only guarantees 
  the identity of the organism as specified in the strain history.<br><br><br>


  <p><strong><span class="auto-style1">Agar Cultures</span></strong></p><p class="auto-style2">Aliquots of 
  algal strains that are maintained on agar slants are transferred to the 
  surface of fresh slants in 20-mm diameter glass screw-cap tubes in preparation 
  for shipment.&nbsp; The fresh inocula are grown in a diurnal light cycle for 
  at least 3 days until a macroscopically visible lawn appears.</p><br><br><strong>
  <span class="auto-style1">Liquid Cultures</span></strong><p class="auto-style2">Approximately 15 
  mL aliquots of strains that are maintained as liquid cultures are transferred 
  to screw-cap tubes on the day of shipment.</p></td></P>
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
