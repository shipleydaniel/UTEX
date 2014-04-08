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
page = "Strain Identification"
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
  <td width = 810 colspan = 1>
  <p style="margin-top: 0; margin-bottom: 0"><br>

  
   <b>Microscopy</b></p>
  <p style="margin-top: 0; margin-bottom: 0">UTEX can identify algal strains to 
   the genus level using microscopy.&nbsp; However, this is generally not 
   possible if dealing with strains lacking adequate morphological keys (i.e. 
   non-flagellated, unicellular, coccoid green algae).&nbsp; We request that the 
   culture should predominantly consist of the algal strain in question.</p>
  <ul type="square">
    <li>
    <p style="margin-top: 0; margin-bottom: 0">The charge for identification 
     through microscopy is $50.00 USD / strain.</li>
  </ul>
  <p style="margin-top: 0; margin-bottom: 0">&nbsp;</p>&nbsp;<p style="margin-top: 0; margin-bottom: 0"><b>DNA Sequencing</b></p>
  <p style="margin-top: 0; margin-bottom: 0">Using rDNA (18s, 5.8s, and/or ITS 2 
   regions), UTEX can identify algal strains to the level of species, or at a 
   minimum, determine the most closely related species for which there is 
   sequence data available.&nbsp; The culture does not have to be axenic, but 
   must be unialgal and free of other eukaryotic organisms (protists and fungi).</p>
  <ul type="square">
    <li>
    <p style="margin-top: 0; margin-bottom: 0">The charge for identification by 
     sequencing is $900.00 USD / strain, of which $400.00 USD / strain is due 
     prior to sequencing.</li>
  </ul>
  <p style="margin-top: 0; margin-bottom: 0">&nbsp;</p>
  <p style="margin-top: 0; margin-bottom: 0">&nbsp;</p>
  <p style="margin-top: 0; margin-bottom: 0"><u><b>For both methods of 
   identification, please provide the following strain information:</b></u></p>
  <ul type="square">
    <li>
    <p style="margin-top: 0; margin-bottom: 0">Environment from which the strain 
     was collected (e.g. fresh water, salt water, brackish water, soil, etc.);</li>
    <li>
    <p style="margin-top: 0; margin-bottom: 0">Preferred growth conditions 
     (temperature, light intensity); and</li>
    <li>
    <p style="margin-top: 0; margin-bottom: 0">Growth media used to maintain the 
     algal in culture.</li>
  </ul>
  <p style="margin-top: 0; margin-bottom: 0">&nbsp;</p>
  <p style="margin-top: 0; margin-bottom: 0">&nbsp;</p>
  <p style="margin-top: 0; margin-bottom: 0">Upon successful identification of 
   your strain, UTEX will send you data (images in the case of microscopy; 
   sequences, multiple alignments, BLAST search results, and phylogenetic trees 
   in the case of DNA sequencing) and a certificate of authenticity.</p>
  <p style="margin-top: 0; margin-bottom: 0">&nbsp;</p>
  <p style="margin-top: 0; margin-bottom: 0">&nbsp;</p>
  <p style="margin-top: 0; margin-bottom: 0"><b>Please contact the UTEX Curator,
   <a href="mailto:dnobles@mail.utexas.edu?subject=Strain Identification">Dr. 
   David Nobles</a>, before placing an order.</b></p>
  <p style="margin-top: 0; margin-bottom: 0">&nbsp;</p>
  <p style="margin-top: 0; margin-bottom: 0">&nbsp;</p>
  <p style="margin-top: 0; margin-bottom: 0"><u><b>Note:</b></u></p>
  <p style="margin-top: 0; margin-bottom: 0">No strains should be sent for 
   possible identification to the Collection without prior approval by the 
   Curator.&nbsp; Any cultures received without the aforementioned approval will 
   be sterilized and discarded.<br>


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