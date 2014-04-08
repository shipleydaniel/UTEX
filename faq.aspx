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
page = "Frequently Asked Questions"


%>
<LINK REL=STYLESHEET HREF="<%=webroot%>/includes/styleMain.css" TYPE="text/css">
<script language="javascript" src="<%=webroot%>/javascripts/menu.js"></script>

<style type="text/css">
.auto-style2 {
	border-width: 0px;
	margin-left: 1px;
	margin-right: 0px;
}
.auto-style3 {
	border-style: solid;
	border-width: 1px;
	font-size: x-small;
}
.auto-style4 {
	text-align: center;
	border-style: solid;
	border-width: 1px;
	font-size: x-small;
}
.auto-style5 {
	font-size: x-small;
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
  <td width = 810 colspan = 1><a href="#Dear_Customers," onclick="trackOutboundLink(this, 'FAQ', 'UTEX Price Increase Information'); return false;">UTEX Price Increase Information</a><br><a href="#FAQ" onclick="trackOutboundLink(this, 'FAQ', 'FAQ link'); return false;">
  FAQ</a><br><br><br><hr><br>

<!--------------------BEGIN MAIN CONTENT-------------------------->
<p><a name="Dear_Customers,">Dear Customers,</a><br><br>Due to increasing 
demands for UTEX services, reduced UTEX funding from other sources, and 
increasing transportation/shipping costs, it was necessary to increase prices on some of our products.<br><br>
The new price schedule, which took effect on <strong>May 10, 2013</strong> is as follows:</p>
  <p>
  <table class="auto-style2" style="width: 89%" align="center">
	  <tr>
		  <td class="auto-style3" style="width: 291px">&nbsp;</td>
		  <td class="auto-style4" style="width: 204px"><strong>Old Price</strong></td>
		  <td class="auto-style4" style="width: 204px"><strong>New Price 
		  (Starting 5/10/13)</strong></td>
	  </tr>
	  <tr>
		  <td class="auto-style3" style="width: 291px"><strong>Living Algal 
		  Strain</strong></td>
		  <td class="auto-style4" style="width: 204px">$90.00 USD per strain</td>
		  <td class="auto-style4" style="width: 204px">$100.00 USD per strain</td>
	  </tr>
	  <tr>
		  <td class="auto-style3" style="width: 291px"><strong>
		  <span class="auto-style5">Living Algal 
		  Strain</span><br class="auto-style5"><span class="auto-style5">&nbsp;-US Academic &amp; US Government</span></strong></td>
		  <td class="auto-style4" style="width: 204px">$40.00 USD per strain</td>
		  <td class="auto-style4" style="width: 204px">$50.00 USD per strain</td>
	  </tr>
	  <tr>
		  <td class="auto-style3" style="width: 291px"><strong>RGB-LED Light 
		  Platform for UTEX Photobioreactor</strong></td>
		  <td class="auto-style4" style="width: 204px">$225.00 USD each</td>
		  <td class="auto-style4" style="width: 204px">$275.00 USD each</td>
	  </tr>
	  <tr>
		  <td class="auto-style3" style="width: 291px"><strong>Shipping Charges<br>
		  -US Domestic</strong></td>
		  <td class="auto-style4" style="width: 204px">$20.00 USD</td>
		  <td class="auto-style4" style="width: 204px">$25.00 USD</td>
	  </tr>
	  <tr>
		  <td class="auto-style3" style="width: 291px"><strong>Shipping Charges<br>
		  -Canada/Mexico/Hawaii/Alaska/Puerto Rico</strong></td>
		  <td class="auto-style4" style="width: 204px">$35.00 USD</td>
		  <td class="auto-style4" style="width: 204px">$45.00 USD</td>
	  </tr>
  </table>
  </p>
  <p>Prices for products and services that are 
  not listed will not change.</p>
  <p>Thank you for your valued business.&nbsp; We appreciate your understanding 
  regarding the need for this price increase.&nbsp; Should you have any 
  questions regarding the price change, please <a href="contactUtex.aspx" onclick="trackOutboundLink(this, 'FAQ', 'Contact Us'); return false;">
  contact us</a>.</p>
  <p>With kind regards,<br><br>UTEX Staff</p>
  <p>&nbsp;</p>
  <hr>
  <p>&nbsp;</p>
<table class="normal" width="790">
<tr>
<td><b><a name="FAQ">Q:</a></b></td><td  width="100%" ><b>How much does a culture cost?</b></td>
</tr>
<tr>
<td>&nbsp;</td><td  width="100%">All cultures are the same price. All US academic and US government users are charged US $50 
	per tube and all other users are charged US $100 per tube.
</td>
</tr>

<td><b>Q:</b></td><td><b>What does the prefix &quot;LB&quot; mean?</b></td>
</tr>
<tr>
<td>&nbsp;</td><td>
	<table class="normal" border="0" cellpadding = "1">
	<tr>
	  <td>LB</td><td width="100%"> liquid, xenic culture</td>
	</tr>
	<tr>
	  <td>B</td><td  width="100%">agar, xenic culture</td>
	</tr>	
	<tr>
	  <td>(no&nbsp;prefix)</td><td  width="100%">agar, axenic culture</td>
	</table>
</td>
</tr>

<tr>
<td><b>Q:</b></td><td  width="100%" ><b>How much is it to ship to my country?</b></td>
</tr>
<tr>
<td>&nbsp;</td><td  width="100%">International orders are charge a standard rate depending on their location. The following prices are shipping charges per order.<br>
	<table class="normal"  border="0" cellpadding = "1">
	<tr>
	  <td>&nbsp;&nbsp;&nbsp;</td><td>$25</td><td width="100%">Continental USA</td>
	</tr>
	<tr>
  	  <td>&nbsp;&nbsp;&nbsp;</td><td>$45</td><td  width="100%">Alaska, Hawaii, Canada, Mexico, & Puerto Rico</td>
	</tr>
	<tr>
	  <td>&nbsp;&nbsp;&nbsp;</td><td>$55</td><td  width="100%">South America </td>
	</tr>
	<tr>
  	  <td>&nbsp;&nbsp;&nbsp;</td><td>$60</td><td  width="100%">Europe, 
		Australia, &amp; New Zealand </td>
	</tr>
	<tr>
	  <td>&nbsp;&nbsp;&nbsp;</td><td>$65</td><td  width="100%">Asia</td>
	</tr>
	<tr>
	  <td>&nbsp;&nbsp;&nbsp;</td><td>$75</td><td  width="100%">South Africa</td>
	</tr>
	</table>
</td>
</tr>

<tr>
<td><b>Q:</b></td><td  width="100%" ><b>When will I receive my order?</b></td>
</tr>
<tr>
<td>&nbsp;</td><td  width="100%">Orders are shipped on a weekly basis. Orders 
	placed by Wednesday 5pm CST are shipped the following Monday.</td>
</tr>		 
			

<tr>
<td><b>Q:</b></td><td  width="100%" ><b>What strains can you recommended for biodiesel?</b></td>
</tr>
<tr>
<td>&nbsp;</td><td  width="100%">We are not studying this topic and you should check publications for information: <a href="http://www.oilgae.com/algae/oil/yield/yield.html" onclick="trackOutboundLink(this, 'FAQ', 'Algal Oil Yields'); return false;">Algal Oil Yields</a>
</td>
</tr>		 
			 
<tr>
<td><b>Q:</b></td><td  width="100%" ><b>How can I get my culture to grow faster?</b></td>
</tr>
<tr>
<td>&nbsp;</td><td  width="100%">We do not aim for optimum growth here at UTEX. Investigators are urged to consult the available literature for alternative media, shaking, or CO<sub>2</sub> infusion if optimum growth is an important consideration in their research.
</td>
</tr>		 

<tr>
<td><b>Q:</b></td><td  width="100%" ><b>How long will the living algal strain last?</b></td>
</tr>
<tr>
<td>&nbsp;</td><td  width="100%">Cultures should last for a few weeks maybe months depending on the strain as long as the culture has proper care.
</td>
</tr>


<tr>
<td><b>Q:</b></td><td  width="100%" ><b>How do I care for my culture once I receive it?</b></td>
</tr>
<tr>
<td>&nbsp;</td><td  width="100%">The screw-cap should be loosened, not removed to allow for gas exchange and if this practice is not customary in your laboratory a note next to the culture may be a good idea. Place the culture tube in an appropriately lighted room or incubator and provide a photoperiod of 16 hours light: 8 hours dark. The culture should be kept at room temperature or 20&deg;C unless noted in the culture notes. 
</td>
</tr>

<tr>
<td><b>Q:</b></td><td  width="100%" ><b>How do I find cultures with specific characteristics, i.e. high lipid content?</b></td>
</tr>
<tr>
<td>&nbsp;</td><td  width="100%">Search for desired characteristic in the Notes text box of the <a href="http://web.biosci.utexas.edu/utex/Search.aspxhttp://web.biosci.utexas.edu/utex/Search.aspx" onclick="trackOutboundLink(this, 'FAQ', 'Culture Search'); return false;">Culture Search</a>.
</td>
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
