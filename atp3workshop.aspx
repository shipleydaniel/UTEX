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
page = "ATP<sup>3</sup> Workshop"
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
	margin-left: 122px;
}
.auto-style25 {
	padding-left: 10pt;
	margin-top: 0;
	margin-bottom: 0;
}
.auto-style26 {
	margin-bottom: 10px;
}
.auto-style27 {
	background-color: #FFFF00;
}
.auto-style28 {
	background-color: #FFFFFF;
}
-->
</STYLE>
<script src="javascripts/jquery-1.7.2.min.js"></script>
<script src="javascripts/lightbox.js"></script>
<link href="includes/lightbox.css" rel="stylesheet" />

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
  <a href="images/atp3-default.jpg" rel="lightbox[ATP3]" title="From ATP<sup>3</sup> Spring 2013: Principles and Processes Workshop held at AzCATI on the ASU Polytechnic Campus in Mesa, AZ"><div style="width:254px;float:right;font-size: 80%; text-align: center; margin-bottom:10px;"><img src="images/atp3-default.jpg" alt="May Workshop" width=254 height=250 style="color: #008000;margin-left:15px;" border=3 />Click here for additional images.</div></a>
  <a href="images/atp3-2.jpg" rel="lightbox[ATP3]" title="From ATP<sup>3</sup> Spring 2013: Principles and Processes Workshop held at AzCATI on the ASU Polytechnic Campus in Mesa, AZ"></a>
  <a href="images/atp3-3.jpg" rel="lightbox[ATP3]" title="From ATP<sup>3</sup> Spring 2013: Principles and Processes Workshop held at AzCATI on the ASU Polytechnic Campus in Mesa, AZ"></a>
  <a href="images/atp3-4.jpg" rel="lightbox[ATP3]" title="From ATP<sup>3</sup> Spring 2013: Principles and Processes Workshop held at AzCATI on the ASU Polytechnic Campus in Mesa, AZ"></a>
  <font size="2" face="Arial"><p style="margin-top: 0; margin-bottom: 0" align="justify"><br>	     
  
  The Arizona Center for Algae Technology and Innovation <strong>(AzCATI)</strong> at the Arizona State University and the 
  UTEX Culture Collection of Algae<strong> (UTEX)</strong> at the University of Texas at Austin, through the D.O.E.-sponsored Algae Testbed Public-Private-Partnership 
  <strong>(ATP<sup>3</sup>)</strong>, offer comprehensive workshops on the cultivation of microalgae, strain selection, pilot-scale cultivation, harvesting and processing, and analysis of valuable oils and co-products.   </p>
  
  <p align="justify">The next ATP<sup>3</sup> workshop, "<strong>Routine 
  Measurement and Biochemical Analysis of Microalgal Cultures</strong>," will take place the week of 
  <strong>February 24-28, 201</strong>4 at <b>Arizona State University's Polytechnic Campus 
  in Mesa, AZ</b>. This laboratory-intensive workshop was designed to provide an introduction to the observation and measurement of microalgal cultures and common analytical methods for the evaluation of biomass content.  </p>
  <p align="justify">This workshop is ideal for those interested in obtaining an overview in biochemistry, routine laboratory procedures, and data analysis.  Field training will include handling and collecting cultures from ponds and photobioreactors.  Participants will have ample opportunities to work in the laboratory and learn how to measure culture density (cell counting and optical density), light and fluorescence microcopy, gravimetric analyses (wet weight, dry weight, ash-free dry weight, ash and moisture content), and techniques for extracting and analyzing biomass compounds, including bulk proteins, starch, carbohydrates and lipids.</p>
  <p align="justify">Participants are encouraged to ask questions, share information with the 
  group, and network. &nbsp;Printed and electronic materials will be provided, and a 
  certificate of completion will be received at the conclusion of the workshop. 
  &nbsp;Workshop enrollment is limited to 15 participants and will be filled on a 
  first-come basis. </p>

  <p style="margin-bottom: 0"><br><b>Location of next workshop:</b></p><P CLASS="indented" style="margin-top: 0; margin-bottom: 0"><img alt="" height="122" src="images/atp3DOElogos.jpg" width="169" style="float:right;margin-right:50px;">AzCATI </p>
  <P CLASS="indented" style="margin-top: 0; margin-bottom: 0">
  Arizona State University (ASU) Polytechnic Campus</p>
  <P CLASS="indented" style="margin-top: 0; margin-bottom: 0">
   7418 E Innovation Way South
  <font size="2" face="Arial">
   </font><P CLASS="indented" style="margin-top: 0; margin-bottom: 0">
  ISTB-3 Room 103</p>
  <P CLASS="indented" style="margin-top: 0; margin-bottom: 0">
  Mesa, AZ 85212</p> <a href="https://mapsengine.google.com/map/edit?mid=z31bgayO3Cno.kTvdkjo-qdqI" target="_blank"><img src="images/map.jpg" alt="Google Maps-UT Austin" width="54" height="32.4" style="float:lef;margin-top:3; margin-bottom:3; margin-left:9"/></a><br>
  <p style="margin-bottom: 0">
  
  <b>Date of the next workshop:</b>
</p>


  <P CLASS="indented" style="margin-top: 0; margin-bottom: 0">
  February 24 - 28, 2014</p><br>
  
  
    
    <p style="margin-bottom: 0">
   <b>
    Enrollment:</b></p><P CLASS="indented" style="margin-top: 0; margin-bottom: 0" align="justify">

  
  Cost of the workshop is $1600 (includes training, materials, and 3 
  lunches). ATP<sup>3</sup>'s 
  policy is to refund 75% of the workshop cost if cancellations are made one 
  week prior to the start of the workshop. Alternatively you may request that an alternate 
  person attend in your place. Please email <a href="mailto:info@atp3.org">info@atp3.org</a> to 
  cancel or request that a different individual attend in your place.
  Enrollment is limited to 15 participants filled on a 
  first-come basis upon receipt of payment.<span class="auto-style28"> Visit the
  </span> 
  <a href="https://www.regonline.com/measurementandbiochemicalanalysis">
  <span class="auto-style28">ATP</span><sup><span class="auto-style28">3</span></sup><span class="auto-style28"> 
  Workshop Registration</span></a><span class="auto-style28"> page to register.</span></P><br>
  <p style="margin-bottom: 0">
   <b>
    Accommodations:</b></p><P CLASS="indented" style="margin-top: 0; margin-bottom: 0" align="justify">
	<span class="auto-style28">The Hyatt Place in Gilbert, AZ is offering a discounted group rate of $119 
	per night + tax.&nbsp; Reservations must be made by February 17, 2014 to 
	secure the group rate.&nbsp; The Hyatt Place in Gilbert, AZ has a free hotel 
	shuttle that can take you from the hotel to the workshop location.&nbsp; 
	Shuttle arrangements must be made with the hotel concierge at least 1 day in 
	advance. Please allow at least 30 minutes for your ride.&nbsp;
  </span>
  <font size="2" face="Arial">
	<a href="http://www.gilbert.place.hyatt.com/en/hotel/home.html?corp_id=86610">
	<span class="auto-style28">Book online</span></a><span class="auto-style28"> or call (888) 867-4009.&nbsp; Be sure 
	to mention the "</span><span class="auto-style27"><strong><span class="auto-style28">ATP</span></strong></span><sup><span class="auto-style27"><strong><span class="auto-style28">3</span></strong></span></sup><span class="auto-style27"><strong><span class="auto-style28"> 
	February</span></strong></span><span class="auto-style28">&quot; rate if booking by phone.&nbsp;</span></font></P>
  <br>
  <p style="line-height: 150%; margin-bottom: 0">
  <b>Principal Instructors:</b></p>
   <P style="margin-top: 0" class="auto-style26">
Workshops are conducted by trained experts. These include:</p>
 
  <P CLASS="auto-style25">Dr. Jerry Brand, University of Texas at Austin, UTEX</P>
  <P CLASS="auto-style25">Dr.
  Milton Sommerfeld, Arizona State University, AzCATI</P>
  <P CLASS="auto-style25">Dr.
  Tom Dempster, 
  Arizona State University, AzCATI</P>
  <P CLASS="auto-style25">Dr. Schonna Manning, University of Texas at Austin, 
  UTEX</P><br>

  <p style="margin-bottom: 0">
   <b>Tentative Schedule:</b></p>
            
   <P CLASS="indented" style="margin-top: 0">
The schedule may vary slightly among workshops, depending on participant interest. A typical schedule is as follows:</p>
  
   <table width=600 class="auto-style1" align="center" cellspacing="1">
   <tr>
   <td align=right style="width: 58px">
   <p style="margin-top: 0; margin-bottom: 0"><b><font size="2">Day 1</font></b></td>
   <td align=left>
   <p style="margin-top: 0; margin-bottom: 0"><b>&nbsp;<font size="2">&nbsp; 
    1:00 pm - 5:00 pm</font></b></td></tr>
   <tr>
   <td align=right style="width: 58px; height: 21px;">
   <p style="margin-top: 0; margin-bottom: 0"></p>
	   </td>
   <td align=left style="height: 21px">
   <p style="margin-top: 0; margin-bottom: 0"><font size="2">&nbsp;&nbsp; Welcome to the ATP<sup>3</sup>, AzCATI and UTEX
   </p>
   <tr>
   <td align=right style="width: 58px; height: 22px;">
   <p style="margin-top: 0; margin-bottom: 0"></p>
	   </td>
   <td align=left style="height: 22px">
   <p style="margin-top: 0; margin-bottom: 0"><font size="2">&nbsp;&nbsp; Tour of AzCATI</font></p>
	   </td></tr>
   <tr>
   <td align=right style="width: 58px">
   <p style="margin-top: 0; margin-bottom: 0"></p>
	   </td>
   <td align=left>
   <p style="margin-top: 0; margin-bottom: 0"><font size="2">&nbsp;&nbsp; Practical Applications: Products and Remediation</font></p>
	   </td></tr><tr>
   <td align=right style="width: 58px; height: 22px;">
   <p style="margin-top: 0; margin-bottom: 0"></p>
		   </td>
   <td align=left style="height: 22px">
   <p style="margin-top: 0; margin-bottom: 0"><font size="2">&nbsp;&nbsp; Lab 
   Activities:</font></p>
		   </td></tr>
   	<tr>
   <td align=right style="width: 58px; height: 22px;">
   &nbsp;</td>
   <td align=left style="height: 22px">
   &nbsp;&nbsp;&nbsp;&nbsp;<font size="2">&nbsp; - 
   Light microscopy&nbsp;</td></tr>
   	<tr>
   <td align=right style="width: 58px; height: 22px;">
   &nbsp;</td>
   <td align=left style="height: 22px">
   &nbsp;</td></tr>
   <tr>
   <td align=right style="width: 58px">
   <p style="margin-top: 0; margin-bottom: 0"><font size="2"><strong>Day 2</strong>
   </p>
   <td align=left>
   <p style="margin-top: 0; margin-bottom: 0"><font size="2"><strong>&nbsp;&nbsp; 8:00 am - 5:00 pm</strong></font></p>
	   </td><tr>
   <td align=right style="height: 20px; width: 58px;">
   <p style="margin-top: 0; margin-bottom: 0"></p>
		   </td>
   <td align=left style="height: 20px">
   <p style="margin-top: 0; margin-bottom: 0"><font size="2">&nbsp;&nbsp; Culture Monitoring Techniques</font></p>
		   </td></tr>
   <tr>
   <td align=right style="width: 58px">
   <p style="margin-top: 0; margin-bottom: 0"></p>
	   </td>
   <td align=left>
   <p style="margin-top: 0; margin-bottom: 0"><font size="2">&nbsp;&nbsp; 
   Measuring Culture Density</font></p>
	   </td></tr>
   <tr>
   <td align=right style="width: 58px">
   &nbsp;</td>
   <td align=left><font size="2">
   &nbsp; &nbsp;Lab 
   Activities:</td></tr>
   <tr>
   <td align=right style="width: 58px">
   &nbsp;</td>
   <td align=left>
  <font size="2" face="Arial">&nbsp;&nbsp;&nbsp;<font size="2">&nbsp;&nbsp;&nbsp; 
   - Field sampling from ponds and panels</td></tr>
   <tr>
   <td align=right style="width: 58px">
   &nbsp;</td>
   <td align=left>
  <font size="2" face="Arial">&nbsp;&nbsp;&nbsp;<font size="2">&nbsp;&nbsp;&nbsp; 
   - Wet weight (WW) and dry weight (DW) analysis</td></tr>
   <tr>
   <td align=right style="width: 58px">
   <p style="margin-top: 0; margin-bottom: 0"></p>
	   </td>
   <td align=left>
   <p style="margin-top: 0; margin-bottom: 0"><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - 
   Ash and moisture content of freeze-dried biomass</font></p>
	   </td></tr>
	   <tr>
  <font size="2" face="Arial">
   <td align=right style="width: 58px">
   <p style="margin-top: 0; margin-bottom: 0"></p>
		   </td>
   <td align=left>
   <p style="margin-top: 0; margin-bottom: 0"><font size="2">&nbsp;&nbsp; Lunch</font></p>
		   </td></font>
	   </tr>
	   <tr>
   <td align=right style="width: 58px">
   &nbsp;</td>
   <td align=left>
  <font size="2" face="Arial">&nbsp;&nbsp; <font size="2">Measuring Culture Growth Rates</font></font></td>
	   </tr>
	   <tr>
   <td align=right style="width: 58px">
   &nbsp;</td>
   <td align=left>
  <font size="2" face="Arial">&nbsp;&nbsp;&nbsp;Lab Activities:</font></td>
	   </tr>
	   <tr>
   <td align=right style="width: 58px">
   &nbsp;</td>
   <td align=left><font size="2" face="Arial">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Light and fluorescence microscopy 
   (BODIPY)</td>
	   </tr>
	   <tr>
   <td align=right style="width: 58px">
   &nbsp;</td>
   <td align=left><font size="2" face="Arial">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Cell counting using a hemocytometer</td>
	   </tr><td align=right style="width: 58px">
   &nbsp;</td>
   <td align=left><font size="2" face="Arial">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Measuring optical density (OD)</td>
	   </tr>
<td align=right style="width: 58px">
   &nbsp;</td>
   <td align=left><font size="2" face="Arial">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	   </tr>

	   <tr>
  <font size="2" face="Arial">
   <td align=right style="width: 58px">
   <p style="margin-top: 0; margin-bottom: 0"><font size="2"><strong>Day 3</strong>
   </p>
   <td align=left>
   <p style="margin-top: 0; margin-bottom: 0"><font size="2"><strong>&nbsp;&nbsp; 8:00 am - 5:00 pm</strong></font></p>
		   </td>
		   </font>
	   
	   <tr>
  <font size="2" face="Arial">
   <td align=right style="width: 58px">
   <p style="margin-top: 0; margin-bottom: 0"></p>
		   </td>
   <td align=left>
   <p style="margin-top: 0; margin-bottom: 0"><font size="2">&nbsp;&nbsp; 
   Biochemistry of Microalgae</font></p>
		   </td></font>
	   </tr>
	   <tr>
  <font size="2" face="Arial">
   <td align=right style="width: 58px">
   <p style="margin-top: 0; margin-bottom: 0"></p>
		   </td>
   <td align=left>
   <p style="margin-top: 0; margin-bottom: 0"><font size="2">&nbsp;&nbsp; 
   Analysis of Biomass Lipids</font></p>
		   </td></font>
	   </tr>
	   <tr>
   <td align=right style="width: 58px">
   &nbsp;</td>
   <td align=left><font size="2">
   &nbsp; &nbsp;Lab Activities:</td>
	   </tr>
	   <tr>
   <td align=right style="width: 58px">
   &nbsp;</td>
   <td align=left>
   <font size="2" face="Arial">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - </font>
   <font size="2">Lipid extraction from biomass</font></td>
	   </tr>
	   <tr>
   <td align=right style="width: 58px">
   &nbsp;</td>
   <td align=left>
  <font size="2" face="Arial">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - 
   </font><font size="2">DW (continued from previous day)</font></td>
	   </tr>
	   <tr>
   <td align=right style="width: 58px">
   &nbsp;</td>
   <td align=left>
  <font size="2" face="Arial">&nbsp;&nbsp;&nbsp;<font size="2">&nbsp;&nbsp;&nbsp; - 
   Ash-free dry weight (AFDW)</td>
	   </tr><tr>
   <td align=right style="width: 58px">
   &nbsp;</td>
   <td align=left><font size="2">
   &nbsp; &nbsp;Lunch</td>
	   </tr>
<tr>
   <td align=right style="width: 58px">
   &nbsp;</td>
   <td align=left><font size="2">
   &nbsp; &nbsp;Analysis of Biomass Proteins</td>
	   </tr>
<tr>
   <td align=right style="width: 58px">
   &nbsp;</td>
   <td align=left><font size="2">
   &nbsp; &nbsp;Lab Activities:</td>
	   </tr>
<tr>
   <td align=right style="width: 58px">
   &nbsp;</td>
   <td align=left><font size="2">
   &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; - Protein Assay (BioRad DC)</td>
	   </tr>
<tr>
   <td align=right style="width: 58px">
   &nbsp;</td>
   <td align=left><font size="2">
   &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; - Field sampling and OD (continued for measurement of growth rate)</td>
	   </tr>
<tr>
   <td align=right style="width: 58px">
   &nbsp;</td>
   <td align=left><font size="2">
   &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; - Lipid extraction (continued from morning)</td>
	   </tr>

	   <tr>
  <font size="2" face="Arial">
   <td align=right style="width: 58px">
   <p style="margin-top: 0; margin-bottom: 0"></p>
		   </td>
   <td align=left>
   <p style="margin-top: 0; margin-bottom: 0"><font size="2">&nbsp;&nbsp; </font>
   </p>
		   </td></font>
	   </tr>
	   <tr>
  <font size="2" face="Arial">
   <td align=right style="width: 58px">
   <p style="margin-top: 0; margin-bottom: 0"><font size="2"><strong>Day 4</strong></p>
		   </td>
   <td align=left>
   <p style="margin-top: 0; margin-bottom: 0"><font size="2"><strong>&nbsp;&nbsp; 8:00 am - 5:00 pm</strong></font></p>
		   </td>
		   </font>
	   </tr>
	   <tr>
  <font size="2" face="Arial">
   <td align=right style="width: 58px">
   <p style="margin-top: 0; margin-bottom: 0"></p>
		   </td>
   <td align=left>
   <p style="margin-top: 0; margin-bottom: 0"><font size="2">&nbsp;&nbsp; 
   Analysis of Biomass Carbohydrates</font></p>
		   </td></font>
	   </tr>
	   <tr>
  <font size="2" face="Arial">
   <td align=right style="width: 58px">
   <p style="margin-top: 0; margin-bottom: 0"></p>
		   </td>
   <td align=left>
   <p style="margin-top: 0; margin-bottom: 0"><font size="2">&nbsp;&nbsp; 
   Lab Activities:</font></p>
		   </td></font>
	   </tr>
	   <tr>
   <td align=right style="width: 58px">
   &nbsp;</td>
   <td align=left><font size="2">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Analysis of biomass carbohydrates (phenol-sulfuric)</font></td>
	   </tr>
	   <tr>
   <td align=right style="width: 58px">
   &nbsp;</td>
   <td align=left><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Analysis of biomass starch 
   (Megazyme)</font></td>
	   </tr>
	   <tr>
   <td align=right style="width: 58px">
   &nbsp;</td>
   <td align=left>
  <font size="2" face="Arial">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - </font><font size="2">
   AFDW (continued from previous day)</font></td>
	   </tr>
	   <tr>
  <font size="2" face="Arial">
   <td align=right style="width: 58px">
   <p style="margin-top: 0; margin-bottom: 0"></p>
		   </td>
   <td align=left>
   <p style="margin-top: 0; margin-bottom: 0"><font size="2">&nbsp;&nbsp;&nbsp;Lunch</font></p>
		   </td>
		   </font>
	   </tr>
	   <tr>
   <td align=right style="width: 58px">
   &nbsp;</td>
   <td align=left><font size="2">
   &nbsp;&nbsp;&nbsp;Enhanced 
   Biochemical Characterization<tr>
   <td align=right style="width: 58px">
   &nbsp;</td>
   <td align=left><font size="2">
   &nbsp; &nbsp;Lab Activities:</td>
	   </tr>
<tr>
   <td align=right style="width: 58px">
   &nbsp;</td>
   <td align=left><font size="2">
   &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; - Lipid characterization by thin-layer chromatography</td>
	   </tr>
<tr>
   <td align=right style="width: 58px">
   &nbsp;</td>
   <td align=left><font size="2">
   &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; - Field sampling and OD (continued for measurement of growth rate)</td>
	   </tr>
<tr>
   <td align=right style="width: 58px">
   &nbsp;</td>
   <td align=left><font size="2">
   &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; - Analysis of biomass carbohydrates (continued from morning)</td>
	   </tr>

  <font size="2" face="Arial">
   <td align=right style="width: 58px">
   <p style="margin-top: 0; margin-bottom: 0"></p>
		   </td>
   <td align=left>
   <p style="margin-top: 0; margin-bottom: 0"><font size="2">&nbsp;&nbsp; </font>
   </p>
		   </td></font>
	   </tr>
	   <tr>
  <font size="2" face="Arial">
   <td align=right style="width: 58px">
   <p style="margin-top: 0; margin-bottom: 0"><font size="2"><strong>Day 5</strong></p>
		   </td>
   <td align=left>
   <p style="margin-top: 0; margin-bottom: 0"><font size="2"><strong>&nbsp;&nbsp; 8:00 am - 11:00 am</strong></font></p>
		   </td>
		   </font>
	   </tr>
	   <tr>
  <font size="2" face="Arial">
   <td align=right style="width: 58px">
   <p style="margin-top: 0; margin-bottom: 0"></p>
		   </td>
   <td align=left>
   <p style="margin-top: 0; margin-bottom: 0"><font size="2">&nbsp;&nbsp; Data 
   Entry and Analysis</font></p>
		   </td>
		   </font>
	   </tr>
	   <tr>
  <font size="2" face="Arial">
   <td align=right style="width: 58px">
   <p style="margin-top: 0; margin-bottom: 0"></p>
		   </td>
   <td align=left>
   <p style="margin-top: 0; margin-bottom: 0"><font size="2">&nbsp;&nbsp; 
   Screening for Desirable Characteristics</font></p>
		   </td></font>
	   </tr>
	   <tr>
  <font size="2" face="Arial">
   <td align=right style="width: 58px">
   <p style="margin-top: 0; margin-bottom: 0"></p>
		   </td>
   <td align=left>
   <p style="margin-top: 0; margin-bottom: 0"><font size="2">&nbsp;&nbsp; 
   Final Q&amp;A, Certificates</font></p>
		   </td>
		   </font>
	   </tr>
   <tr>
   <td align=right style="width: 58px">
   <p style="margin-top: 0; margin-bottom: 0"></p>
	   </td>
   <td align=left>
   <p style="margin-top: 0; margin-bottom: 0"></p>
	   </td></tr>
   </table><br>
   
   <p style="margin-bottom: 0"><b>Contact information:</b></p>
   <P CLASS="indented" style="margin-top: 0; margin-bottom: 0">
	For information about this and future workshops, please contact
	<a href="mailto:info@atp3.org">info@atp3.org</a> or visit:
	<a href="http://www.atp3.org">www.atp3.org</a></P><br>
   <p style="margin-bottom: 0"><b>Registration:</b></p>
  <P CLASS="indented" style="margin-top: 0; margin-bottom: 0">
   <span class="auto-style28">Register online at the
   </span>
   <a href="https://www.regonline.com/measurementandbiochemicalanalysis">
   <span class="auto-style28">ATP</span><sup><span class="auto-style28">3</span></sup><span class="auto-style28"> Workshop Registration</span></a><span class="auto-style28"> page.</span></p><br><br>




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