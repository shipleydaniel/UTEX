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
page = "Shipping and Replacement Policies"


%>
<LINK REL=STYLESHEET HREF="<%=webroot%>/includes/styleMain.css" TYPE="text/css">
<script language="javascript" src="<%=webroot%>/javascripts/menu.js"></script>

<style type="text/css">
.auto-style1 {
	text-decoration: underline;
}
.auto-style3 {
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
  <td width = 810 colspan = 1><br>


  <strong><span class="auto-style1">Shipment Policy</span></strong><p class="auto-style3">Cultures 
  are only shipped on Mondays (or Tuesday following a Monday holiday) unless 
  requested by the customer and approved by the Business Manager.&nbsp; No 
  cultures are shipped during the weeks of Christmas and New Year&#39;s Day.<br><br>
  When an order is received by Wednesday 5pm CST of a given week, it can 
  generally be sent on the following Monday.&nbsp; If an order includes items 
  that require longer preparation times, the shipment is delayed 
  until all of the items can be packaged and shipped at the same time.<br><br>
  Some countries have restrictions that limit, control, or prohibit the import 
  of living algae.&nbsp; It is the responsibility of the customer to know which 
  laws apply to the country that is to receive the shipment.&nbsp; Shipments to 
  some countries must include an import permit to ensure that the shipment will 
  not be confiscated in transit.&nbsp; The official permit may be prepared by 
  the purchaser and sent via fax to UTEX at +1-512-471-0354.<br>
  <p class="auto-style3">&nbsp;<hr><br><br><strong>
  <span class="auto-style1">Replacement Policy<br><br></span>
  <center style="width: 799px">All requests for 
  replacement strains must be sent by email to the
  <a href="mailto:stephen.o.pena@gmail.com?subject=Replacement Culture Request">UTEX Culture Collection 
  Manager</a> <br>within <span class="auto-style1">48 hours</span> of receiving the 
  package.</strong></center><br><p class="auto-style3">UTEX will provide replacement cultures to customers if their order has been affected by one of the two issues listed below:<ul>
	  <li><span class="auto-style1">Arrival of a non-viable or incorrect strain 
	  due to an error by UTEX (i.e., in preparing or shipping a culture):</span><ul>
		  <li>Please email the
		  <a href="mailto:stephen.o.pena@gmail.com?subject=Replacement Culture Request">
		  UTEX Culture Collection Manager</a> and provide the UTEX Order Number 
		  along with a description of the error.&nbsp; Replacements will be sent 
		  free of charge only if it is evident that UTEX was at fault and it has 
		  been authorized by the UTEX Culture Collection Manager.</li>
	  </ul>
	  </li>
  </ul>
  <p>&nbsp;</p>
  <ul>
	  <li><span class="auto-style1">Arrival of culture(s) in a poor condition or 
	  non-viable state due to a circumstance during transport (i.e., shipment 
	  takes longer than the carrier guarantees, or a culture has likely 
	  experienced a temperature extreme en route):</span><ul>
		  <li>Please email the
		  <a href="mailto:stephen.o.pena@gmail.com?subject=Replacement Culture Request">
		  UTEX Culture Collection Manager</a> and provided the UTEX Order Number 
		  and a description stating the quality of the culture(s) upon arrival.&nbsp; 
		  Only the replacement culture(s) will be free of charge; customers are 
		  responsibile for the cost of shipping and handling. All replacements need 
		  to be authorized by the UTEX Culture Collection Manager.</li>
	  </ul>
	  </li>
  </ul>
  <p>&nbsp;</p>
  <strong><em><center>*Shipment of a replacement culture may be postponed if a 
  temperature extreme is reported along the transit route.</em></center></strong></p>
  </p>
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
