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
page = "Teaching Kits: Colors of Algae"


%>
<LINK REL=STYLESHEET HREF="<%=webroot%>/includes/styleMain.css" TYPE="text/css">
<script language="javascript" src="<%=webroot%>/javascripts/menu.js"></script>

<style type="text/css">
.auto-style1 {
	text-align: right;
}
.auto-style2 {
	text-align: right;
	font-size: xx-small;
}
.auto-style3 {
	font-size: xx-small;
	font-style: italic;
}
.auto-style5 {
	font-size: x-small;
}
.auto-style6 {
	font-size: x-small;
	font-style: italic;
}
.auto-style7 {
	font-size: small;
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
  <td width = 810 colspan = 1>


<!--------------------BEGIN MAIN CONTENT-------------------------->

  <img border="0" src="http://web.biosci.utexas.edu/utex/images/teachingkits/colors-1.jpg" align="right" vspace="6" hspace="6" width="184" height="184"><img border="0" src="http://web.biosci.utexas.edu/utex/images/teachingkits/colors-2.jpg" align="right" vspace="6" hspace="6" width="184" height="184"><p>Algae usually are identified with the color green, but they actually occur in a great range of colors and hues, 
  depending on the kind of algae and in some cases on the way they are grown. The colors are due to pigments (colored molecules) within individual cells.
Three broad categories of pigments occur in algae:<br>
<ul><li>Chlorophylls:	green</li>
<li>Carotenoids: 	red, orange, yellow, amber, or brown</li>
<li>Phycobilins:	iridescent red or blue</li></ul>
  
  <p>There are common reasons why the colors of some algae change with culture 
  conditions. At low light intensities, some algae produce more light-absorbing pigments to improve 
  their efficiency of photosynthesis. At very high light intensities, some algae produce a high concentration 
  of &quot;sunscreen&quot; pigments to protect the interior of the cell from exposure to 
  excess ultraviolet and blue light.</p>
  
  <p>Chromatic adaptation in algae is the ability to adapt to different wave lengths in the environment by changing their relative ammount of various pigments. This adaptation allows the algal cells to maximize light absorbance for photosynthesis. A few algae (including <i>Fremyella</i>), when subjected to light of one color, it will express the complimentary color. 
  Teaching kits will be filled with the species determined to be the healthiest 
  on a week to week basis by the Culture Manager. </p>
  <p><i>Experiment Suggestions:</i><br>
<ul><li>How does nutrient content of the growth medium affect the color of the algae?</li>
<li>How does growth temperature or light intensity affect the color the algae?</li>
<li>How does a shorter or longer photoperiod affect the color of the algae?</li>
<li>How does <i>Fremyella</i> chromatically adapt to different wavelengths?</li>
<li>Does the length of the photoperiod or light intensity affect the degree of chromatic adaptation?</li></ul>
  <p><i>Kit Prices:</i><br>
  <table style="width: 100%">
	  <tr>
		  <td style="autostyle1;width: 272px" class="auto-style7">Small Kit (4 algal samples)</td>
		  <td style="width: 81px" class="auto-style7">$60 USD</td>
		  <td><a href="http://utdirect.utexas.edu/txshop/item_details.WBX?application_name=BSALGAES&amp;component=0&amp;dept_prefix=BS&amp;item_id=11&amp;cat_seq_chosen=05&amp;subcategory_seq_chosen=000http://utdirect.utexas.edu/txshop/item_details.WBX?application_name=BSALGAES&amp;component=0&amp;dept_prefix=BS&amp;item_id=11&amp;cat_seq_chosen=05&amp;subcategory_seq_chosen=000" target="_blank"><img src="images/orderhere01.gif" border="0"></a></td>
	  </tr>
	  <tr>
		  <td class="auto-style2" style="width: 272px; height: 8px;"><em>
		  <span class="auto-style5">Chlorella, 
		  Phormidium, Cryptomonas, Fremyel</span>la</em></td>
		  <td style="width: 81px; height: 8px;"></td>
		  <td style="height: 8px"></td>
	  </tr>
	  <tr>
		  <td style="width: 272px"></td>
		  <td style="width: 81px"></td>
		  <td></td>
	  </tr>
	  <tr>
		  <td style="width: 272px" class="auto-style7">Large Kit (8 algal samples)</td>
		  <td style="width: 81px" class="auto-style7">$120 USD</td>
		  <td><a href="http://utdirect.utexas.edu/txshop/item_details.WBX?application_name=BSALGAES&amp;component=0&amp;dept_prefix=BS&amp;item_id=12&amp;cat_seq_chosen=05&amp;subcategory_seq_chosen=000http://utdirect.utexas.edu/txshop/item_details.WBX?application_name=BSALGAES&amp;component=0&amp;dept_prefix=BS&amp;item_id=12&amp;cat_seq_chosen=05&amp;subcategory_seq_chosen=000" target="_blank"><img src="images/orderhere01.gif" border="0"></a></td>
	  </td>
	  </tr>
	  <tr>
		  <td class="auto-style1" style="width: 272px">
		  <span class="auto-style6">Chlorella</span><span class="auto-style5">, 
		  </span><span class="auto-style6">Phormidium inundatum</span><span class="auto-style5">, 
  		</span><span class="auto-style6">Phormidium persicinum</span><span class="auto-style5">,  
		  </span><span class="auto-style6">Cryptomonas</span><span class="auto-style5">, 
		  </span><span class="auto-style6">Rhodosorus</span>,<br class="auto-style5">
		  <span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		  </span><span class="auto-style6">Synechococcus</span><span class="auto-style5">, 
  		</span><span class="auto-style6">Skeletonema, Fremyell</span><span class="auto-style3">a</span></td>
		  <td style="width: 81px">&nbsp;</td>
		  <td>&nbsp;</td>
	  </tr>
  </table>
  <br>
  <p align=center>
  <a href="teachingKits.aspx">back</a></p></td>
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
