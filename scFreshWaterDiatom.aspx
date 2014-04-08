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
page = "Fresh Water Diatom Collection"


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

      David B. Czarnecki began collecting and studying freshwater diatoms as a 
      graduate student. His collection moved with him to Loras 
      College in 1984, where it was named and recognized universally among 
      freshwater diatomists as the Loras College Freshwater Diatom Culture 
      Collection. The Collection was maintained through grants to Loras College 
      from the Iowa Science Foundation and the Iowa College Foundation. In 
      February 2006 Dr. Czarnecki requested that The Loras College Freshwater 
      Diatom Collection be transferred from Loras College to UTEX. Loras College 
      subsequently donated the entire collection to UTEX as a gift.<br>
      <br>
      Dr. Czarnecki died in May 2006. Strains from his collection that are 
      maintained at UTEX will continue to be listed as the Loras College 
      Freshwater Diatom Culture Collection in memory of Dave Czarnecki’s service 
      to the community of freshwater diatomists.<br>
      <br>
      When ordering a strain from this collection, the identifying number should 
      be prefixed with &quot;FD&quot;. A culture of the requested strain may be ordered in 
      the same way as are other cultures. Please note when 
		placing an order for these diatoms it may take up to 3 weeks before 
		shipment of the order. The FD algae collection was deposited 
      with UTEX in April 2006 and formally accessioned in October 2006.<br>
  <br>
  Published works about this collection can be found at:<ul>
  <li>Czarnecki, D.B. 1987. The freshwater diatom culture collection at Loras College. 
  <i>Notulae Naturae Philosophical Academy of Natural Science</i>. 465: 1–16.</li>
  <li>Czarnecki, D.B. 1994. The freshwater diatom culture collection at Loras College, Dubuque, IA. In Kociolek, J. P. [Ed.] 
  <i>Proceedings of the XI International Diatom Symposium, San Francisco</i>. Memoirs of the California Academy of Science, San Francisco, CA, USA, No. 17: 155–73.</li>
  <li>Czarnecki, D.B. & Ross, M.J. 1988. The Itasca State Park Algal Culture Collection at Loras College. 
  <i>Journal of Minnesota Academy of Science</i> 53: 27–32.</li></ul>
      <font color="#FF9900">
      <b>We will be adding to this list of available cultures 
      throughout the year as we revive more diatoms. Please check back often.</b></font><p align=center>
     <a href="search.aspx?utexNumber=FD">View Fresh Water Diatom Collection Listing</a></p></td>
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
