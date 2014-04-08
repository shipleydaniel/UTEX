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
page = "Ordering Information &amp; Methods of Payment"


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


<table border="0" cellpadding="0" cellspacing="0" width="790"
bgcolor="#FFFFFF" style="border-collapse: collapse" bordercolor="#111111">
    <tr>
        <td valign="top" width="100%"
bgcolor="#FFFFFF"><div align="center"><center>
          <table border="0"
cellpadding="0" cellspacing="0" width="790" style="border-collapse: collapse" bordercolor="#111111">
            <tr>
                <td width="900">

                         <font face="Verdana" size="2"><b>Ordering Information</b><br>
                        <br>
                        The person who places the order should provide his/her 
                        name, telephone<span lang="en-us"> </span>number and (if 
                        available) e-mail address, so he/she can be notified<span lang="en-us">
                        </span>immediately in case more information is needed to 
                        process the order.<br>
                        <br>
                        The name, telephone number, and full address of the 
                        recipient must also be provided with the order. An 
                        email address is useful for contacting the recipient in 
                        case the order must be delayed or suspended. The 
                        shipping address for Federal Express and UPS orders must include 
                        a street address and (when appropriate) a building name 
                        and room number. Federal Express&nbsp; and UPS will not deliver to 
                        U.S. Post Office boxes since they are under the 
                        exclusive control of the U.S. <span lang="en-us">Postal</span> 
                        Service. Cultures are more likely to survive<span lang="en-us"> </span>

                        shipment if the package is delivered to a site where it 
                        can be removed from the package soon after arrival. When 
                        a shipment does not arrive on the day it is expected, 
                        the purchaser should contact UTEX on the following day 
                        so the package can be traced.<br>
                        <br>
                        All orders must include the UTEX number, strain name, 
                        and number of cultures of each strain that is ordered.<br><br><br><b>Methods of Payment</b><br>
                        <br>
                        Cultures that are purchased by individuals should be 
                        paid in advance. Organizations that maintain separate accounting 
                        facilities may pay after receipt of cultures, provided 
                        that a purchase order number and the address to which 
                        the bill should be sent are included with the order; an 
                        invoice will be mailed the day after the order is 
                        shipped. Full payment is due within 30 days of receipt 
                        of the cultures.<br>
                        <br>
                        The preferred method for receiving payment is via the 
                        secure credit card form contained <span lang="en-us">

							on-line</span>. All credit card 
                        orders must include<span lang="en-us"> </span>the type 
                        of credit card (Visa or MasterCard only),
                        <span lang="en-us">card holder </span>name
                        <span lang="en-us">as it appears </span>on the card, 
							card number, and expiration date. UTEX
							<span lang="en-us">also </span>accepts credit card orders sent via 
                        telephone (512-471-4019), FAX (512-471-0354), direct 
                        e-mail (<a href="mailto:utalgae@uts.cc.utexas.edu">utalgae@uts.cc.utexas.edu</a>), 
                        or regular mail:<br>
                        <br>
                        <span lang="en-us">The University of Texas at Austin</span><br>

 <span lang="en-us">The Culture Collection of Algae (UTEX)<br>
                        1 University Station A6700<br>
                        </span>Austin, TX&nbsp; 78712-0183<br>
                        U.S.A.<br>
                        <br>
                        Payment by check or money order is also accepted (U.S. 
                        dollars only, drawn on a U.S. bank).<span lang="en-us"> </span>

                        Payment should be sent to <span lang="en-us">Arthur Dela 
                        Cruz</span> at the above address and 
                        should reference the UTEX invoice number.<br>
                        <br>
                        UTEX does not accept bank-to-bank payments for foreign 
                        or U.S. domestic<span lang="en-us"> </span>orders.
<table width="630">
 <tr><td align="center">
                         <font face="Verdana" size="2"><p align=center>
                           <a href="orderingAbout.aspx" style="text-decoration: none">
                           Back to About Ordering</span></a></font></p>
</td></tr>
</table>
                </td>
            </tr>
        </table>
        </center></div></td>
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
