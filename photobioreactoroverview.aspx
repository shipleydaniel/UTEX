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
page = "Photobioreactors Overview"
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
.auto-style16 {
	font-size: small;
}
</style>

<!-- Add jQuery library -->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>

<!-- Add fancyBox -->
<link rel="stylesheet" href="includes/jquery.fancybox.css?v=2.1.0" type="text/css" media="screen" />
<script type="text/javascript" src="javascripts/jquery.fancybox.pack.js?v=2.1.0"></script>
<script type="text/javascript" src="javascripts/jquery.fancybox-media.js?v=1.0.3"></script>

<script type="text/javascript">
		$(document).ready(function() {
			/*
			 *  Simple image gallery. Uses default settings
			 */

			$('.fancybox').fancybox();

			/*
			 *  Different effects
			 */

			// Change title type, overlay closing speed
			$(".fancybox-effects-a").fancybox({
				helpers: {
					title : {
						type : 'outside'
					},
					overlay : {
						speedOut : 0
					}
				}
			});

			// Disable opening and closing animations, change title type
			$(".fancybox-effects-b").fancybox({
				openEffect  : 'none',
				closeEffect	: 'none',

				helpers : {
					title : {
						type : 'over'
					}
				}
			});

			// Set custom style, close if clicked, change title type and overlay color
			$(".fancybox-effects-c").fancybox({
				wrapCSS    : 'fancybox-custom',
				closeClick : true,

				openEffect : 'none',

				helpers : {
					title : {
						type : 'inside'
					},
					overlay : {
						css : {
							'background' : 'rgba(238,238,238,0.85)'
						}
					}
				}
			});

			// Remove padding, set opening and closing animations, close if clicked and disable overlay
			$(".fancybox-effects-d").fancybox({
				padding: 0,

				openEffect : 'elastic',
				openSpeed  : 150,

				closeEffect : 'elastic',
				closeSpeed  : 150,

				closeClick : true,

				helpers : {
					overlay : null
				}
			});

			/*
			 *  Button helper. Disable animations, hide close button, change title type and content
			 */

			$('.fancybox-buttons').fancybox({
				openEffect  : 'none',
				closeEffect : 'none',

				prevEffect : 'none',
				nextEffect : 'none',

				closeBtn  : false,

				helpers : {
					title : {
						type : 'inside'
					},
					buttons	: {}
				},

				afterLoad : function() {
					this.title = 'Image ' + (this.index + 1) + ' of ' + this.group.length + (this.title ? ' - ' + this.title : '');
				}
			});


			/*
			 *  Thumbnail helper. Disable animations, hide close button, arrows and slide to next gallery item if clicked
			 */

			$('.fancybox-thumbs').fancybox({
				prevEffect : 'none',
				nextEffect : 'none',

				closeBtn  : false,
				arrows    : false,
				nextClick : true,

				helpers : {
					thumbs : {
						width  : 50,
						height : 50
					}
				}
			});

			/*
			 *  Media helper. Group items, disable animations, hide arrows, enable media and button helpers.
			*/
			$('.fancybox-media')
				.attr('rel', 'media-gallery')
				.fancybox({
					openEffect : 'fade',
					closeEffect : 'fade',
					prevEffect : 'none',
					nextEffect : 'none',

					arrows : false,
					helpers : {
						media : {},
						buttons : {}
					}
				});

			/*
			 *  Open manually
			 */

			$("#fancybox-manual-a").click(function() {
				$.fancybox.open('1_b.jpg');
			});

			$("#fancybox-manual-b").click(function() {
				$.fancybox.open({
					href : 'iframe.html',
					type : 'iframe',
					padding : 5
				});
			});

			$("#fancybox-manual-c").click(function() {
				$.fancybox.open([
					{
						href : '1_b.jpg',
						title : 'My title'
					}, {
						href : '2_b.jpg',
						title : '2nd title'
					}, {
						href : '3_b.jpg'
					}
				], {
					helpers : {
						thumbs : {
							width: 75,
							height: 50
						}
					}
				});
			});


		});
	</script>
	<style type="text/css">
		.fancybox-custom .fancybox-skin {
			box-shadow: 0 0 50px #222;
		}
	.auto-style25 {
		text-align: center;
	}
	.auto-style28 {
		margin-top: 0;
		margin-bottom: 0;
		margin-left: 9px;
	}
	.auto-style33 {
		text-align: center;
		line-height: 115%;
		font-family: serif;
		font-size: small;
	}
	.auto-style35 {
		text-align: left;
	}
	.auto-style36 {
	margin-left: 30px;
}
.auto-style37 {
	margin-top: 0;
	margin-bottom: 30;
	margin-left: 30px;
}
	.auto-style38 {
	margin-left: 30px;
	margin-bottom: 30px;
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
  <td style="width: 10px"><img src="images\spacer.gif" height='0' width='10'> </td>
  <td width = 600 colspan = 1>
  
<table width="810" border=0>
<td width="810" valign=top class="auto-style16">
 <p class="MsoNormal">&nbsp;</p>
 <p class="MsoNormal">The UTEX Culture Collection of Algae, in partnership with AlgEternal 
 and GroFizz, now offer various sizes of Photobioreactors (PBR)/Vertical Growth 
 Modules (VGM) and accessories designed to 
 maximize growth and product accumulation rates, and enable the transfer of basic research from a laboratory 
 setting, to applied research 
 in a scaled setting.&nbsp; The UTEX RGB-LED Light Platform surrounds the 
 2-liter and 500-milliliter UTEX photobioreactors delivering specific 
 wavelengths of visible and non-visible light.</p>
 <p class="auto-style33" style="mso-ascii-theme-font: minor-latin; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: &quot;Times New Roman&quot;; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">&nbsp;&nbsp; </p>
    </td></center>	
<td width="250" valign=top class="auto-style25">	
	<img alt="" height="100" src="images/grofizz.png" width="215"><a href="http://www.algeternal.com/"><img alt="" height="75" src="images/algeternallogo.png" width="200"></a></td>
</table>
  <p class="auto-style2"><strong>Specifications:</strong></p>
  <p class="auto-style2">&nbsp;</p>
  <p class="auto-style28"><strong>UTEX 2-Liter and 500-Milliliter Photobioreactors:</strong></p>
  <ul class="auto-style1">
	  <li>
	  <p class="auto-style2">Three (3) PBR packages available: Basic, Plus, and 
	  Deluxe</p>
	  </li>
	  <li>
	  <p class="auto-style2">Large, 2-liter Photobioreactor Dimensions: 26cm (H) 
	  x 10cm (D) </p>
	  </li>
	  <li>
	  <p class="auto-style2">Optional 500-milliliter Photobioreactor available 
	  [Plus and Deluxe packages only]</p>
	  </li>
	  <li>
	  <p class="auto-style2">Optional&nbsp;RGB-LED spectral light platform&nbsp;</p>
	  </li>
	  <li>
	  <p class="auto-style2">Autoclavable glass body </p>
	  </li>
	  <li>
	  <p class="auto-style2">Five (5) air delivery modules </p>
	  </li>
	  <li>
	  <p class="auto-style2">Gas exchange modulator </p>
	  </li>
	  <li>
	  <p class="auto-style2">Air pump [included] </p>
	  </li>
	  <li>
	  <p class="auto-style2">One (1) additional access port for sampling and 
	  measurements </p>
	  </li>
  </ul>
  <p class="auto-style38"><a href="http://web.biosci.utexas.edu/utex/photobioreactor.aspx" onClick="trackOutboundLink(this, 'PBR Overview', 'UTEX PBR'); return false;">For 
  additional information on the UTEX Photobioreactors, please click here.</a></p>
  <left>
  <p class="auto-style28"><strong>UTEX RGB-LED Light Platform</strong> <em>(For 
  UTEX 2-Liter &amp; 500-mL Photobioreactors only)</em><strong>:</strong></p>
  <ul class="auto-style1">
	  <li>36 Total LED Lights: Three (3) rows of twelve (12)</li>
	  <li>Fully adjustable 
	  red (626nm), green (525nm), and blue (470nm) LED</li>
	  <li>Reflective mylar 
	  surface</li>
	  <li>43,200 
	  millicandela (MCD) output</li>
	  <li>40,000 hour life 
	  expectancy</li>
	  <li>Waterproof power 
	  supply<li>120V input / 
	  50-60hz</ul>
    
  <p class="auto-style37">
  <a href="http://web.biosci.utexas.edu/utex/photobioreactorled.aspx" onclick="trackOutboundLink(this, 'PBR Overview', 'RGB-LED'); return false;">For 
  additional information on the UTEX RGB-LED Light Platform, please click here.</a></p>
  </left>
  <p class="auto-style28">&nbsp;</p>
  <hr class="auto-style35" style="width: 500px">
  <p class="auto-style28">&nbsp;</p>
  <p class="auto-style2">&nbsp;
  </p>
  <p class="auto-style28"><strong>Single-Tube and Four-Tube Research Vertical Growth Module:</strong></p>
  <ul class="auto-style1">
	  <li>Single-Tube VGM total volume: 15-liters</li>
	  <li>Four-Tube Research VGM total volume: 60-liters</li>
	  <li>Industrial grade PVC</li>
	  <li>Stainless steel hardware and brass components</li>
	  <li>Hard case Formica base<li>1-inch union-style GF harvest valves<li>One 
	  (1) Micro Matic Premium Regulator<li>One (1) TetraFin Air Pump 
	  [Single-Tube] or Hydra Farm Air Pump [Four-Tube]</ul>
  <p class="auto-style36"><a href="http://web.biosci.utexas.edu/utex/algeternalvgm.aspx" onclick="trackOutboundLink(this, 'PBR Overview', 'AlgEternal VGM'); return false;">For 
  additional information on the AlgEternal Vertical Growth Modules, please click here.</a></p>
  <p class="auto-style2">&nbsp;
  </p>
	  <p>&nbsp;
  	</p>
  




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

