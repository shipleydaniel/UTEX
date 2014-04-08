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
page = "Pricing"


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
.auto-style3 {
	list-style-type: disc;
}
.auto-style7 {
	font-size: larger;
}
.auto-style8 {
	border-width: 0px;
}
.auto-style9 {
	margin-left: 0px;
	margin-bottom: 0px;
}
.auto-style10 {
	margin-top: 0;
	margin-bottom: 0;
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
  <td width = 810 colspan = 1><br><br><a href="#Culture Charges">UTEX Culture Charges</a><br>
  <a href="#UTEX Services">UTEX Service Charges</a><br>
  <a href="#Shipping and Handling Charges">Shipping and Handling Charges</a>
  <br>
  <br><hr><br>
  
  <br>
  
  <p><strong><span class="auto-style1"><a name="Culture Charges">
  </a>UTEX Culture Charges</span></strong></p>
  <p class="auto-style2"><strong>Living Algal Strains</strong></p>
  <ul>
	  <li>$100 USD per culture<br><br>
	  <li><a href="AcadGovPricing.aspx">U.S Academic &amp; U.S. 
	  Government Pricing</a></li>
  </ul>
  <p class="auto-style2">&nbsp;</p>
  <p class="auto-style2"><strong>Bulk Microalgae Culture</strong></p>
  <ul>
	  <li>500 milliliters:<ul>
		  <li>$175 USD per culture</li>
	  </ul>
	  </li><br>
	  <li>1 liter:<ul>
		  <li>$250 USD per culture</li>
	  </ul>
	  </li>
  </ul>
  <p>&nbsp;</p>
  <p class="auto-style2"><strong>Prepared Culture Media</strong></p>
  <ul>
	  <li>1 liter of prepared culture media <strong>(liquid only)</strong><ul>
		  <li>$55 USD per liter<ul>
			  <li>Cost includes extra shipping charge to cover added 
			  weight.</li>
		  </ul>
		  </li>
	  </ul>
	  </li>
	  <br><li>4 tubes of prepared culture media 
	  <strong>(agar and liquid)</strong> 
	  <ul>
		  <li>15 mL tubes of liquid media or 25 
	  mL screw-cap tubes with 10mL of agar media<ul>
			  <li>$20 USD</li>
			  <li>$10 USD<ul class="auto-style3">
				  <li>When ordered in combination with a living algal strain.</li>
			  </ul>
			  </li>
		  </ul>
		  </li>
	  </ul>
	  </li>
  </ul>
  <p>&nbsp;</p>
  <p class="auto-style2"><strong>Images</strong></p>
  <ul>
	  <li>High resolution image (TIFF or JPEG format)<ul>
		  <li>$10 USD per culture</li>
	  </ul>
	  </li>
  </ul>
  <p>&nbsp;</p>
  <p class="auto-style2"><strong>Teaching Kits</strong></p>
  <ul>
	  <li>Bioluminescence<ul>
		  <li>$60 USD</li>
	  </ul>
	  </li>
	  <br><li>Colors of Algae<ul>
		  <li>$60 USD: Small Kit</li>
		  <li>$120 USD: Large Kit</li>
	  </ul>
	  </li>
	  <br><li>Edible Algae in Commercial Products<ul>
		  <li>$60 USD</li>
	  </ul>
	  </li>
	  <br><li>Diatoms &amp; Symmetry<ul>
		  <li>$120 USD</li>
	  </ul>
	  </li>
	  <br><li>Shapes of Algae<ul>
		  <li>$120 USD</li>
	  </ul>
	  </li>
  </ul>
  <p>&nbsp;</p>
  <p class="auto-style2"><strong>UTEX Photobioreactors &amp; Accessories</strong></p>
  <ul>
	  <li>Basic Photobioreactor Package<ul>
		  <li>$150 USD</li>
	  </ul>
  </ul>
  <ul>
	  <li>Plus Photobioreactor Package <ul>
		  <li>$200 USD </li>
	  </ul>
  </ul>
  <ul>
	  <li>Deluxe Photobioreactor Package<ul>
		  <li>$420 USD </li>
	  </ul>
  </ul>
  <ul>
	  <li>UTEX RGB-LED Lighting Platform<ul>
		  <li>$275 USD</li>
	  </ul>
  </ul>
  <p>&nbsp;</p>
  <p class="auto-style2"><strong>Genomic DNA</strong></p>
  <ul>
	  <li>$150 USD per culture</li>
  </ul>
  <p>&nbsp;</p>
  <p><strong><span class="auto-style1"><a name="UTEX Services"></a></span></strong>
  <a href="http://utdirect.utexas.edu/txshop/list.WBX?component=0&amp;application_name=BSALGAEShttp://utdirect.utexas.edu/txshop/list.WBX?component=0&amp;application_name=BSALGAES">
  <img alt="" class="auto-style8" height="27" src="images/txshoporder.gif" width="143"></a></p>
  <hr>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p><strong><span class="auto-style1">UTEX Service 
  Charges</span></strong></p>
  <p class="auto-style2"><strong>Workshops: </strong></p>
  <ul>
	  <li>
	  <p class="auto-style9">UTEX: Managing Microalgal Cultures</p>
	  <ul>
		  <li>
		  <p class="auto-style10">$600 USD: Full Payment due at registration</p>
		  </li>
	  </ul>
	  </li>
  </ul>
  <br><p class="auto-style2"><span class="auto-style7">&nbsp;</span><strong>Strain Identification</strong></p>
  <ul>
	  <li>Microscopic Identification<ul>
		  <li>$50 USD per strain</li>
	  </ul>
	  </li>
	  <br><li>DNA Sequencing<ul>
		  <li>$900 USD per strain<ul>
			  <li>$400 USD due prior to sequencing</li>
		  </ul>
		  </li>
	  </ul>
	  </li>
  </ul>
  <p class="auto-style2">&nbsp;</p>
  <p class="auto-style2"><strong>Cryogenic Storage</strong></p>
  <ul>
	  <li><a href="cryostorage.aspx">See Cryogenic Storage page for pricing</a></li>
  </ul>
  <p>&nbsp;</p>
  <p><strong><span class="auto-style1"><a name="Shipping and Handling Charges">
  </a></span></strong>
  <a href="http://utdirect.utexas.edu/txshop/list.WBX?component=0&amp;application_name=BSALGAEShttp://utdirect.utexas.edu/txshop/list.WBX?component=0&amp;application_name=BSALGAES">
  <img alt="" class="auto-style8" height="27" src="images/txshoporder.gif" width="143"></a></p>
  <hr>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p><strong><span class="auto-style1">Shipping and Handling Charges</span></strong></p>
  <p class="auto-style2"><strong>Continental U.S.</strong><br>Shipments within the continental U.S. are charged $25 USD per order for Federal Express Priority Overnight or UPS Next Day Air delivery.&nbsp; 
  Shipments within the continental U.S. by First Class Mail are charged a $10 
  USD shipping and handling fee, however due to the time sensitivity of live 
  materials the viability of cultures will not be guaranteed and replacements 
  will not be offered.</p>
  <p class="auto-style2">&nbsp;<strong>International</strong><br>&nbsp;International orders are charged a standard rate depending on their destination.  The following prices are shipping charges per order:</p>
  <ul>
	  <li>$45 USD: Alaska, Hawaii, Canada, Mexico, &amp; Puerto Rico</li>
	  <li>$55 USD: South America</li>
	  <li>$60 USD: Europe, Australia, &amp; New Zealand</li>
	  <li>$65 USD: Asia</li>
	  <li>$75 USD: South Africa</li>
  </ul>
  <p>&nbsp;</p>
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
