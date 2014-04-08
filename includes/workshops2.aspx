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
page = "UTEX Workshop: Managing Microalgal Cultures"
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
	margin-left: 35px;
}
.auto-style3 {
	margin-left: 22px;
	margin-top: 0px;
	margin-bottom: 0px;
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

   <font=green><font size="2" face="Arial"><b>UTEX presents 2-day intensive 
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
  <b>Dates of the next workshops:</b>


</p>

<div onClick="openClose('a1')" style="cursor:hand; cursor:pointer" class="indented">
January 30 - 31, 2014 <font color="green"><strong>[FULL]</strong></font>
</div>
	<div id="a1" class="texter">
		
			<li class="auto-style2"><strong>Managing Microalgal Cultures</strong> (2-Day format with more hands-on activities)</li>
			<li class="auto-style2" style="height: 22px"><strong>Cost:</strong> $600 USD</li>
		
</div>
<div onclick="openclose('a2')" style="cursor:hand; cursor:pointer" class="indented">
March 19 - 21, 2014
</div>
	<div id="a2" class="texter">
	
			<li class="auto-style2"><strong>Bioprospecting, Isolation and Analysis of Microalgae</strong></li><br>
			This three-day workshop is designed to teach the principles and practices of microalgal strain collection, enrichment, screening, isolation, identification, and natural product characterization. Presentations and hands-on laboratory activities are tailored to take participants step by step through the process of collecting samples from the field, establishing and characterizing cultures, and identifying and analyzing metabolic products of interest.
			<li class="auto-style2"><strong>Cost:</strong> $1000 USD (includes lunch)</li>
	</div>
<div onclick="openclose('a3')" style="cursor:hand; cursor:pointer" class="indented">
June 4 - 6, 2014
</div>
	<div id="a3" class="texter">
			<li class="auto-style2"><strong>Biochemistry and Laboratory Analysis of Biomass Composition</strong></li><br>
				<p class=" auto-style3">This three-day workshop was developed to provide an introduction to

common laboratory techniques used for the analysis of microalgal

biomass and biochemical content. Participants will have numerous

opportunities to work in the laboratory observing cultures by

microscopy, measuring cultures by spectrophotometry, performing

gravimetric analyses, and bulk characterization of proteins, lipids and 

carbohydrates.</p>
<li class="auto-style2"><strong>Cost:</strong> $1000 USD (includes lunch)</li>			</div>

  <P CLASS="indented" style="margin-top: 0; margin-bottom: 0">
  <br></p>
  
  
    <p style="margin-top: 0; margin-bottom: 0">
   &nbsp;<p style="margin-top: 0; margin-bottom: 0">
   <b>Enrollment:
   </b><P CLASS="indented" style="margin-top: 0; margin-bottom: 0">
  <font size="2" face="Arial">
   Workshop fees are $600 per participant for a single workshop.&nbsp; All workshop fees are due 
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
  <P CLASS="indented" style="line-height: 150%; margin-top: 1px; margin-bottom: 1px">Dr. Jerry Brand, Director, Culture Collection of Algae and Professor of Biology</P>
  <p style="line-height: 150%; margin-top: 1px; margin-bottom: 0"></p>
  <P CLASS="indented" style="line-height: 150%; margin-top: 1px; margin-bottom: 0">Dr. James Dawson, Phycologist and Professor at Pittsburg State University, Kansas</P>
  <p style="line-height: 150%; margin-top: 1px; margin-bottom: 0"></p>
  <P CLASS="indented" style="line-height: 150%; margin-top: 1px; margin-bottom: 0">Dr. David Nobles, Curator, Culture Collection of Algae</P>
  <p style="line-height: 150%; margin-top: 1px; margin-bottom: 0"></p>
  <P CLASS="indented" style="line-height: 150%; margin-top: 1px; margin-bottom: 0">
  Dr. Schonna Manning, Phycologist, Culture Collection of Algae</P>
  <P CLASS="indented" style="line-height: 150%; margin-top: 1px; margin-bottom: 0">&nbsp;</P></p>

  <p style="margin-top: 0; margin-bottom: 0">
   <font size="2" face="Arial"><b>Schedule:</b><br>

            </font>

            </b>
   The schedule may vary slightly among different workshops, depending on participant interest. A typical schedule is as follows:
  <p style="margin-top: 0; margin-bottom: 0">
   <br>
   <table width=600 class="auto-style1">
   <tr>
   <td align=right style="width: 58px">
   <p style="margin-top: 0; margin-bottom: 0"><b><font size="2">Thursday</font></b></td>
   <td align=left>
   <p style="margin-top: 0; margin-bottom: 0"><b>&nbsp;<font size="2">&nbsp; 
    8:00 am - 4:00 pm</font></b></td></tr>
   <tr>
   <td align=right style="width: 58px"><font size="2">8:00-8:30</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Check In and Refreshments</font></td></tr>
   <tr>
   <td align=right style="width: 58px"><font size="2">8:30</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Tour of UTEX</font></td></tr>
   <tr>
   <td align=right style="width: 58px"><font size="2">9:00</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Introduction to the Algae</font></td></tr><tr>
   <td align=right style="width: 58px"><font size="2">10:00</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Break</font></td></tr>
   <tr>
   <td align=right style="width: 58px"><font size="2">10:15</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; The diversity, nutrition, and 
   ecology of algae</font></td></tr><tr>
   <td align=right style="height: 20px; width: 58px;"><font size="2">11:30</font></td>
   <td align=left style="height: 20px"><font size="2">&nbsp;&nbsp; Lunch</font></td></tr>
   <tr>
   <td align=right style="width: 58px"><font size="2">1:00</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Structural features and chemical 
   components of algal cells</font></td></tr>
   <tr>
   <td align=right style="width: 58px"><font size="2">2:00</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Use of the optical microscope</font></td></tr>
   <tr>
   <td align=right style="width: 58px"><font size="2">3:00</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Recognition and elimination of 
   contaminants</font></td></tr>
    <tr>
   <td align=right style="width: 58px"><font size="2">4:00</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Activities conclude</font></td></tr>
   </table>
   <br>
   <table width=600>
   <tr>
   <td align=right style="width: 58px"><font size="2"><b>Friday</b></font></td>
   <td align=left>&nbsp; <b><font size="2">&nbsp;8:00 am - 4:30 pm</font></b></td></tr>
   <tr>
   <td align=right style="width: 58px"><font size="2">8:00-8:30</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Refreshments</font></td></tr>
   <tr>
   <td align=right style="width: 58px"><font size="2">8:30</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Measuring microalgal culture 
   densities and growth rates</font></td></tr>
   <tr>
   <td align=right style="width: 58px"><font size="2">9:45</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Practical Laboratory Techniques 1</font></td></tr>
   <tr>
   <td align=right style="width: 58px"><font size="2">10:45</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Tour of greenhouse facility</font></td></tr>
   <tr>
   <td align=right style="height: 20px; width: 58px;"><font size="2">11:30</font></td>
   <td align=left style="height: 20px"><font size="2">&nbsp;&nbsp; Discussion on 
   Scaling Up and Lunch</font></td></tr>
   <tr>
   <td align=right style="width: 58px"><font size="2">1:00</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Introduction to Lipid Analysis</font></td></tr>
   <tr>
   <td align=right style="width: 58px"><font size="2">1:45</font></td>
   <td align=left><font size="2">&nbsp;&nbsp; Practical Laboratory Techniques 2</font></td></tr>
   <td align=right style="height: 20px; width: 58px;"><font size="2">4:30</font></td>
   <td align=left style="height: 20px"><font size="2">&nbsp;&nbsp; Evaluations 
   and conclusion of activities</font></td></tr>
      </table>
  <p style="margin-top: 0; margin-bottom: 0"><b>
   <br><br>
   Contact information:</p>
  <P CLASS="indented" style="margin-top: 0; margin-bottom: 0">
	Those interested in participation may contact Nick Davis
	<a href="mailto:utalgae@uts.cc.utexas.edu">via e-mail</a> or phone (512-471-4019).</P>
   <p style="margin-top: 0; margin-bottom: 0">
   <br><br>
    Method of payment:</p>
  <P CLASS="indented" style="margin-top: 0; margin-bottom: 0">
   </b><font size="2" face="Arial">
   No payment should be sent prior to confirmation from Nick Davis. Payments by credit card should be 
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