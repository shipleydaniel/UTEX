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
page = "Depositing Strains"
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

<b>Criteria for Accession of New Algal Strains Into the UTEX Collection</b><br><br>
<img border="0" src="images/exclaim.gif" width="15" height="15"><html> Please 
contact the UTEX Curator, <a href="mailto:dnobles@mail.utexas.edu">Dr. David 
Nobles</a>, for possible deposition of an algal strain.&nbsp; Include a 
filled-out <a href="Deposition%20Request.doc" font-weight: 700" target="_blank">deposition request form</a>.&nbsp; No strain should be sent for possible 
accession into the Collection without prior approval by the Curator.</html><br> 
</span><br>
In order to balance the desire to maximize the number and diversity of strains to the user community while maintaining the quality of the existing Collection with its limited resources, it is necessary to define criteria for accepting new strains into the UTEX Collection. The criteria listed below are used as a guide to determine which new strains to incorporate, and which lost strains to replace. However, it is impossible to apply these criteria quantitatively since each individual strain has its own unique attributes whose value must be considered.
<ol>
<li>Practicality of culturing the strain in the existing facilities: Only strains that can be cultured under the conditions accessible to UTEX can be accepted.<br><br></li>
<li>Unialgal culture: UTEX only accepts unialgal cultures for inclusion into the permanent Collection. Axenic cultures are preferred and are given priority for acceptance.<br><br></li>
<li>Potential value of the strain to research and biotechnology communities: Strains with unique biochemical qualities, those which tolerate extreme conditions, or those which synthesize products of potential economic importance will especially be considered for inclusion in UTEX.<br><br></li>
<li>Potential value of the strain to the teaching community: Strains that illustrate diverse morphological, physiological and reproductive strategies of interest to educators will especially be considered for inclusion in UTEX.<br><br></li>
<li>Potential value of the strain to various other user communities: Uses include fish or shellfish food, human nutrition supplements, water quality analysis, etc.<br><br></li>
<li>Increase in taxonomic breadth of the Collection: Species that increase the genetic diversity, particularly when they are likely to be of value in systematic studies, will especially be considered.<br><br></li>
<li>Known strain history and documentation of strain identity: Strains with published descriptions and taxonomic identities will be especially considered for inclusion in UTEX. A strain whose identity is uncertain cannot under most circumstances be accepted until it can be assigned a taxonomic status.<br><br></li>
<li>Practicality of providing appropriate culture medium: Strains that can be grown in a medium already prepared routinely for existing UTEX cultures will be favored over strains that require a special medium. Strains requiring medium that is expensive or time-consuming to prepare will be accepted only when other qualities make these strains especially desirable.<br><br></li>
<li>Historical value: Strains that have been used extensively in the past as research organisms, and those which have had a significant impact on man's activities will be considered for inclusion in UTEX.<br><br></li>
<li>Complementary to another strain in the Collection: Sexually compatible strains that don't self-fertilize will be considered for acceptance into the UTEX Collection even when they appear morphologically identical, in order to provide sexually reproducing species.<br><br></li>
<li>Organisms isolated from a natural source: Generally UTEX will accept only strains isolated from natural sources. UTEX cannot accept strains that are proprietary and carry a current patent number for inclusion in the list of available cultures.<br><br></li>
</ol>
<b>Procedure for Accepting a New Algal Strain into UTEX</b>
<br><br> 
An algal strain can only be accepted for inclusion into the permanent UTEX Collection if it:
<ul>
<li>can be made available to the public without proprietary claim;</li>
<li>is accompanied by an appropriate description and background information;</li>
<li>meets established criteria for accession of new cultures.</li>
</ul>

The following sequence of events is followed in accessing a new strain for inclusion into the Culture Collection of Algae at The University of Texas.

 
<ol>
<li>A unialgal culture of the strain of interest is provided to UTEX for consideration. Any strain submitted for inclusion will be considered, whether or not it was solicited by UTEX. The depositor should use the "Strain Deposition Information" form to submit as much information as possible regarding the strain to be deposited.<br><br></li>
<li>Upon its receipt, the strain is assigned a temporary UTEX number for internal use only. It is cultured under conditions that are expected to propagate the strain indefinitely under available conditions.<br><br></li>
<li>When the culture has been grown through several transfers to fresh medium without decline in quality or any manifestation of unacceptable contamination, then it is ready for inclusion into the permanent Collection. The depositor is then informed that the strain will be accessed by UTEX, and the strain is assigned a permanent accession number. If the culture cannot be successfully cultured or it is deemed unacceptable for other reasons, then the depositor is informed that the strain cannot be accessed by UTEX, and all cultures of the strain are destroyed.<br><br></li>
<li>The accessed strain is moved to its permanent site in the Collection. It is included in the list of cultures on the UTEX web site. Information regarding the strain history, the name of the depositor, suitable culturing conditions, etc. is also listed. The strain is then available to users.<br><br></li>
</ol>
<br><br>To submit a strain for consideration please fill out a <a href="Deposition%20Request.doc" font-weight: 700" target="_blank">DEPOSITION REQUEST FORM</a> and send it to <a href="mailto:dnobles@mail.utexas.edu">Dr. David Nobles</a>.
<table width="630">
 <tr><td align="center">
        <p>&nbsp;</p>
        <p class="MsoNormal" style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px" align="center">
         <span lang="en-us"><font face="Verdana" size="1">Copyright</font></span><font face="Verdana" size="1"> 
         2005<span lang="en-us"> UTEX and University of Texas at Austin<br>

         LAST UPDATED MARCH 23, 2006</span></font></p>
</td></tr>
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
