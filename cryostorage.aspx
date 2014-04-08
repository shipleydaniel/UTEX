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
page = "Cryogenic Storage"
%>
<LINK REL=STYLESHEET HREF="<%=webroot%>/includes/styleMain.css" TYPE="text/css">
<script language="javascript" src="<%=webroot%>/javascripts/menu.js"></script>

<style type="text/css">
.auto-style1 {
	margin-left: 9px;
}
.auto-style4 {
	margin-left: 25px;
	margin-top: 0px;
}
.auto-style5 {
	margin-left: 9px;
	margin-top: 0px;
}
.auto-style6 {
	margin-top: 0;
	margin-bottom: 0;
}
.auto-style7 {
	margin-left: 9px;
	margin-top: 0;
	margin-bottom: 0;
}
</style>

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

<b>Procedures and costs for the proprietary deposition and maintenance of cyropreserved strains at UTEX</b>
  <br>
<br>

<p class="auto-style7">Cryopreservation provides a secure backup for all strains of algae in the UTEX collection that survive the freezing and thawing process. Cryopreservation stabilizes genomic integrity, preserves culture quality, minimizes maintenance costs and reduces the risk of catastrophic loss.
<br><br>

Strains can be deposited with UTEX and maintained as cryopreserved cultures available exclusively to the depositor. A single
strain deposited for cryopreservation will be frozen by one or more protocols to determine if it can be cryopreserved by a
standard procedure established at UTEX. Ten 2-ml cryovials of each successfully cryopreserved strain will be prepared. After
at least one day of cryopreservation, the contents of one cryovial will be thawed, allowed to grow in culture medium, and
subsequently sent to the depositor by the fastest method available. Upon arrival, samples should be inspected by the depositor
to insure that culture quality has been maintained. An acknowledgement by the recipient of a successful shipment will indicate
that the strain has been successfully cryopreserved. The remaining 9 samples will then be retained by UTEX for the exclusive use
of the depositor.</p>
  <p class="auto-style7">&nbsp;</p>
  
  <b>Charges for this service are as follows:</b>
    <ul class="auto-style4">
	  <li>
	  Cryopreservation of a single strain as described above:   $450 USD
<br>
<i>&nbsp;&nbsp;&nbsp;&nbsp; If cryopreservation is not successful, then $225 will be refunded.</i></li>
	  <Br>

	 <li>
Cryopreservation of 2 - 6 strains at the same time:     $350 USD per strain
<br>
<i>&nbsp;&nbsp;&nbsp;&nbsp; $175 will be refunded for each strain for which the process fails.</i></li>
<br>
<li>
Cryopreservation of seven or more strains at the same time:  $250 USD per strain
<br>
<i>&nbsp;&nbsp;&nbsp;&nbsp; $125 will be refunded for each strain for which the process fails.</i></li>
</ul>
<p class="auto-style1">Full payment will be due prior to initiation of the cryopreservation procedure. UTEX will complete cryopreservation tests and send a thawed culture of each cryopreserved strain to the depositor within 6 weeks of the time that is required for strain receipt and adequate growth of the culture for cryopreservation. Refunds will be sent within that same time frame.
<br><br>

Strains that have been successfully cryopreserved and stored for a depositor will be maintained for one full year without any additional charge.</p>
  <b>One or more cultures of a cryopreserved strain will be thawed and sent to the depositor upon request. 
Thawing, culturing and shipping to sites in North America will be charged as follows:</b>
<ul class="auto-style4">
        <li>One (1) culture of one strain: $175.</li>
        <li>One (1) culture each of 2 - 6 strains (when all are thawed and shipped at the same time): 
        $125 for each strain.</li>
        <li>One (1) culture each of 7 or more strains (when all are thawed and shipped at the same
         time): $100 for each strain.</li>

</ul>
<p class="auto-style1">Charges for depositors outside of North America may be slightly higher, depending on shipping charges.
<br><br>

Strain storage fee per year (charged after the first year):  $150
<br><br>
Alternatively, a cryostorage box accommodates up to 9 strains. <br>Charge for an entire box is $950 per year.
<br><br>
Cryopreservation fees are accessed annually. Strains will be discarded if payment is not received within one month of
the payment due date.
<br><br>

Once 8 of the 9 stored cultures have been withdrawn and shipped to the depositor, it will be necessary to redeposit the strain. The charge for this service (using the remaining cryopresrved culture) is $400. 
</p><b><p class="auto-style6">Contact information:</p></b>
  <p class="auto-style5">Those interested in cryogenic storage may contact the UTEX Curator, <a href="mailto:dnobles@mail.utexas.edu">Dr. David Nobles</a></b></font></font>.</td>




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
