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
page = "Snow Algae Collection"


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

The culture collection of snow algae maintained by Dr. Ron Hoham at Colgate University has been deposited in the Culture Collection of Algae at the University of  Texas at Austin. The strains in this collection have all been isolated from snow and have been maintained at temperatures below 6° C since their isolation. This collection includes isolates from eastern and western North America collected over a 35-year time period, and also includes isolates from Antarctica. Multiple isolates of the same taxon are maintained to permit research at the population level.
<br><br>
Most of the algae in this collection are members of Chlorophyta, but several strains are yellow-green algae (Xanthophyceae) and a few are golden algae (Chrysophyceae). Nearly all strains in the collection have been cryopreserved and in the future will be maintained at UTEX only at liquid nitrogen temperature.
<br><br>
Upon request, a living culture of the requested strain will be thawed and shipped in agar, in the same 2-ml cryovial in which it was cryopreserved. These strains will survive transport at room temperature and that is the most reliable way to ship, but there is concern from the depositor that allowing them to warm during shipment may select for genotypes that are not as cold-adapted. Cultures will be shipped at room temperature unless an ice pack is requested by the customer.
<br><br>
When ordering a strain from this collection, the identifying number should be prefixed with "SNO". A culture of the requested strain may be ordered in the same way as are other cultures. The SNO algae collection was deposited with UTEX in December 2005 and formally accessioned in July 2006.
     <table width="630">
	<tr><td align="center">
     <p class="MsoNormal">
     <span lang="en-us"><font size="1"><b><span style="font-family: Verdana">
     <a href="search.aspx?utexNumber=SNO">View Snow Collection Listing</a></span></b></font></span><span style="font-family: Verdana"><b><font size="1"><span lang="en-us"><br>
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
