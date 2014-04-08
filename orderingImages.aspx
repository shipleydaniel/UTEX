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
page = "Ordering Images"


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


<table border="0" cellpadding="0" cellspacing="0" width="600"
bgcolor="#FFFFFF" style="border-collapse: collapse" bordercolor="#111111">
    <tr>
        <td valign="top" width="100%"
bgcolor="#FFFFFF"><div align="center"><center>
          <table border="0"
cellpadding="0" cellspacing="0" width="790" style="border-collapse: collapse" bordercolor="#111111">
            <tr>
                <td width="900">
                <font face="Verdana" size="2">Images from the UTEX web site are now available for
                purchase.<span style="mso-spacerun: yes">&nbsp; </span>High
                resolution images will be provided on CD-ROM in TIFF or JPEG
                formats.<span style="mso-spacerun: yes">&nbsp; </span>For more
                information about the resolution of a specific image please
                email 
                 <a href="mailto:utalgae@uts.cc.utexas.edu" style="text-decoration: none">UTEX</a>.<br>
                <br>
                Cost is $50 for one image or $40 each for more than one image.<span style="mso-spacerun: yes">&nbsp;
                </span>Special requests for images that are not on the UTEX web
                site are $70 each.<span style="mso-spacerun: yes">&nbsp; </span>Orders
                will be shipped by First Class Mail at no further cost or by
                FedEx for an additional charge of $15 within the U.S. or at
                actual FedEx shipping rate outside of the U.S.<span style="mso-spacerun: yes">&nbsp;

                </span>Orders must be received by Wednesday afternoon for
                shipment the following Monday.<span style="mso-spacerun: yes">&nbsp;
                </span>Orders may be placed using the 
                 <a href="orderingAbout.aspx" style="text-decoration: none">order
                form</a> for algal cultures on this web site or by calling
                         <span lang="en-us">(</span>512<span lang="en-us">)
                         </span>471-4019.<br>
                <br>
                <span style="mso-fareast-font-family: Times New Roman; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">Note:<span style="mso-spacerun: yes">&nbsp;

                </span>Images remain the property of The University of Texas and
                can only be used by permission.&nbsp; Any use of the images must
                credit UTEX -- The Culture Collection of Algae at The University
                of Texas at Austin as the source of the images.<span style="mso-spacerun: yes">&nbsp;
                </span>Images may not be sold to another party.</span></font>

<table width="630">
 <tr><td>
				<font face="Verdana" size="2"><p align=center>
                           <a href="orderingAbout.aspx" style="text-decoration: none">
                           Back to About Ordering</span></a></p></font>

</td></tr>
</table>


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
