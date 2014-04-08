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
page = "How to Order"


%>
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
All strains of living algae included in the UTEX list of cultures are available to organizations and individuals, except in cases where a culture has been lost or needs attention to restore its vigor. UTEX does not impose any restrictions regarding the use of cultures purchased from the Culture Collection. UTEX does not assume responsibility for a culture or its uses after it leaves the UTEX facility.
<br><br>
<b><big>Methods of Payment</big></b><br><br>

Cultures that are purchased by individuals are paid in advance. Organizations that maintain separate 
  shipping and billing addresses may pay after receipt of cultures, provided that a purchase order number and the address to which the bill should be sent are 
  faxed on business letterhead with the order. An invoice will be mailed the day after the order is shipped. Full payment is due within 30 days of receipt of the cultures.
<br><br>
The preferred method for receiving payment is via the secure credit card form contained on-line. All credit card orders must include the type of credit card (Visa or MasterCard only), card holder name as it appears on the card, card number, and expiration date. UTEX also accepts credit card orders sent via telephone (512-471-4019), FAX (512-471-0354) or regular mail. <b>Please do not send credit card numbers via email.</b>
<br><br>
The University of Texas at Austin<br>
The Culture Collection of Algae (UTEX)<br>
1 University Station A6700<br>
Austin, TX  78712-0183<br>
U.S.A.
<br><br>
Payment by check or money order is also accepted (U.S. dollars only, drawn on a U.S. bank). Payment should be sent to Francisco Valladares at the above address and should reference the UTEX invoice number.
<br><br>
<img src="images/exclaim.gif"> UTEX does not accept bank-to-bank payments for foreign or U.S. domestic orders.



<br><br>
<b><big>Place an order with one of the following methods:</big></b>
<br><br>
<ol type="I">
<li>Through our online shopping cart, TXShop<br><br>
<ol>
<li>Browse the UTEX site and decide what you want to order.<br><br></li>

<li>When you go to order you will be directed to a new site where you will place your order.
     	<ol type="a">
	<li>Have UTEX number(s) and corresponding scientific name and/or media
          names available.</li>
	<li>Add each item separately to the cart.</li>
	</ol><br>
</li>
<li>US academic and US government institutions should use the following discount codes at checkout to obtain the subsidized price of $30 per culture.
	<br>us/acad
	<br>us/gov<br><br>
</li>

<li>If the order is being shipped internationally, please select the destination country under “Additional Shipping Options”. <br><br></li>
</ol>
</li>
<li>By Phone (+1-512-471-4019) or FAX (+1-512-471-0354)</li>
</ol>

<br><br>
<table width="630">
 <tr><td>
	<center><a target="_blank" href="http://utdirect.utexas.edu/txshop/list.WBX?component=0&application_name=BSALGAES">Order Now</a></center>
</td></tr>
</table>
<br><br>
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
