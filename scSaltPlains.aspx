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
page = "Salt Plains Collection"


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


     <p align="left" style="margin-top: 0; margin-bottom: 0">
     <font face="Arial" size="2">The Salt Plains National Wildlife Refuge in 
     northwest Oklahoma, USA is a moist soil habitat characterized by highly 
     fluctuating salinity (ranging from freshwater to NaCl saturation) and 
     temperature extremes (sometimes exceeding 50<sup>o</sup>C). A broad range 
     of halotolerant soil algae occur in this habitat, sometimes within 
     microbial mats or in shallow pools. Additional information can be obtained 
     at
     <a target="_top" href="http://www.okstate.edu/artsci/SPMO">www.okstate.edu/artsci/SPMO</a>.</font><p class="MsoNormal">
     <font face="Arial" size="2">A diverse range of &nbsp;Chlorophyceae, 
     Bacillariophyceae and Cyanophyceae have been isolated and provided 
     tentative identification by Dr. Andrea Kirkwood, and representative strains 
     have been deposited in UTEX by Dr. William Henley. These strains have now 
     been cryopreserved and are maintained at UTEX in indefinite storage under 
     liquid nitrogen. An additional strain (UTEX 2795 <i>Picochlorum 
     oklahomensis</i>) is maintained under serial culture. </font></p>
    <p class="MsoNormal"><font face="Arial" size="2">Upon request, a living 
     culture of the requested strain will be thawed and shipped in agar, in the 
     <span lang="en-us">same 2-mL cryovial in</span> which it was cryopreserved. The identifying number of the 
     requested strain should be prefixed with &quot;SP&quot;. The requested culture may be 
     ordered in the same way as other cultures are ordered.&nbsp; The SPMO algae 
     collection was deposited in March 2005 and formally accessioned into UTEX 
     in July 2005.</font></p>


     <table width="630">
	<tr><td align="center">
     <p class="MsoNormal">
     <span lang="en-us"><font size="1"><b><span style="font-family: Verdana">
     <a href="search.aspx?utexNumber=SP">View Salt Plains Collection Listing</a></span></b></font></span><span style="font-family: Verdana"><b><font size="1"><span lang="en-us"><br>
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
