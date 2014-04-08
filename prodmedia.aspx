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
bgcolor="white"
fgcolor="green"
page = "Media"
%>
<LINK REL=STYLESHEET HREF="<%=webroot%>/includes/styleMain.css" TYPE="text/css">
<script language="javascript" src="<%=webroot%>/javascripts/menu.js"></script>

</head>

<body>

<table align="center" border ="0" cellspacing="0" cellpadding="0" width="960" height="84%" class="normal">

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
  <td width = 810 colspan = 1>
  <p style="margin-top: 0; margin-bottom: 0"><br>


<b>Preparation of Media for Shipment</b><br><br>
<img src="images/media01.jpg" align=right vspace=10 hspace=20>

All media in the UTEX <a href="media.aspx">Media List</a> is available for purchase. Please note that the 
   maintenance media used by UTEX have been optimized for long term culture 
   maintenance and in most cases are not optimal for rapid growth.<p style="margin-top: 0; margin-bottom: 0">&nbsp;<p style="margin-top: 0; margin-bottom: 0">
  The purchase of standard quality maintenance media from UTEX provides the 
  opportunity to create and maintain reliable back-ups of UTEX cultures.&nbsp; 
  UTEX only sells complete media at 1x concentration. Stock solutions and 
  individual components are currently not available for purchase.
<br><br>

<b>Media Charges:</b><ul>
<li>Set of 4- agar or liquid tubes of media: $10.00 USD</li>
<li>1 Liter of Media: $55.00 USD</li>
</ul>

<i>*For larger volumes, please inquire.</i>
<br><br>  
<a href="http://utdirect.utexas.edu/txshop/list.WBX?component=0&amp;application_name=BSALGAEShttp://utdirect.utexas.edu/txshop/list.WBX?component=0&amp;application_name=BSALGAES" target="_blank"><img src="images/orderhere01.gif" border="0"></a>

        </td>




<td width="50"></td>
</tr>
</table> 
</center>


            </tr>
        </table>






<!--------------------END MAIN CONTENT-------------------------->

  </td>
</tr>


<tr align="center">
  <td colspan = 3>
	<hr width=960 size=2>
<!--#include virtual="includes/footer.html"-->
  </td>
</tr>


</table>	
