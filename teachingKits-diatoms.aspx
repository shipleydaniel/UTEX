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
page = "Teaching Kits: Diatoms & Symmetry"


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

  <img border="0" src="http://web.biosci.utexas.edu/utex/images/teachingkits/diatoms-2.jpg" align="right" vspace="6" hspace="6" width="184" height="184"><img border="0" src="http://web.biosci.utexas.edu/utex/images/teachingkits/diatoms-1.jpg" align="right" vspace="6" hspace="6" width="184" height="184">
  <p>Diatoms are marine organisms with an ornate silica shell. This silica from ancient deposits of dead diatoms is useful in everyday life in products such as diatomaceous earth and toothpaste.</p>
  <p>Diatoms are traditionally divided into two broad catagories: 
  <b>centric</b> diatoms (Centrales), which are radially symmetric, and <b>pennate</b> diatoms (Pennales), 
  which are bilaterally symmetric. With this kit students can identify diatoms various shapes, including both symmetries.</p>
  
  <p>Each tube contains enough algae to prepare about 50 slides.</p>
  
  <p><i>Prices:</i><br>
<ul><li>Diatoms &amp; Symmetry Kit - $120<ul>
	<li>Includes:<ul>
		<li>Three (3) samples of centric diatoms:<i> Cylclotella</i>, <i>Thalassiosira</i>, 
  	  <i>Chaetoceros</i></li>
		<li>Three (3) samples of pennate diatoms:<i> Navicula, Nitzschia, 
		Phaeodactylum</i></li>
	</ul>
	</li>
	</ul>
	
		</ul>
  <p>&nbsp;</p>
  <ul>
	
		<p><a href="http://utdirect.utexas.edu/txshop/item_details.WBX?application_name=BSALGAES&amp;component=0&amp;dept_prefix=BS&amp;item_id=13&amp;cat_seq_chosen=05&amp;subcategory_seq_chosen=000http://utdirect.utexas.edu/txshop/item_details.WBX?application_name=BSALGAES&amp;component=0&amp;dept_prefix=BS&amp;item_id=13&amp;cat_seq_chosen=05&amp;subcategory_seq_chosen=000" target="_blank">
		<img src="images/orderhere01.gif" border="0"></a></p><br>
		<p align=center><a href="teachingKits.aspx">back</a></p>
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
