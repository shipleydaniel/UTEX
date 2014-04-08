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
page = "Living Algal Strains"
%>
<LINK REL=STYLESHEET HREF="<%=webroot%>/includes/styleMain.css" TYPE="text/css">
<script language="javascript" src="<%=webroot%>/javascripts/menu.js"></script>

<style type="text/css">
.auto-style10 {
	margin-top: 0;
	margin-bottom: 0;
}
.auto-style12 {
	margin-top: 0;
	margin-bottom: 0;
	margin-left: 9px;
}
.auto-style14 {
	text-align: left;
}
.auto-style15 {
	text-decoration: underline;
}
</style>

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


  	</p>
  <p style="margin-top: 0; margin-bottom: 0">&nbsp;</p>
  <p style="margin-top: 0; margin-bottom: 0"><b>Preparation of Living Algal Strains</b><br></p>

	  <p class="auto-style10">

<img src="images/livingalgalstrain01.jpg" align=right vspace=10 hspace=20>

</p>
	  <p class="auto-style12">Aliquots of algal strains that are maintained on agar slants are transferred to the surface of fresh slants in 20 mm diameter glass screw-cap tubes in preparation for shipment. The fresh inocula are grown in a diurnal light cycle for at least 
  3 days until a macroscopically visible lawn appears. 
<br><br>
Approximately 15 mL aliquots of strains that are maintained as liquid cultures are transferred to screw-cap tubes on the day of shipment. Agar and liquid cultures for a customer are packaged within a Styrofoam&#153; box and shipped on the same day they are packaged. 
<br><br>
One tube of agar or liquid culture constitutes an order for a single culture of a single strain of living algae. UTEX makes no attempt to quantify the number of organisms or other characteristics of the culture. UTEX only guarantees the identity of the organism as specified in the strain history. 
<br><br></p>

<b><p class="auto-style10">Prefix labeling system</b><br></p>
	  <div class="auto-style14">
<p class="auto-style12">
LB = <strong><em>Xenic</em></strong> strain maintained in
<span class="auto-style15">liquid</span> medium<br>
B = <strong><em>Xenic</em></strong> strain maintained on an
<span class="auto-style15">agar</span> slant<br>
No prefix = <strong><em>Axenic</em></strong> strain, free of any contaminants, 
maintained on an <span class="auto-style15">agar</span> slant.<br><br></p>


<b>Culture Charges:</b></div>
	  <ul>
<li>One Culture: $100.00 USD</li>
<li>US academic and government: $50.00 USD</li>
<ul>
<li><i>*Use discount codes "us/acad" or "us/gov" to gain the subsidized rate.</i></ul>
	  </ul>
  <p>&nbsp;</p>
  <br>
<a href="http://utdirect.utexas.edu/txshop/list.WBX?component=0&amp;application_name=BSALGAEShttp://utdirect.utexas.edu/txshop/list.WBX?component=0&amp;application_name=BSALGAES" target="_blank"><img src="images/orderhere01.gif" border="0"></a>           </font></font>

   <b>
    
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

