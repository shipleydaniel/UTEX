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
page = "Teaching Kits:  Bioluminescence"


%>
<LINK REL=STYLESHEET HREF="<%=webroot%>/includes/styleMain.css" TYPE="text/css">
<script language="javascript" src="<%=webroot%>/javascripts/menu.js"></script>

<style type="text/css">
.auto-style1 {
	margin-bottom: 0px;
}
.auto-style2 {
	margin-top: 0px;
}
.auto-style4 {
	text-decoration: line-through;
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
  <img border="0" src="http://web.biosci.utexas.edu/utex/images/teachingkits/bioluminescence-1.jpg" align="right" vspace="6" hspace="6" width="184" height="184"><img border="0" src="http://web.biosci.utexas.edu/utex/images/teachingkits/bioluminescence-2.jpg" align="right" vspace="6" hspace="6" width="184" height="184">
  <p><b>Please Note:<br>
  The kit will contain either <i>Pyrocystis lunula</i> or <i>Pyrocystis noctiluca</i> as chosen by our Culture Manager. We cannot guarantee a certain species or take requests; however, all six tubes will be the same species. Teaching kits will be filled with the species determined to be the healthiest on a week to week basis by the Culture Manager. Both species will bioluminesce by using the instructions below.
  </b></p>
  
  <p>Bioluminescence is the production and emission of light by a living organism as the result of a chemical reaction 
during which chemical energy is converted to light energy. The chemical enzyme responsible for this light emission 
  in many organisms is called luciferase. This same enzyme is found in fireflies. 
  <i>Pyrocystis</i> is a marine single-celled alga that emits light when a 
  culture is stressed such as by mechanical agitatation or by the addition of acetic acid.</p>
 
  <p>The tubes should be put in a 24-hour (12 hour light:12 hour dark works well) 
  photoperiod after they are received. In order to induce and visualize 
  bioluminescence, a tube containing <i>Pyrocystis</i> can be vigorously 
  agitated in darkness after 2 hours into their dark cycle. Dark can be achieved with Aluminum foil wrapped around the tubes and then placed in a drawer or closet.&nbsp; For the light cycle just place the tubes under regular fluorescent lamps. Adapt the cultures for at least 3 days before agitating the tubes.&nbsp;
  <i>Pyrocystis</i> should be maintained at comfortable room temperature, never 
  higher than 26C or lower than 21C.&nbsp; Cultures may be temporarily placed at 
  higher or lower temperatures for experimental treatments.</p>
  
  <p class="auto-style1" margin-bottom="0"><i>Experiment Suggestions:</i><br>
<ul margin-top="0" class="auto-style2"><li class="auto-style2">How does temperature or light intensity affect the bioluminescence observed?</li>
<li>Does the bioluminescence emitted change depending on when into their dark phase you agitate the tubes?</li>
<li>How does a brief heat period affect bioluminescence?</li>
<li>How does a shorter or longer photoperiod affect the bioluminescence observed?</li></ul></p>
<p class="auto-style1"><i><br>Kit Price:</i><br>
<ul class="auto-style2"><li>Six tubes of <i>Pyrocystis</i> - 
	$60</li></ul>

  <p><a href="http://utdirect.utexas.edu/txshop/item_details.WBX?application_name=BSALGAES&amp;component=0&amp;dept_prefix=BS&amp;item_id=9&amp;cat_seq_chosen=05&amp;subcategory_seq_chosen=000"
			  target="_blank">
		<img src="images/orderhere01.gif" border="0"></a></p>
  <p align=center>
  <a href="teachingKits.aspx">back</a></p></span></td>
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
