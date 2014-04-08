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
page = "How to Search"


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

Culture Search features:<br>
<table border="1">
<tr>
  <td><b>Search type</b></td>
  <td><b>Search symbol</b></td>
  </tr>
<tr>
  <td>and</td>
  <td>+</td>
  </tr>
<tr>
  <td>or</td>
  <td>space bar</td>
  </tr>
</table><br>

Search results will contain complete and partial words. The more specific your request the fewer search results.<br><br>
Examples:<br>
•	All of the following will match <i>Aphanothece</i><br>
aph<br>
anot<br>
thece<br>
<br>

•	searching for the text <font color = "dark green">"text the"</font> will find <font color = "green"><i>Chlorella proto<b>the</b>coides</i></font> and <font color = "green"><i>Enteromorpha in<b>test</b>inalis</i></font> 
<br><br>
•	searching for the text <font color = "dark green">"to+fra"</font> will <b>not</b> find <font color = "red"><i>Ba<b>to</b>phora oerstedi</i></font> or <font color = "red"><i>Dictyochloris <b>fra</b>grans</i></font> but it <b>will</b> find <font color = "green"><i><b>Fra</b>gilaria cro<b>to</b>nensis</i></font>



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
