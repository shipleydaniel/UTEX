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
page = "UT-STF Workshop: Industrial Recovery & Analysis of Biomass Oils"
%>
<LINK REL=STYLESHEET HREF="<%=webroot%>/includes/styleMain.css" TYPE="text/css">
<script language="javascript" src="<%=webroot%>/javascripts/menu.js"></script>
<STYLE TYPE="text/css">
<!--
.indented
   {
   padding-left: 10pt;
   }
.auto-style1 {
	margin-left: 10px;
	margin-top: 0;
	margin-bottom: 0;
}
-->
</STYLE>

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
  <td width = 810 colspan = 1>
  <p style="margin-top: 0; margin-bottom: 0"><br>

   <font=green><font size="2" face="Arial"><b>The UT Science and 
  Technology Facility (UT-STF) offers&nbsp; 2-day processing and analytical 
  workshops that are designed to follow the UTEX Managing Microalgal Cultures 
  Workshop, or function as a stand-alone course.&nbsp; The workshop is intended 
  to enhance the knowledge of participants who are familiar with algal 
  growth systems, harvesting and processing technologies, and basic analytical techniques.</b></font></p>
  <p style="margin-top: 0; margin-bottom: 0">&nbsp;</p>
  <p style="margin-top: 0; margin-bottom: 0"><b><font face="Arial" size="2">
   Day 1 of the workshop 
  features a tour of the UT-STF facility located at the Center for Electromechanics followed by presentations detailing current processing 
  technologies including algal concentration, liberation of algal lipids, and 
  the recovery of lipids and other high-value natural products.&nbsp; Day 2 will 
  focus on popular and cutting edge lipid analysis techniques, including 
  UV-visible spectrophotometry, thin layer chromatography (TLC), gas 
  chromatography (GC), and high performance liquid chromatography (HPLC).&nbsp; 
  Attendees will also learn how to prepare lipid extracts and conduct detailed 
  analyses.</font></b></p>
  <p style="margin-top: 0; margin-bottom: 0">&nbsp;</p>
  <p style="margin-top: 0; margin-bottom: 0"><font=green><font size="2" face="Arial">
  <strong>A certificate of participation will be sent via email to each 
  participant, and workshop presentations will be provided electronically.</strong></font><p style="margin-top: 0; margin-bottom: 0">
  &nbsp;<font=green><p style="margin-top: 0; margin-bottom: 0">
  <font size="2" face="Arial">
  <br>
  <b>Location of workshops:</b><P CLASS="indented" style="margin-top: 0; margin-bottom: 0">
  UT Science and Technology Facility (UT-STF)</p>
  <P CLASS="indented" style="margin-top: 0; margin-bottom: 0">
  Center for Electromechanics</p>
  <P CLASS="indented" style="margin-top: 0; margin-bottom: 0">
  10100 Burnet Rd. EME133</p>
  <P CLASS="indented" style="margin-top: 0; margin-bottom: 0">
  Austin, TX 78758</p>
  <p style="margin-top: 0; margin-bottom: 0">
  <br><br>
  <b>Dates of the next workshops:</b>


</p>


  <P CLASS="indented" style="margin-top: 0; margin-bottom: 0">TBA</p>
  <P CLASS="indented" style="margin-top: 0; margin-bottom: 0">&nbsp;</p>
  
  
    <p style="margin-top: 0; margin-bottom: 0">
   &nbsp;<p style="margin-top: 0; margin-bottom: 0">
   <b><br>
    Enrollment:
   </b><br></p><p class="auto-style1">
  <font size="2" face="Arial">
   Workshop fees are $600 per participant for a single workshop or $1200 per 
  participant for 
  the combined UTEX and UT-STF workshops.&nbsp; All workshop fees are due 
   at the time of registration. A $375 refund will be provided for cancellations 48 
  hours or more prior to the start of the workshop. 
   The enrollment of each workshop is restricted to 8 individuals.&nbsp; Participants are responsible for their own transportation and living expenses. UTEX personnel may be able to assist in 
  finding a conveniently located hotel.</font></P>
  <p style="line-height: 150%; margin-top: 0; margin-bottom: 1px">
  <b>
  <br><br>
   Instructors:<br>
   </b>Two or three trained phycologists will conduct each workshop. These include:
  </p>
  <p style="line-height: 150%; margin-top: 0; margin-bottom: 1px"> </P> 
  <p style="line-height: 150%; margin-top: 0; margin-bottom: 1px"> </P> 
  <p style="line-height: 150%; margin-top: 0; margin-bottom: 1px"> </p>
  <P CLASS="indented" style="line-height: 150%; margin-top: 1px; margin-bottom: 1px">
  Dr. Rhykka Connelly, Biochemist and Technical Director, UT-STF</P>
  <p style="line-height: 150%; margin-top: 1px; margin-bottom: 0"></p>
  <P CLASS="indented" style="line-height: 150%; margin-top: 1px; margin-bottom: 0">
  Dr. Schonna Manning, Phycologist and Natural Products Chemist, Culture Collection of Algae and UT-STF</P>
  <p style="line-height: 150%; margin-top: 1px; margin-bottom: 0"></p>
  <p style="line-height: 150%; margin-top: 1px; margin-bottom: 0"></p>
  <P CLASS="indented" style="line-height: 150%; margin-top: 1px; margin-bottom: 0">
  &nbsp;</P>
  </p>

  <p style="margin-top: 0; margin-bottom: 0">
   <font size="2" face="Arial"><b>Schedule:</b><br>

            </font>

            </b>
   A typical schedule is as follows:
  <p style="margin-top: 0; margin-bottom: 0">
   <br>
   <table width=600>
   <tr>
   <td align=right width="58">
   <p style="margin-top: 0; margin-bottom: 0"><b><font size="2">Wednesday</font></b></td>
   <td align=left>
   <p style="margin-top: 0; margin-bottom: 0"><b>&nbsp;<font size="2">&nbsp; 
    8:45 am - 4:45 pm</font></b></td></tr>
   <tr>
   <td align=right width="58"><font size="2">8:45</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Introduction and tour of the UT Science and Technology Facility</font></td></tr>
   <tr>
   <td align=right width="58"><font size="2">9:45</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Overview of dewatering/concentration techniques</font></td></tr>
   <tr>
   <td align=right width="58"><font size="2">10:15</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Overview of cellular rupturing and product liberation techniques</font></td></tr><tr>
   <td align=right width="58"><font size="2">10:45</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Overview of lipid recovery techniques</font></td></tr>
   <tr>
   <td align=right width="58"><font size="2">11:30</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Lunch</font></td></tr><tr>
   <td align=right width="58"><font size="2">12:30</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Mass balance tracking</font></td></tr>
   <tr>
   <td align=right width="58"><font size="2">1:00</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Biochemistry and natural products of microalgae</font></td></tr>
   <tr>
   <td align=right width="58"><font size="2">2:00</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Detection and measurement of oils and high-value compounds</font></td></tr>
   <tr>
   <td align=right width="58"><font size="2">3:30</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Break</font></td></tr>
   <tr>
   <td align=right width="58"><font size="2">3:45</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Questions and wrap up</font></td></tr>
   <tr>
   <td align=right width="58"><font size="2">4:45</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Activities conclude</font></td></tr>
   
   
   </table>
   <br>
   <table width=600>
   <tr>
   <td align=right width="59"><font size="2"><b>Thursday</b></font></td>
   <td align=left>&nbsp; <b><font size="2">&nbsp;8:45 am - 4:45 pm</font></b></td></tr>
   <tr>
   <td align=right width="59"><font size="2">8:45</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Breakfast</font></td></tr>
   <tr>
   <td align=right width="59"><font size="2">9:00</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Laboratory: Measuring algal biomass (WW, DW, AFDW, spectrophotometer)</font></td></tr>
   <tr>
   <td align=right width="59"><font size="2">10:00</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Laboratory: Extraction and conversion of algal oil (total lipids and FAME)</font></td></tr>
   <tr>
   <td align=right width="59"><font size="2">11:30</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Lunch 
   </font></td></tr>
   <tr>
   <td align=right width="59"><font size="2">12:30</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Laboratory: Chromatography and analysis of algal lipids (TLC, GC)</font></td></tr>
   <tr>
   <td align=right width="59"><font size="2">3:30</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Break </font></td></tr><tr>
   <td align=right width="59"><font size="2">3:45</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Questions and wrap up</font></td></tr>
   <tr>
   <td align=right width="59"><font size="2">4:45</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Workshop concludes</font></td></tr>
   </table>
  <p style="margin-top: 0; margin-bottom: 0">&nbsp;&nbsp;&nbsp; <b>
   <br><br>
   Contact information:</p>
  <P CLASS="indented" style="margin-top: 0; margin-bottom: 0">
	Those interested in participation may contact Nick Davis
	<a href="mailto:utalgae@uts.cc.utexas.edu">via e-mail</a> or phone (512-471-4019).</P>
   <p style="margin-top: 0; margin-bottom: 0">
   <br><br>
    Method of payment:</p>
   </b>
  <P CLASS="indented" style="margin-top: 0; margin-bottom: 0">
   <font size="2" face="Arial">
   No payment should be sent prior to confirmation from Nick Davis. Payments by credit card should be 
   made through the UTEX web site, using the secure 
   <a href="https://utdirect.utexas.edu/txshop/list.WBX?component=0&amp;application_name=BSALGAES&amp;cat_seq_chosen=06&amp;subcategory_seq_chosen=000" target="_blank">TX Shop 
   System</a>.</td>




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