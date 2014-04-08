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
page = "UTEX Photobioreactor"
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
.auto-style7 {
	text-decoration: underline;
}
.auto-style8 {
	color: #0000FF;
}
.auto-style9 {
	margin-top: 0;
	margin-bottom: 0;
	font-size: x-small;
	margin-left: 10px;
}
.auto-style12 {
	text-decoration: underline;
	color: #0000FF;
}
.auto-style16 {
	font-size: small;
}
.auto-style17 {
	margin-top: 0px;
	text-align: right;
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
	.auto-style18 {
		margin-top: 0;
		margin-bottom: 0;
		font-size: x-small;
		margin-left: 9px;
	}
	.auto-style19 {
		color: #000000;
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
  <td><img src="images\spacer.gif" height='0' width='10'> </td>
  <td width = 600 colspan = 1>
  
<table width="810" border=0>
<td width="810" valign=top class="auto-style16">
 <br>
 The UTEX Photobioreactor systems are equipped with a disposable 
  gas exchange assembly and an additional port for monitoring (pH, DO%, 
  sampling) to accelerate photosynthetic organismal growth.&nbsp; The systems can 
  be used in direct sunlight or as plug and play modules within a spectral 
  illumination platform delivering specific wavelengths of visible and 
  non-visible light.<br><br>The lab scale photobioreactor offers an optimized design for delivering light to the culture to maximize growth and product accumulation rates.  
 The optional 
 <a href="http://web.biosci.utexas.edu/utex/photobioreactorled.aspx">RGB-LED spectral light platform</a> is customizable (red, blue, and green LED lights) and testable for labs or classrooms wishing to optimize a light source for a particular species of interest.  The gas exchange agitator further enhances growth and is likewise customizable and testable.  The glass base of the reactor is autoclavable, and air delivery replacement parts are available.<br>
	</td>	
<td width="250" valign=top>	
	<img src="images/PBR-largeANDsmall-empty.jpg" height="250" width="228" border="3"><a id="MTLB0" name="MTLB_MUTMJLD" href="http://web.biosci.utexas.edu/utex/images/pbr-largeANDsmall-empty.jpg" style="text-decoration:none"><p class="auto-style17" style="height: 0px; width: 228px">Click here for additional images.        
    <script type="text/javascript">/*<![CDATA[*/ var MTLB0list=[["http://web.biosci.utexas.edu/utex/images/PBR-largeANDsmall-empty.jpg","2-Liter and 500-mL UTEX Photobioreactors"], ["http://web.biosci.utexas.edu/utex/images/PBR-large-empty.jpg","2-Liter UTEX Photobioreactor"], ["http://web.biosci.utexas.edu/utex/images/pbr-large-green.jpg","2-Liter UTEX Photobioreactor"], ["http://web.biosci.utexas.edu/utex/images/LED-on-green.jpg","2-Liter UTEX Photobioreactor (shown with optional RGB-LED Lighting Platform)"], ["http://web.biosci.utexas.edu/utex/images/PBR-large-pink.jpg","2-Liter UTEX Photobioreactor (shown with optional RGB-LED Lighting Platform)"]];/*]]>*/</script></a>
</td>
</table>
  <p class="auto-style2"><strong>Photobioreactor:</strong></p>
  <ul class="auto-style1">
	  <li>
	  <p class="auto-style2">Easy to set up and operate</p>
	  </li>
	  <li>
	  <p class="auto-style2">Inexpensive</p>
	  </li>
	  <li>
	  <p class="auto-style2">Rapid scale-up of photosynthetic cultures</p>
	  </li>
	  <li>
	  <p class="auto-style2">Dense seed culture production</p>
	  </li>
	  <li>
	  <p class="auto-style2">Customizable light source to promote growth and/or product 
	  accumulation</p>
	  </li>
	  <li>
	  <p class="auto-style2">Customizable gas exchange and agitation</p>
	  </li>
  </ul>
  <p class="auto-style2">&nbsp;</p>
  <p class="auto-style2"><strong>Applications:</strong></p>
  <ul class="auto-style1">
	  <li>Educational labs interested in evaluating photosynthetic species</li>
	  <li>Large scale photosynthetic culture growers wishing to accelerate 
	  inoculation cultures</li>
	  <li>Aquarium enthusiasts wishing to maintain algal feedstocks</li>
	  <li>Gardening enthusiasts wishing to maintain cultures for use as a 
	  biofertilizer</ul>
    
  <p class="auto-style2">&nbsp;</p>
  <p class="auto-style2"><strong>Reactor Specifications:</strong></p>
  <ul class="auto-style1">
	  <li>
	  <p class="auto-style2">Large Photobioreactor Dimensions: 26cm (H) x 10cm (D)</p>
	  </li>
	  <li>
	  <p class="auto-style2">Autoclavable glass body</p>
	  </li>
	  <li>
	  <p class="auto-style2">Five (5) air delivery modules</p>
	  </li>
	  <li>
	  <p class="auto-style2">Gas exchange modulator</p>
	  </li>
	  <li>
	  <p class="auto-style2">Air pump (included)</p>
	  </li>
	  <li>
	  <p class="auto-style2">One (1) additional access port for sampling and 
	  measurements</p>
	  </li>
  </ul>
    
  <p class="auto-style2">&nbsp;</p>
  <p class="auto-style2">
  <a href="http://web.biosci.utexas.edu/utex/photobioreactorled.aspx" name="RGB-LED">
  <strong>Additional information on the optional UTEX RGB-LED Light Platform.</strong></a></p>
  <p class="auto-style2">&nbsp;</p>
  <p class="auto-style2">&nbsp;</p>
  <p class="auto-style2"><strong>
<a class="fancybox-media" href=""><span class="auto-style19">COMING SOON - How to set up your UTEX Photobioreactor Video Demonstration</span></a></strong></p>
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
  <br>
  <p class="auto-style2"><strong>UTEX Photobioreactor Package Options:</strong></p>
  <p class="auto-style9"><em>Click on each package to view/hide what is included.</em></p>
  <ul>
	  <li><strong>
	  <div onClick="openClose('a1')" style="cursor:hand; cursor:pointer">
		  <span class="auto-style7"><span class="auto-style8">$150 USD - Basic 
		  Package:</li></span></span></strong></div>
	  <ul>
		  <div id="a1" class="texter">
			  <li>Includes:</li>
			  <ul>
				  <li>
				  <p class="auto-style2">One (1) Large, 2-Liter UTEX Photobioreactor
				  <br />
				  </p>
				  </li>
			  </ul>
		  </div>
	  </ul>
	  <li><strong>
	  <div onclick="openClose('a2')" style="cursor:hand; cursor:pointer" class="auto-style12">
		  $200 USD - Plus Package:</div>
	  </strong></li>
  	  <ul>
		  <div id="a2" class="texter">
			  <li>Includes:</li>
			  <ul>
			  		<li>
			  		<p class="auto-style2">One (1) Large, 2-Liter UTEX Photobioreactor
					<br />
			  		</p>
			  		</li></ul>
				<ul>
					<li>
					<p class="auto-style2">One (1) Small, 500-mL UTEX Photobioreactor<br />
					</p>
					</li></ul>
		  </div>
	  </ul>
	  <li><strong>
	  <div onclick="openClose('a3')" style="cursor:hand; cursor:pointer" class="auto-style12"auto-style12">
	  		$420 USD - Deluxe Package:</div>
	  	</strong></li>
	  	<ul>
	  		<div id="a3" class="texter">
	  			<li>Includes:</li>
	  			<ul>
	  				<li>
	  				<p class="auto-style2">One (1) Large, 2-Liter UTEX Photobioreactor
					<br />
	  				</p>
	  				</li></ul>
	  			<ul>
	  				<li>
	  				<p class="auto-style2">One (1) Small, 500-mL UTEX Photobioreactor<br />
	  				</p>
	  				</li></ul>
	  			<ul>
	  				<li>
	  				<p class="auto-style2">Two (2) Liters of Sterile Culture Media<br />
	  				</p>
	  				</li></ul>
	  			<ul>
	  				<li>
	  				<p class="auto-style2">One (1) 50-mL Starter Culture</p>
	  				</li>
				</ul>
	  				</div>
	  				</ul>
  </ul>
  
  <p class="auto-style18" style="width: 642px"><em><strong>Add an additional $275 USD for optional RGB-LED Lighting Platform
  </strong> </em></p>

  <p>
  <a href="http://utdirect.utexas.edu/txshop/list.WBX?component=0&amp;application_name=BSALGAEShttp://utdirect.utexas.edu/txshop/list.WBX?component=0&amp;application_name=BSALGAES" target="_blank">
  <img src="images/txshoporder.gif" border="0" style="float: left"></a></p>
	  <p>
  	&nbsp;</p>
  




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

