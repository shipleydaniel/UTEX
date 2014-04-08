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
page = "Abbreviations Used in UTEX Online Catalog"


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
  <td>
  <img src="http://web.biosci.utexas.edu/utex/images\spacer.gif" height='0' width='10'> </td>
  <td width = 810 colspan = 1><br>


<!--------------------BEGIN MAIN CONTENT-------------------------->

  <br>
  •

  PREFIXES OF ACCESSION NUMBERS:&nbsp;
  Unless otherwise noted, cultures are presumed to be axenic and growing on agar slants. However, approximately one-half of the cultures are maintained in liquid media, and each of these is indicated by a prefix of "L" before its accession number. A prefix of "B" indicates the culture is xenic but unialgal, i.e., nonalgal contaminants may be present. Please note that these describe the culture as it is provided by UTEX, and one should not interpret them as optional offerings.<br>
  <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span><b>L</b> = liquid<br>
  <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span><b>B</b> = xenic<br>
  <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span><b>EE</b> = Extreme Environment<br>
  <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span><b>SP</b> = Salt Plains<br>
  <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>
  SNO</b> = Snow<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>FD</b> = Freshwater 
  Diatom</span><br>
  <br>
  •
  TYPE CULTURE:&nbsp; Tags a culture derived from material used in preparing the original description of a species, a.k.a. "authentic strain" of CCAP (Thompson et al. 1988) and ATCC (Gherna et al. 1985, Daggett & Nerad 1985), "type material" of SAG (Schlösser 1982, 1984, 1986) and "type strain" of PCC (Rippka & Herdman 1992).<br>
  <br>
  •
  Strains and their names at other times and places:<br>
  <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span><b>a.k.a.</b> = also known as<br>
  <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span><b>aka-nym</b> = other names that current strains are "also known as"<br>
  <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span><b>[dec.]</b> = deceased or discontinued culture<br>
  <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span><b>[sic]</b> = incorrect information<br>
  <br>
  •
  RELATIVES<span lang="en-us">:</span> This label identifies subcultures, subisolates and clones of UTEX cultures that are or were also maintained in other collections. In the UTEX list, the related culture is identified using an abbreviation of the collection name and its accession number. See reference literature for the name and location of other culture collections. 
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
