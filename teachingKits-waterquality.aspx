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
page = "Teaching Kits: Water Quality"


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


<!--------------------BEGIN MAIN CONTENT-------------------------->

  <img border="0" src="http://web.biosci.utexas.edu/utex/images/teachingkits/waterquality-2.jpg" align="right" vspace="6" hspace="6" width="184" height="184"><img border="0" src="http://web.biosci.utexas.edu/utex/images/teachingkits/waterquality-1.jpg" align="right" vspace="6" hspace="6" width="184" height="184">There are certain algal organisms that are indicators of water quality. Knowing the presence of certain indicators can help keep our water resources healthy. Indicators include:<br>
  &nbsp;&nbsp;&nbsp;&nbsp; •
  Taste & Odor – <i>Anabaena</i>, <i>Hydrodictyon</i>, <i>Oscillatoria</i>,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i>Volvox</i>, <i>Peridinium</i>, 
  <i>Synura</i><br>
  &nbsp;&nbsp;&nbsp;&nbsp; •
  Filter Clogging – <i>Anabaena</i>, <i>Cyclotella</i>, <i>Navicula</i>,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i>Closterium</i>, <i>Spirogyra</i><br>
  &nbsp;&nbsp;&nbsp;&nbsp; •
  Pollution – <i>Anabaena</i>, <i>Euglena</i>, <i>Chlamydomonas<br>
  </i>&nbsp;&nbsp;&nbsp;&nbsp; •
  Clean Water – <i>Selenastrum</i><br>
  &nbsp;&nbsp;&nbsp;&nbsp; •
  Attached to Walls (reservoir)– <i>Stigeoclonium</i>,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i>Batrachospermum</i><br>
  <br>
  With this kit students can identify these indicator algae in our lakes, ponds, and reservoirs. Each tube contains enough algae to prepare about 50 slides.<br>
  <br>
  <i>Experiment Suggestions:</i><br>
&nbsp;&nbsp;&nbsp;&nbsp; • Visit local ponds and lakes to collect algae and 
  compare it to the indicator algae included in this kit<br>
  <br>
  <i>Prices:</i><br>
  &nbsp;&nbsp;&nbsp;&nbsp; •
  Small kit – 7 algal samples				$120<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i>Anabaena</i>,
  <i>Hydrodictyon</i>, <i>Oscillatoria</i>, <i>Euglena</i>,
  <i>Cyclotella</i>, <i>Navicula</i>, and <i>Stigeoclonium</i><br>
  &nbsp;&nbsp;&nbsp;&nbsp; •
  Large kit – 15 algal samples				$200<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i>Anabaena</i>,
  <i>Hydrodictyon</i>, <i>Oscillatoria</i>, <i>Euglena</i>,
  <i>Cyclotella</i>, <i>Navicula</i>, <i>Stigeoclonium</i>, <i>Chlamydomonas</i>,
  <i>Volvox</i>,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i>Closterium</i>, <i>
  Peridinium,</i> <i>Spirogyra</i>, <i>Selenastrum</i>, <i>Synura</i>, and <i>
  Batrachospermum</i><br>
  <p align=center>
  <a href="teachingKits2.aspx">back</a></p>









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
