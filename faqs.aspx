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
page = "FAQ"


%>
<LINK REL=STYLESHEET HREF="<%=webroot%>/includes/styleMain.css" TYPE="text/css">
<script language="javascript" src="<%=webroot%>/javascripts/menu.js"></script>
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






<style type="text/css">
.auto-style1 {
	text-align: right;
}
.auto-style2 {
	text-align: center;
}

.hangingindent {
	padding-left:22px ;
	text-indent:-22px;
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


<!--------------------BEGIN MAIN CONTENT-------------------------->
<center>

<table width="700" border=0>
<tr>
<th colspan="1" align=left style="width: 271px">
<img src="images/utexfaq.jpg"></th>
<th rowspan="2" width=2></th>
<th colspan="1" align=left width=300>
<img src="images/orderingshippingfaq.jpg"></th>
</tr>
<tr>

<td valign=top style="width: 271px">
	

	
		<font size=2>
			<div onclick="openClose('a1')" style="cursor:hand; curosr:pointer" class="hangingindent"><img src="images/spacer.jpg"><font size="2" color="blue"><b> How much does a culture cost?</b></font> <img alt="Click to expand/contract answer." class="auto-style2" height="15" src="images/bullet_toggle_plus.png" width="15"><br></div>
				<div id="a1" class="texter">
  					<dd><p align="justify" style="margin-top: 0; width: 205px;">All cultures are the same price. All US academic and US government users are charged US $50 per tube and all other users are charged US $100 per tube.</p></dd>
			</div>
  			<br><div onclick="openClose('a2')" style="cursor:hand; cursor:pointer" class="hangingindent"><img src="images/spacer.jpg"><font size="2" color="blue"><b> What does the prefix 'LB' mean?</b></font> <img alt="Click to expand/contract answer." class="auto-style2" height="15" src="images/bullet_toggle_plus.png" width="15"><br></div>
				<div id="a2" class="texter">
  					<dd>
					<table style="width: 89%">
						<tr>
							<td class="auto-style1" style="width: 81px"><strong>
							<font size="2">LB</font></strong></td>
							<td class="auto-style2"><font size="2">liquid, xenic culture</font></td>
						</tr>
						<tr>
							<td class="auto-style1" style="width: 81px; height: 19px;"><strong>
							<font size="2">LB</font></strong></td>
							<td class="auto-style2" style="height: 19px"><font size="2">agar, xenic culture</font></td>
						</tr>
						<tr>
							<td class="auto-style1" style="width: 81px"><strong>
							<font size="2">(no prefix)</font></strong></td>
							<td class="auto-style2"><font size="2">agar, axenic culture</font></td>
						</tr>
					</table>
					</dd>
			</div><br>
			
			<div onclick="openClose('a3')" style="cursor:hand; cursor:pointer" class="hangingindent"><img src="images/spacer.jpg"><font size="2" color="blue"><b> How much is it to ship to my country?</b></font> <img alt="Click to expand/contract answer." class="auto-style2" height="15" src="images/bullet_toggle_plus.png" width="15"><br></div>
				<div id="a3" class="texter">
  					<dd>
  					<table style="width: 89%">
  					<tr>
  						<td class="auto-style2" style="width: 71px"><strong>
							<font size="2">$25 USD</font></strong></td>
							<td class="auto-style2"><font size="2">Continental USA</font></td>
						</tr>
						<tr>
							<td class="auto-style2" style="width: 71px"><strong>
							<font size="2">$45 USD</font></strong></td>
							<td class="auto-style2"><font size="2">Alaska, 
							Hawaii, Canada, Mexico, &amp; Puerto Rico</font></td>
						</tr>
						<tr>
							<td class="auto-style2" style="width: 71px"><strong>
							<font size="2">$55 USD</font></strong></td>
							<td class="auto-style2"><font size="2">South America</font></td>
						</tr>
						<tr>
							<td class="auto-style2" style="width: 71px"><strong>
							<font size="2">$60 USD</font></strong></td>
							<td class="auto-style2"><font size="2">Europe, Australia, &amp; New Zealand</font></td>
						</tr>
						<tr>
							<td class="auto-style2" style="width: 71px"><strong>
							<font size="2">$65 USD</font></strong></td>
							<td class="auto-style2"><font size="2">Asia</font></td>
						</tr>
						<tr>
							<td class="auto-style2" style="width: 71px"><strong>
							<font size="2">$75 USD</font></strong></td>
							<td class="auto-style2"><font size="2">South Africa</font></td>
						</tr>



			</table></div>


			<br><div onclick="openClose('a4')" style="cursor:hand; cursor:pointer" class="hangingindent"><img src="images/spacer.jpg"><font size="2" color="blue"><b> When will I receive my order?</b></font> <img alt="Click to expand/contract answer." class="auto-style2" height="15" src="images/bullet_toggle_plus.png" width="15"><br></div>
				<div id="a4" class="texter">
  					<dd><p align="justify" style="margin-top: 0; width: 205px;">Orders are shipped on a weekly basis.  Orders placed by Wednesday, 5pm CST, are shipped the following Monday.</p></dd>
			</div>
<br><div onclick="openClose('a5')" style="cursor:hand; cursor:pointer" class="hangingindent"><img src="images/spacer.jpg"><font size="2" color="blue"><b> What strains can you recommend for biodiesel?</b></font> <img alt="Click to expand/contract answer." class="auto-style2" height="15" src="images/bullet_toggle_plus.png" width="15"><br></div>
				<div id="a5" class="texter">
  					<dd><p align="justify" style="margin-top: 0; width: 205px;">We are not currently studying this topic.  You should check publications for information: <a href="www.oilgae.com/algae/oil/yield/yield.html">Algal Oil Yields.</a></p></dd>
			</div>
			
			<br><div onclick="openClose('a6')" style="cursor:hand; cursor:pointer" class="hangingindent"><img src="images/spacer.jpg"><font size="2" color="blue"><b> How can I get my culture to grow faster?</b></font> <img alt="Click to expand/contract answer." class="auto-style2" height="15" src="images/bullet_toggle_plus.png" width="15"><br></div>
				<div id="a6" class="texter">
  					<dd><p align="justify" style="margin-top: 0; width: 205px;">We do not aim for optimum growth here at UTEX. Investigators are urged to consult the available literature for alternative media, shaking, or CO<sub>2</sub> infusion if optimum growth is an important consideration in their research.</p></dd>
			</div>
			
						<br><div onclick="openClose('a7')" style="cursor:hand; cursor:pointer" class="hangingindent"><img src="images/spacer.jpg"><font size="2" color="blue"><b> How long will the living algal strain last?</b></font> <img alt="Click to expand/contract answer." class="auto-style2" height="15" src="images/bullet_toggle_plus.png" width="15"><br></div>
				<div id="a7" class="texter">
  					<dd><p align="justify" style="margin-top: 0; width: 205px;">Cultures should last for a few weeks maybe months depending on the strain as long as the culture has proper care.</p></dd>
			</div>
			
					<br><div onclick="openClose('a8')" style="cursor:hand; cursor:pointer" class="hangingindent"><img src="images/spacer.jpg"><font size="2" color="blue"><b> How do I care for my culture once I receive it?</b></font> <img alt="Click to expand/contract answer." class="auto-style2" height="15" src="images/bullet_toggle_plus.png" width="15"><br></div>
				<div id="a8" class="texter">
  					<dd><p align="justify" style="margin-top: 0; width: 205px;">
					The screw-cap should be loosened, not removed to allow for 
					gas exchange and if this practice is not customary in your 
					laboratory a note next to the culture may be a good idea. 
					Place the culture tube in an appropriately lighted room or 
					incubator and provide a photoperiod of 16 hours light: 8 
					hours dark. The culture should be kept at room temperature 
					or 20Ã‚Â°C unless noted in the culture notes.</p></dd>
			</div>
			
					<br><div onclick="openClose('a9')" style="cursor:hand; cursor:pointer" class="hangingindent"><img src="images/spacer.jpg"><font size="2" color="blue"><b> How do I find cultures with specific characteristics?</b></font> <img alt="Click to expand/contract answer." class="auto-style2" height="15" src="images/bullet_toggle_plus.png" width="15"><br></div>
				<div id="a9" class="texter">
  					<dd><p align="justify" style="margin-top: 0; width: 205px;">Search for desired characteristics in the Notes text box of the <a href="search.aspx">Culture Search</a>.</p></dd>
			</div>




			
			
			
			
			
			
			
			</td></div>
	
	
	
	<td valign=top style="width: 167px">
	
	
	
		<font size="2" >

<p><img src="images/spacer.jpg"> <a href="howtoorder.aspx"><b>How To Order</b></a></p>
			
			<div onclick="openClose('a10')" style="cursor:hand; curosr:pointer" class="hangingindent"><img src="images/spacer.jpg"><font size="2" color="blue"><b> Ordering Policies</b></font> <img alt="Click to expand/contract answer." class="auto-style2" height="15" src="images/bullet_toggle_plus.png" width="15"><br></div>
				<div id="a10" class="texter">
  					<dd><p align="justify" style="margin-top: 0; width: 205px;"><br><b><u>Individuals/Commercial Companies</u></b><br>
Orders that are purchased by individuals or commercial companies are required to pay in advance.  Any exception must be approved in writing (fax or <a href="mailto:utalgae@uts.cc.utexas.edu">email</a>) by UTEX before the order can be processed.<br><br>

<b><u>Academic/Government Institutions</u></b><br>
Academic or government institutions are requested to pay before their order is processed.  However, institutions that maintain separate shipping and billing addresses may pay after receipt of their order.  A purchase order number and the address to which the bill should be sent must be provided (preferably by fax) on a business letterhead with the order.  <b><font color="red">Full payment is due within 30 days of receipt of the order.</font></b></p></dd>
			</div><br>
			<div onclick="openClose('a11')" style="cursor:hand; curosr:pointer" class="hangingindent"><img src="images/spacer.jpg"><font size="2" color="blue"><b> Replacement Policy</b></font> <img alt="Click to expand/contract answer." class="auto-style2" height="15" src="images/bullet_toggle_plus.png" width="15"><br></div>
				<div id="a11" class="texter">
  					<dd><p align="justify" style="margin-top: 0; width: 205px;">All requests for replacement strains must be sent by <a href="mailto:stephen.o.pena@gmail.com">email</a> to the UTEX Culture Collection Manager within <b><u>48 hours</u></b> of receiving your package.&nbsp;
					<a href="shippingreplacementpolicies.aspx">Visit the 
					Shipping and Replacement Policies page for additional 
					information.</a></p></dd>
			</div>
			<p><img src="images/spacer.jpg"> <a href="preparationofshipment.aspx"><b>Preparation of Shipment</b></a></p>
			
			<div onclick="openClose('a12')" style="cursor:hand; curosr:pointer" class="hangingindent"><img src="images/spacer.jpg"><font size="2" color="blue"><b> Shipping Policy</b></font> <img alt="Click to expand/contract answer." class="auto-style2" height="15" src="images/bullet_toggle_plus.png" width="15"><br></div>
				<div id="a12" class="texter">
  					<dd><p align="justify" style="margin-top: 0; width: 205px;">Orders are only shipped on Mondays (or Tuesday following a Monday holiday).  No cultures are shipped during the weeks of Christmas and New Year's Day.  <a href="shippingreplacementpolicies.aspx">Visit the 
					Shipping and Replacement Policies page for additional 
					information.</a></p></dd>
			</div>



		</font>
		
</strong>

</div>
	
	</td>
</tr>
</table>
</center>

<center>
<table border="0">
<tr>
<td width="650">

<ilayer id="d1" width="200" height="200" visibility="hide">
<layer id="d2" width="200" height="200">
<br>
</layer>
</ilayer>



</td>




<td width="50"></td>
</tr>



</table> 
</center>

<br><br>

<center>
<table width="700" border=0>
<td colspan="0" align="left" width="300">
</th>
</td>
<td colspan=0 align=left width=400>
</td>
</table>
</center>

            </tr>

        </table>

















<!--------------------END MAIN CONTENT-------------------------->

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
