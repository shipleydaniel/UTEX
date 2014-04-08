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
page = "AlgEternal Vertical Growth Modules &trade;"
%>
<LINK REL=STYLESHEET HREF="<%=webroot%>/includes/styleMain.css" TYPE="text/css">
<script language="javascript" src="<%=webroot%>/javascripts/menu.js"></script>


<style type="text/css">
.auto-style1 {
	margin-top: 0px;
}
.auto-style2 {
	margin-top: 0;
	margin-bottom: 0;
}
</style>



<style type="text/css">
		.fancybox-custom .fancybox-skin {
			box-shadow: 0 0 50px #222;
		}
	.auto-style21 {
		margin-left: 0px;
		margin-right: 0px;
	}
	.auto-style22 {
		text-align: right;
		font-size: small;
	}
	.auto-style25 {
		text-align: center;
		font-family: Arial, Helvetica, sans-serif;
		font-size: small;
	}
	.auto-style26 {
		font-family: Arial, Helvetica, sans-serif;
		font-size: small;
	}
	.auto-style27 {
		text-align: right;
		font-family: Arial, Helvetica, sans-serif;
		font-size: small;
	}
	.auto-style28 {
		margin-top: 0;
		margin-bottom: 0;
		font-size: x-small;
		margin-left: 15px;
		text-align: center;
	}
	</style>
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

<script src="javascripts/jquery-1.7.2.min.js"></script>
<script src="javascripts/lightbox.js"></script>
<link href="includes/lightbox.css" rel="stylesheet" />

<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-41440426-2']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
<script type="text/javascript">
function trackOutboundLink(link, category, action) { 
 
try { 
_gaq.push(['_trackEvent', category , action]); 
} catch(err){}
 
setTimeout(function() {
document.location.href = link.href;
}, 100);
}
</script>
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
  <td colspan = 1 style="width: 600px">
 
<table width="810" border=0>
<td width="810" valign=top>
  <font size="2" face="Arial"><br><p style="margin-top: 0; margin-bottom: 0">The patent-pending 
 AlgEternal Vertical Growth Modules (VGM )™ are designed to enable the transfer 
 of basic research from a laboratory, to applied research in a scaled setting. 
 These systems were developed using professional grade engineering, proven 
 agricultural practices, and utilization of innovative components from GF Piping 
 Systems. They can be used to start a new algae project, or be used to 
 complement research currently being conducted to demonstrate genetically 
 modified algal strains or apply laboratory science at full scale.</p><br>
 
 <p style="margin-top: 0; margin-bottom: 0">Both the Single-Tube VGM 
 and Four-Tube Research VGM include all of the gauges, valves, air pump, 
 regulator, and hoses from (optional) CO<sub>2</sub> tank. The Single-Tube VGM has a 
 total volume of 15-liters, while the Four-Tube Research VGM has a total volume 
 of 60-liters. If you are looking for larger-scale growth than the systems 
 offered here, AlgEternal can customize a VGM system to meet your specific algae 
 needs.<![if !supportLineBreakNewLine]>
 <br style="mso-special-character:line-break">
 <center><a href="http://www.algeternal.com/" onClick="trackOutboundLink(this, 'AlgEternal', 'Icon'); return false;"><br><img alt="" height="75" src="images/algeternallogo.png" width="200"></a><br><Br><br><![endif]></span></td></center>	
<td width="250" valign=top>	
	<a href="images/algeternal-four-empty1.jpg" rel="lightbox[AlgEternal]" title="Four-Tube Research VGM (60-liter Total Volume)"><img src="images/algeternal-four-empty1.jpg" height="250" width="254" border="3" alt="VGM" />Click here for additional images.</a><a href="images/algeternal-single-empty1.jpg" rel="lightbox[AlgEternal]" title="Single-Tube VGM (15-liter Total Volume)"></a>
	     
   
</td>
</table>
   <p style="margin-top: 0; margin-bottom: 0"><strong>Single-Tube Vertical Growth Module:</strong></p>
  <ul class="auto-style1">
	  <li>
	  <p class="auto-style2">Single, 15-liter tube </p>
	  <ul class="auto-style1">
		  <li>
		  <p class="auto-style2">Tube dimensions: ~36 inches (H) x 6 inches (D)</p>
		  </li>
		  <li>
	  <p class="auto-style2">Overall dimensions: 15.5 inches (W) x 15.5 inches 
	  (L) x 51 inches (H)</p>
		  </li>
	  </ul>
	  </li>
	  <li>
	  <p class="auto-style2">Industrial grade PVC</p>
	  </li>
	  <li>
	  <p class="auto-style2">Stainless steel hardware and brass components</p>
	  </li>
	  <li>
	  <p class="auto-style2">Hardcase Formica base</p>
	  </li>
	  <li>
	  <p class="auto-style2">1-inch union-style GF harvest valves</p>
	  </li>
	  <li>
	  <p class="auto-style2">One (1) Micro Matic Premium Regulator</p>
	  </li>
	  <li>
	  <p class="auto-style2">One (1) TetraFin air pump</p>
	  </li>
  </ul>
  <br>
   <p style="margin-top: 0; margin-bottom: 0"><strong>Four-Tube Research Vertical Growth Module:</strong></p>
  <ul class="auto-style1">
	  <li>Four (4) separate 15-liter tubes with individual control of each tube 
	  (60-liter total volume)<ul class="auto-style1">
		  <li>Tube dimensions: ~36 inches (H) x 6 inches (D)</li>
		  <li>Overall dimensions: 43 inches (L) x 15.5 inches (W) x 51 inches 
		  (H)</li>
	  </ul>
	  </li>
	  <li>Industrial grade PVC</li>
	  <li>Stainless steel hardware and brass components</li>
	  <li>Hardcase Formica base<li>1-inch union-style GF harvest valves<li>One 
	  (1) Micro Matic Premium Regulator<li>One (1) Hydra Farm air pump</ul>
    
  <script type="text/javascript">
$(document).ready(function() {
    $('.fancybox-media').fancybox({
        openEffect: 'fade',
        closeEffect: 'fade',
        helpers: {
            media: {}
            overlay: {
                closeClick: true,
                speedOut: 150,
                showEarly: true,
                css: {
                    'background': 'rgba(238,238,238,0.85)'
                },
            }
            title: {
                type: 'float'
            }
        }
    });
});​     
</script>
  <br>
   <p style="margin-top: 0; margin-bottom: 0"><strong>Pricing </strong><em>(shipping and handling not 
  included)</em><strong>:</strong></p>
  <table class="auto-style21" style="width: 75%; height: 75px">
	  <tr>
		  <td class="auto-style27" style="width: 316px"><font size="2" face="Arial">Single-Tube Vertical 
		  Growth Module:</font></td>
		  <td class="auto-style25" style="width: 135px"><font size="2" face="Arial"><strong>
		  $899.99 USD</strong></font></td>
		  <td style="width: 120px">
<a href="http://www.algeternal.com/products/single-tube-vertical-growth-module" onClick="trackOutboundLink(this, 'AlgEternal', 'single-tube'); return false;"><img src="images/txshoporder.gif" border="0" style="float: left" class="auto-style26"></a></td>
	  </tr>
	  <tr>
		  <td class="auto-style22" style="width: 316px">
		  <span class="auto-style26"><font size="2" face="Arial">Four-Tube Research 
		  Vertical Growth Module:</font></span><br class="auto-style26">
		  <span class="auto-style26"><em><font size="2" face="Arial">
		  -Please 
		  allow 3 to 4 weeks for delivery.</font></em></span></td>
		  <td class="auto-style25" style="width: 135px"><font size="2" face="Arial"><strong>
		  $2,999.99 USD</strong></font></td>
		  <td style="width: 120px">
  		<a href="http://www.algeternal.com/products/four-tube-research-vgm/" onClick="trackOutboundLink(this, 'AlgEternal', 'four-tube'); return false;"><img src="images/txshoporder.gif" border="0" style="float: left" class="auto-style26"></a></td>
	  </td>
	  </tr>
  </table>
  
  <p class="auto-style28"><strong><em>**Clicking on the 'Order Now' button will 
  redirect you to the AlgEternal website to place your order.</em></strong></p><Br><br>
  <font size="2" face="Arial"><p style="margin-top: 0; margin-bottom: 0"> For more information about these Vertical Growth Modules<sup>TM</sup>,
  or for inquiries 
  about custom VGM systems, please contact <a href="mailto:info@algeternal.com">
  info@algeternal.com</a>.</p><br><br>
	
  




<td width="50"></td>
</tr>
</table> 
</center>
	
</body>

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

