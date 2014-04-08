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
page = "Ordering Media"


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
bgcolor="#FFFFFF" style="border-collapse: collapse" bordercolor="#111111">
    <tr>
        <td valign="top" width="100%"
bgcolor="#FFFFFF"><div align="center"><center>
          <table border="0"
cellpadding="0" cellspacing="0" width="790" style="border-collapse: collapse" bordercolor="#111111">
            <tr>
                <td width="900">
                        <font size="2" face="Verdana"> <b>Preparation of 
                        <span lang="en-us">Media</span> 
                        for Shipment</b><br>
                        <br>
                        </font>
                        <span lang="en-us">
                        <font size="2" face="Verdana"> Media are sterile and ready to use.&nbsp; 
                        Media may be purchased in the following volumes:<ul>

                        <li>
                        <p align="left">4 x 15 ml tubes of liquid culture media
                        <li>
                        <p align="left">4 x 10 ml agar culture media in 25 ml screw-cap tubes
                        <li>
                        <p align="left">1 liter of media</ul>
                          <p align="left">*For larger volumes please inquire </font>
                          </span><font face="Verdana"><br>
                        
                           </font>

                        
                        <b style="mso-bidi-font-weight:normal">
                           <font face="Verdana" size="2">Culture
                          <span lang="en-us">Media </span>Charges<o:p>
                        </o:p>
                        </font></b></p>
                          <p align="left"></p>
                        <p class="MsoNormal" style="text-indent: 0; margin-left: 0" align="left">
                         <font face="Verdana" size="2">The
                        standard charge for <span lang="en-us">four tubes of 
                         liquid or agar media are as follows:</span></font></p>

                          <ul>
                        <font size="2" face="Verdana"> 
                        <span lang="en-us">
                        <li>
                        <p align="left">Ordering with a living culture: US$10.00
                        <li>
                        <p align="left">Ordering culture media only: US$20.00<li>
                        <p align="left">Ordering 1 
                        liter of culture media with or without a living culture:&nbsp; 
                        US$55.00 (cost includes an extra shipping charge charge 
						to cover the added weight)</span></font></ul>

							<p class="MsoNormal" style="text-indent: 0; margin-left: 0" align="left">
                         <font face="Verdana" size="2">
                         </font><b style="mso-bidi-font-weight:normal">
                         <font face="Verdana" size="2"><br>
                         Shipping
                        and Handling Charges<o:p>
                        </o:p>
                        </font></b></p>

                          <p class="MsoNormal" style="text-indent: 0; margin-left: 0" align="left">
                           <font face="Verdana" size="2">In
                        addition to the cost <span lang="en-us">of </span>&nbsp;culture<span lang="en-us"> 
                           media</span>, there is a shipping/handling charge for
                           <span lang="en-us">some shipments.</span></font></p>
                        <p class="MsoNormal" style="text-indent: 0; margin-left: 0" align="left">
                         <font face="Verdana" size="2">Tubes of culture media 
                         ordered in combination with a living culture will be 
                         shipped together with no additional shipping charge. 
                         </font></p>
                        <p class="MsoNormal" style="text-indent: 0; margin-left: 0" align="left">

                         <font face="Verdana" size="2">Culture media ordered 
                         independently of a living culture within the 
                         continental U.S. will be charged $10.00 per order for 
                         FedEx Ground or UPS Ground.</font></p>
                        <p class="MsoNormal" style="text-indent: 0; margin-left: 0" align="left">
                         <font face="Verdana" size="2">Culture media ordered 
                         independently of a living culture outside the 
                         continental U.S. are charged the actual shipping rate 
                         plus a US$5.00 handling fee.</font></p>
<table width="630">
 <tr><td align="center">
                         <font face="Verdana" size="2"><p align=center>
                           <a href="orderingAbout.aspx" style="text-decoration: none">
                           Back to About Ordering</span></a></font></p>
</td></tr>
</table>
                </td>

            </tr>
            <tr>
                <td width="900">&nbsp;
                          </td>
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
