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
webroot = "/Utex"
bgcolor="green"
fgcolor="white"
page = "Notes on Growth Media"


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
<table border="0" cellpadding="0" cellspacing="0" width="790"
bgcolor="#FFFFFF">
    <tr>
        <td valign="top" width="100%" bgcolor="#FFFFFF"><div align="center"><center><table border="0" cellpadding="0" cellspacing="0" width="790">
            <tr>
                <td width="900" colspan="2"><font size="2" face="Verdana"><font size="2" face="Verdana">Growth
                                media are prepared according to <a href="media.aspx">
                recipes</a>, put into
appropriate culture vessels and stored until needed. All culture vessels are glass and reusable. Before use, they are cleaned with detergent and rinsed thoroughly with hot and cold distilled water. Agar cultures are grown in 20 x 125 mm screw-capped test tubes containing 10 mL of medium. Axenic liquid cultures are grown in metal-capped 18 x 150 mm test tubes containing 20 mL of medium. Soilwater and soil-seawater cultures are grown in half-pint bottles (200 mL) fitted with glass covers from small petri dishes. Most macroalgae are grown in 100 mm diameter x 80 mm deep culture dishes. All other liquid cultures are grown in metal-capped 175 mL Erlenmeyer flasks.
<br><br>
After autoclaving, the prepared media are refrigerated. Tubed agar media are kept in the refrigerator unslanted, and are melted, slanted and cooled to room temperature on the day of use. Liquid media are warmed to room temperature one day before use. 
<br><br>
At the time cultures are sent to investigators, the name of the medium in which the culture is maintained is indicated on the culture tube label. It must be emphasized that the maintenance medium is not always the best medium for the cultivation of the alga. In order to reduce the number of different media required for the entire operation, and in some cases to decrease the time intervals between transfers, some cultures are maintained on media which are adequate, but not necessarily the best for growth. Investigators are urged to consult the available literature for alternative media if optimum growth is an important consideration in their research.



</font></p></td>
            </tr>
        </table>
        </center></div></td>
    </tr>

</table>


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
