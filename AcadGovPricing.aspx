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
.auto-style9 {
	border-width: 0px;
}
.auto-style10 {
	margin-left: 9px;
	text-align: center;
}
.auto-style11 {
	margin-left: 8px;
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
  <td style="width: 10px"><img src="images\spacer.gif" height='0' width='10'> </td>
  <td width = 810 colspan = 1><br><br><a href="#Culture Charges">UTEX Culture Charges</a><br>
  <a href="#Shipping and Handling Charges">Shipping and Handling Charges</a>
  <br><hr><br>
  
  <br>
  
  <p><strong><span class="auto-style1"><a name="Culture Charges">
  </a>U.S. Academic &amp; U.S. Government Culture Charges</span></strong></p>
  <p class="auto-style2"><strong>Living Algal Strains</strong></p>
  <ul>
	  <li>Subsidized charge:<ul>
		  <li>$50 USD per culture<ul>
			  <li>Because the U.S. Government provides substantial support for 
			  operating the Culture Collection, governmental agencies and 
			  academic institutions within the U.S. are charged the subsidized 
			  rate.</li>
		  </ul>
		  </li>
	  </ul>
	  </li>
  </ul>
  <span style="color: rgb(0, 0, 0); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">
  <p class="auto-style2">&nbsp;<p class="auto-style2">US academic and US government institutions should use the following discount 
  codes at checkout to obtain the subsidized price of $50 USD per culture</span><ul>
	  <li>
	  <p class="auto-style2">us/acad</li>
	  <li>
	  <p class="auto-style2">us/gov</li>
  </ul>
  <p class="auto-style2">&nbsp;</p>
  <p class="auto-style10"><strong>Those requesting cultures at the 
			  discounted rate may be required to document their institutional 
			  affiliation.</strong></p>
  <p class="auto-style2">&nbsp;</p>
  <p>
  <a href="http://utdirect.utexas.edu/txshop/list.WBX?component=0&amp;application_name=BSALGAEShttp://utdirect.utexas.edu/txshop/list.WBX?component=0&amp;application_name=BSALGAES"><img alt="" class="auto-style9" height="27" src="images/txshoporder.gif" width="143"></a></p>

  <p class="auto-style2"><a href="PricingAlternative.aspx">Return to Pricing 
  Page</a></p>
  <hr>
  <p class="auto-style2">&nbsp;</p>
  <p><strong><span class="auto-style1">Shipping and Handling Charges</span></strong></p>
  <p class="auto-style2"><strong>Continental U.S.</strong><br>Shipments within the continental U.S. are charged $25 USD per order for Federal Express Priority Overnight or UPS Next Day Air delivery.&nbsp; 
  Shipments within the continental U.S. by First Class Mail are charged a $10 
  USD shipping and handling fee, however due to the time sensitivity of live 
  materials the viability of cultures will not be guaranteed and replacements 
  will not be offered.</p>
  <p class="auto-style2">&nbsp;</p>
  <p class="auto-style11"><a href="PricingAlternative.aspx">Return to Pricing 
  Page</a></p>
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
