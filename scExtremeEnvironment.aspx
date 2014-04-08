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
page = "Extreme Environment Collection"


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



     <font face="Arial" size="2"><span lang="en-us">
     <img border="0" src="images/friedman.gif" align="left" hspace="6" vspace="6" width="150" height="219"></span></font><p align="left" style="margin-top: 0; margin-bottom: 0">
     <font face="Arial" size="2"><span lang="en-us">
     Extreme Environment Algae are s</span>trains of terrestrial algae collected 
     from various extreme environments<span lang="en-us"> such as Antarctica and 
     the Gobi Desert. This collection</span> maintained by Dr. Imre Friedman<span lang="en-us">n</span>
     <span lang="en-us">has</span> been deposited in the Culture Collection of 
     Algae at The University of Texas. These strains have now been cryopreserved 
     and are maintained in indefinite storage under liquid nitrogen. Some of 
     them are well documented and their characteristics described; others have 
     only been identified to family. Information on the documented strains will 
     be added to this web site as time permits. </font><p align="left" style="margin-top: 0; margin-bottom: 0">&nbsp;<p class="MsoNormal" style="margin-top: 0; margin-bottom: 0" align="left">

    <font face="Arial" size="2">Upon request, a living culture of the requested 
    strain will be thawed and shipped in agar, <span lang="en-us">in the same 
    2-mL cryovial in</span> within which it was <span lang="en-us">cryo</span>preserved. The 
    identifying number of the requested strain should be prefixed with
    <span lang="en-us">&quot;</span>EE<span lang="en-us">&quot;</span>. The requested 
    culture may be ordered in the same way as other cultures are ordered.<span lang="en-us"> 
    Representative photos of EE 150 are displayed as thumbnails below. The extreme 
    environment algae collection was deposited in 2003 and formally accessioned into 
    UTEX February 2005.</span></font><span style="font-family: Arial"><font size="2"><br>
     <br><br><br>
     <table width="630">
	<tr><td align="center">
     <p class="MsoNormal">
     <span lang="en-us"><font size="1"><b><span style="font-family: Verdana">
     <a href="search.aspx?utexNumber=EE">View Extreme Environment Collection Listing</a></span></b></font></span><span style="font-family: Verdana"><b><font size="1"><span lang="en-us"><br>
     <p align=center>
     </span></font></b></span>
	</td></tr>
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
