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
page = "UTEX Microalgal Training Workshops"
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
	margin-left: 0px;
}
.auto-style2 {
	vertical-align: middle;
}
.auto-style4 {
	margin-top: 0px;
	margin-bottom: 5px;
}
.auto-style5 {
	padding-left: 10pt;
	background-color: #FFFFFF;
}
.auto-style7 {
	margin-bottom: 5;
}
.auto-style9 {
	padding-left: 10pt;
	margin-left: 40px;
	margin-top: 0;
	margin-bottom: 0;
}
.auto-style10 {
	padding-left: 10pt;
	margin-top: 0;
	margin-bottom: 0;
}
.auto-style11 {
	text-align: right;
}
.auto-style12 {
	margin-left: 0px;
	font-size: 1.85389e-038;
}
-->
</STYLE>
<script language="JavaScript" type="text/javascript">
<!--
if (document.getElementById) {
document.writeln('<style type="text/css"><!--')
document.writeln('.texter {display:none} @media print {.texter {display:block;}}')
document.writeln('//--></style>') }

function openClose(theID) {
if (document.getElementById(theID).style.display == "block") { document.getElementById(theID).style.display = "none" }
else { document.getElementById(theID).style.display = "block" } }
// -->
	</script>

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

   <font=green><font size="2" face="Arial"><b>UTEX presents 
  training 
   workshops for individuals interested in learning principles and practices of 
   growing and managing algal cultures.&nbsp; The workshop is designed to enhance 
   the knowledge of those who are already familiar with algae, and provide 
   an introduction to algal culture management for those with no prior 
   experience.&nbsp; Many topics are of direct relevance for those who are 
   interested in commercialization of algae.</b></font></p>
  <p style="margin-top: 0; margin-bottom: 0">&nbsp;</p>
  <p style="margin-top: 0; margin-bottom: 0"><b><font face="Arial" size="2">
   Workshops feature presentations and demonstrations, as well as opportunities 
   for hands-on microscopic manipulations and training in common laboratory 
  techniques.&nbsp; Participants are encouraged to 
   bring algal samples that they wish to microscopically observe and/or 
   identify.&nbsp; Workshops are informal; participants are encouraged to ask 
   questions, share information with the group, and network.</font></b></p>
  <p style="margin-top: 0; margin-bottom: 0">&nbsp;</p>
  <p style="margin-top: 0; margin-bottom: 0"><font=green><font size="2" face="Arial">
  <strong>A certificate of completion will be sent electronically via email 
  (paper copy available upon request), and a free UTEX culture, based on 
  availability of strains, are offered to each participant.</strong><br>
  &nbsp;</font><p style="margin-top: 0; margin-bottom: 0">
  <font size="2" face="Arial">
  <br>
  <b>Location of workshops:</b><P CLASS="indented" style="margin-top: 0; margin-bottom: 0">
  Biological Laboratories Building (BIO LABS)</p>
  <P CLASS="indented" style="margin-top: 0; margin-bottom: 0">
  Room 221</p>
  <P CLASS="indented" style="margin-top: 0; margin-bottom: 0">
  205 West 24th Street</p>
  <P CLASS="indented" style="margin-top: 0; margin-bottom: 0">
  The University of Texas at Austin</p>
  <P CLASS="indented" style="margin-top: 0; margin-bottom: 0">
  Austin, TX 78712</p>
  <p style="margin-top: 0; margin-bottom: 0">
  <br><br>
  <b>Dates of the next workshops ** :</b></p>
  <p style="margin-top: 0; " class="auto-style7">
  <font size="2" face="Arial">
  <em>(Click on dates for costs and additional information)</em></font></p>
  <dl class="auto-style4">
  		<div onclick="openClose('a2')" style="cursor:hand; curosr:pointer"><span class="indented">
			<strong>March 19 - 21, 2014</strong>&nbsp; </span><img alt="Click to expand/contract additional description." class="auto-style2" height="15" src="images/bullet_toggle_plus.png" width="15"></div>
  	</dt>
  		<div id="a2" class="texter">
  			<dd><strong>Cost:</strong> $1000 USD (lunch included)</dd>
  			<dd><strong>Description: </strong><u>Bioprospecting, Isolation and Analysis of Microalgae</u> - This 
			3-day workshop is designed to teach the principles and

practices of microalgal strain collection, enrichment, screening, 

isolation, identification, and natural product characterization.

Presentations and hands-on laboratory activities are tailored to take

participants step by step through the process of collecting samples from 

the field, establishing and characterizing cultures, and identifying and 

analyzing metabolic products of interest.</dd>
		</div>
  </dl>
			


  <dl class="auto-style4">
  		<div onclick="openClose('a3')" style="cursor:hand; curosr:pointer"><span class="indented">
			<strong>June 4 - 6, 2014</strong>&nbsp; </span><img alt="Click to expand/contract additional description." class="auto-style2" height="15" src="images/bullet_toggle_plus.png" width="15"></div>
  	</dt>
  		<div id="a3" class="texter">
  			<dd><strong>Cost:</strong> $1000 USD (lunch included)</dd>
  			<dd><strong>Description:</strong> <u>Biochemistry and Laboratory Analysis of Biomass Composition</u> - This 
			3-day workshop was developed to 
			provide an introduction to common laboratory techniques used 
			for the analysis of microalgal biomass and biochemical 
			content. Participants will have numerous opportunities to 
			work in the laboratory observing cultures by microscopy, 
			measuring cultures by spectrophotometry, performing 
			gravimetric analyses, and bulk characterization of proteins, lipids 
			and carbohydrates.</dd>
		</div>
  </dl>
			


  <dl class="auto-style4">
  		<div onclick="openClose('a4')" style="cursor:hand; curosr:pointer"><span class="indented">
			<strong>July 21 - 25, 2014</strong>&nbsp; </span><img alt="Click to expand/contract additional description." class="auto-style2" height="15" src="images/bullet_toggle_plus.png" width="15"></div>
  	</dt>
  		<div id="a4" class="texter">
  			<dd><strong>Cost:</strong> $1800 USD (lunch included)</dd>
  			<dd><strong>Description:</strong> <u>Introduction to Phycology: ecology, physiology and taxonomy -and- Genetic Modification of Cyanobacteria and Microalgae</u> - This is an intensive 
			5-day workshop covering a wide range of topics

related to algal biodiversity. Detailed lectures and hands-on laboratory

activities led by experts in the field are designed to provide a broad 

introduction to algal ecological diversity, natural habitats, cell biology, 

biochemistry, growth characteristics, nomenclature, phylogeny, and

molecular genetics.</dd>
		</div>
  </dl>
			


  <P CLASS="auto-style9">
  &nbsp;</p>
  <P CLASS="auto-style10">
  <strong><em>**Customized training workshops can be arranged for groups of 4 or 
  more.&nbsp; Please inquire at <a href="mailto:utalgae@uts.cc.utexas.edu">
  utalgae@uts.cc.utexas.edu</a>.<br></em></strong></p>
  
  
    <p style="margin-top: 0; margin-bottom: 0">
    &nbsp;<p style="margin-top: 0; margin-bottom: 0">
   &nbsp;<p style="margin-top: 0; margin-bottom: 0">
   <b>Enrollment:
   </b><P CLASS="auto-style5" style="margin-top: 0; margin-bottom: 0">
  <font size="2" face="Arial">
   All workshop fees are due at the time of registration. A 50% refund will be provided for cancellations 
  made within 5 business days prior to the start of the workshop. The enrollment of each workshop is restricted to 
  10 individuals.&nbsp; Please contact the UTEX Business Manager, Nick Davis, 
  via&nbsp;<a href="mailto:utalgae@uts.cc.utexas.edu">email</a>&nbsp;or by phone: 
  512-471-4019, to inquire about availability, cancellations, or special 
  requests. Participants are responsible for their own transportation and living expenses. UTEX personnel may be able to assist in 
  finding a conveniently located hotel.</font></P>
  <p style="line-height: 150%; margin-top: 0; margin-bottom: 1px">
  <b>
  <br><br>
   Instructors:<br>
   </b>Trained phycologists will conduct each workshop. These include:
  </p>
  <p style="line-height: 150%; margin-top: 0; margin-bottom: 1px"> </P> 
  <p style="line-height: 150%; margin-top: 0; margin-bottom: 1px"> </P> 
  <p style="line-height: 150%; margin-top: 0; margin-bottom: 1px"> </p>
  <P CLASS="indented" style="line-height: 150%; margin-top: 1px; margin-bottom: 1px">Dr. Jerry Brand, Director, Culture Collection of Algae and Professor of Biology</P>
  <p style="line-height: 150%; margin-top: 1px; margin-bottom: 0"></p>
  <P CLASS="indented" style="line-height: 150%; margin-top: 1px; margin-bottom: 0">Dr. James Dawson, Phycologist and Professor at Pittsburg State University, Kansas</P>
  <p style="line-height: 150%; margin-top: 1px; margin-bottom: 0"></p>
  <P CLASS="indented" style="line-height: 150%; margin-top: 1px; margin-bottom: 0">Dr. David Nobles, Curator, Culture Collection of Algae</P>
  <p style="line-height: 150%; margin-top: 1px; margin-bottom: 0"></p>
  <P CLASS="indented" style="line-height: 150%; margin-top: 1px; margin-bottom: 0">
  Dr. Schonna Manning, Phycologist and Analytical Biochemist, Culture Collection of Algae</P>
  <P CLASS="indented" style="line-height: 150%; margin-top: 1px; margin-bottom: 0">&nbsp;</P></p>

  <p style="margin-top: 0; margin-bottom: 0">
   <font size="2" face="Arial"><b>Schedule:</b><br>

            </font>

           
   <p class="indented" style="margin-top:0">Topics vary among workshops. The schedule for the <b>March 19-21, 2014</b> workshop is as follows: </p>
   <p style="margin-top: 0; margin-bottom: 0">
   <br>
   <table width=600 class="auto-style12" align="center">
   <tr>
   <td align=right style="width: 78px">
   <p style="margin-top: 0; margin-bottom: 0"><b><font size="2">Wednesday</font></b></td>
   <td align=left>
   <p style="margin-top: 0; margin-bottom: 0"><b>&nbsp;<font size="2">&nbsp; 
    8:00 am - 5:00 pm</font></b></td></tr>
   <tr>
   <td style="width: 78px" class="auto-style11"><font size="2">8:00-8:25</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Check In</font></td></tr>
   <tr>
   <td style="width: 78px" class="auto-style11"><font size="2">8:30</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Introduction</font></td></tr>
   <tr>
   <td style="width: 78px" class="auto-style11"><font size="2">9:15</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Tour of UTEX</font></td></tr>
   <tr>
   <td style="width: 78px" class="auto-style11"><font size="2">10:00</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Diversity, Nutrition, and Ecology of Algae</font></td></tr>
   <tr>
   <td style="width: 78px" class="auto-style11"><font size="2">11:00</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Microscopy for Microalgal Characterization</font></td></tr>
   <tr>
   <td style="height: 20px; width: 78px;" class="auto-style11"><font size="2">12:00</font></td>
   <td align=left style="height: 20px"><font size="2">&nbsp;&nbsp; Lunch</font></td></tr>
   <tr>
   <td style="width: 78px" class="auto-style11"><font size="2">1:00</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Overview on the Principles of Bioprospecting</font></td></tr>
   <tr>
   <td style="width: 78px" class="auto-style11"><font size="2">2:00</font></td>
   <td align=left><font size="2">&nbsp;&nbsp;<strong> Lab Activities:</strong> </font></td></tr>
   <tr>
   <td style="width: 78px" class="auto-style11">&nbsp;</td>
   <td align=left><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Field sampling and microscopy</font></td></tr>
   <tr>
   <td style="width: 78px" class="auto-style11"><font size="2">4:00</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Algal Taxonomy: traditional and modern</font></td></tr>
    <tr>
   <td style="width: 78px" class="auto-style11"><font size="2">5:00</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Conclude Activities</font></td></tr>
   </table><br>
   <table width=600 class="auto-style1">
   <tr>
   <td align=right style="width: 74px; height: 23px;">
   <p style="margin-top: 0; margin-bottom: 0"><b><font size="2">Thursday</font></b></td>
   <td align=left style="height: 23px">
   <p style="margin-top: 0; margin-bottom: 0"><b>&nbsp;<font size="2">&nbsp; 
    8:30 am - 5:00 pm</font></b></td></tr>
   <tr>
   <td align=right style="width: 74px"><font size="2">8:30-8:55</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Check In</font></td></tr>
   <tr>
   <td align=right style="width: 74px"><font size="2">9:00</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Isolation and Enrichment of Microalgae</font></td></tr>
   <tr>
   <td align=right style="width: 74px"><font size="2">10:00</font></td>
   <td align=left><font size="2">&nbsp;&nbsp;<strong> Lab Activities:</strong> 
   </font></td></tr>
    <tr>
   <td align=right style="width: 74px"><font size="2"></font></td>
   <td align=left><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Demonstration of cell sorter</font></td></tr>

   <tr>
   <td align=right style="width: 74px"><font size="2"></font></td>
   <td align=left><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Isolation techniques</font></td></tr>
   <tr>
   <td align=right style="width: 74px"><font size="2">12:00</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Lunch</font></td></tr><tr>
   <td align=right style="height: 20px; width: 74px;"><font size="2">1:00</font></td>
   <td align=left style="height: 20px"><font size="2">&nbsp;&nbsp; Maintaining Laboratory Cultures</font></td></tr>
   <tr>
   <td align=right style="width: 74px"><font size="2">2:00</font></td>
   <td align=left><font size="2">&nbsp;&nbsp;<strong> Lab Activities:</strong> </font></td></tr>
   <tr>
   <td align=right style="width: 74px">&nbsp;</td>
   <td align=left><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Demonstration of cryopreservation techniques</font></td></tr>
   <tr>
   <td align=right style="width: 74px"><font size="2">2:30</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Measuring Growth Kinetics and Culture Density</font></td></tr>
   <tr>
   <td align=right style="width: 74px"><font size="2">3:30</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; <b>Lab Activities:</b> </font></td></tr>
   <tr>
   <td align=right style="width: 74px">&nbsp;</td>
   <td align=left><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Using a spectrophotometer and hemocytometer, calibration curves</font></td></tr>
    <tr>
   <td align=right style="width: 74px"><font size="2">5:00</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Conclude Activities</font></td></tr>
   </table>
   <p style="margin-top: 0; margin-bottom: 0">
   <br>
   <table width=600>
   <tr>
   <td align=right style="width: 75px"><font size="2"><b>Friday</b></font></td>
   <td align=left>&nbsp; <b><font size="2">&nbsp;8:30 am - 4:30 pm</font></b></td></tr>
   <tr>
   <td align=right style="width: 75px"><font size="2">8:30-8:55</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Check In</font></td></tr>
   <tr>
   <td align=right style="width: 75px"><font size="2">9:00</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Introduction to Bioinformatics</font></td></tr>
   <tr>
   <td align=right style="width: 75px"><font size="2">10:00</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; <b>Lab Activities:</b></font></td></tr>
   <tr>
   <td align=right style="width: 75px">&nbsp;</td>
   <td align=left><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Using BLAST for genomic identification</font></td></tr>
   <tr>
   <td align=right style="width: 75px"><font size="2">11:00</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Screening Cultures for Specific Characteristics</font></td></tr>
   <tr>
   <td align=right style="height: 20px; width: 75px;"><font size="2">12:00</font></td>
   <td align=left style="height: 20px"><font size="2">&nbsp;&nbsp; Lunch</font></td></tr>
   <tr>
   <td align=right style="width: 75px"><font size="2">12:30</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Analysis of Natural Products</font></td></tr>
    <tr>
   <td align=right style="width: 75px"><font size="2">1:30</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; <b>Lab Activities:</b></font></td></tr>

   <td align=right style="width: 75px"><font size="2"></font></td>
   <td align=left><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Analysis of lipids by thin-layer chromatography</font></td></tr>

   <td align=right style="width: 75px"><font size="2"></font></td>
   <td align=left><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Using fluorescence microscopy to visualize algal lipids</font></td></tr>
   <td align=right style="height: 20px; width: 75px;"><font size="2">4:00</font></td>
   <td align=left style="height: 20px"><font size="2">&nbsp;&nbsp; Discuss Results </font></td></tr>
    <tr>
   <td align=right style="width: 75px"><font size="2">4:30</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Conclude Activities</font></td></tr>

      </table>
  <p style="margin-top: 0; margin-bottom: 0"><b>
   <br><br>
   Contact information:</p>
   </b>
  <P CLASS="indented" style="margin-top: 0; margin-bottom: 0">
	Those interested in participation may contact Nick Davis
	<a href="mailto:utalgae@uts.cc.utexas.edu">via e-mail</a> or phone (512-471-4019).</P>
   <b>
   <p style="margin-top: 0; margin-bottom: 0">
   <br><br>
    Method of payment:</p>
   </b>
  <P CLASS="indented" style="margin-top: 0; margin-bottom: 0">
   <font size="2" face="Arial">
   Payments by credit card should be 
   made through the UTEX web site, using the secure 
   <a href="https://utdirect.utexas.edu/txshop/list.WBX?component=0&amp;application_name=BSALGAES&amp;cat_seq_chosen=06&amp;subcategory_seq_chosen=000" target="_blank">TX Shop 
   System</a>.
    
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