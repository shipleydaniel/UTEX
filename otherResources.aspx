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
page = "Other Algal Collections &amp; Resources"


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
                <br>
                <b>Phycological Societies</b><br>
  <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" id="table1">
    <tr>
      <td width="50%"><a target="_blank" href="http://www.PSAalgae.org">Phycological Society of America</a></td>
      <td width="50%"><a target="_blank" href="http://www.brphycsoc.org">British Phycological Society</a></td>
    </tr>
    <tr>
      <td width="50%"><a target="_blank" href="http://www.intphycsoc.org">International Phycological Society</a></td>
      <td width="50%"><a target="_blank" href="http://www.isaseaweed.org">International Seaweed Association</a></td>
    </tr>
  </table>
  <p>
                 <b>Other Algal Resources</b>
  <table border="0" cellpadding="0" style="border-collapse: collapse; font-size:10pt" width="100%" id="table2">
    <tr>
      <td valign="top" width="50%"><a href="http://www.algaebase.org">AlgaeBase</a><br>Galway, Ireland<br>
      <br><a href="http://www.nhm.ac.uk/research-curation/projects/algaevision/index.html">AlgaeVision, The Natural History Museum</a> (BMNH)<br>London, England<br>
      <br>Australian Collection of Marine Microorganisms (ACMM)<br>Townsville, Australia<br>
      <br>Botryococcus Culture Collection (BCC)<br>
      New York City, US<span lang="en-us">A<br>
      </span>
      <br><a href="http://www.chlamy.org/">Chlamydomonas Genetics Center </a>  (CGC)<br>North Carolina, USA<br>
      <br><a href="http://www.ccap.ac.uk/">Culture Collection of Algae and Protozoa</a> (CCAP)<br>Oban, Scotland<br>
      <br><a href="http://botany.natur.cuni.cz/algo/caup.html">Culture Collection of Algae at Charles University</a> (CAUP)<br>Prague, Czechoslovakia<br>
      <br><a href="http://www.ccac.uni-koeln.de">Culture Collection of Algae at the University of Cologne</a> (CCAC)<br>Cologne, Germany<br>
      <br><a href="http://www.univie.ac.at/IECB/hydrobotanik/">Culture Collection of Algae at the University of Vienna</a> (ASW)<br>Vienna, Austria<br>
      <br><a href="http://cultures.uoregon.edu/default.htm">Culture Collection of Microorganisms from Extreme Environments</a> (CCMEE)<br> Oregon, USA<p><a href="http://www.csiro.au/Organisation-Structure/National-Facilities/Australian-National-Algae-Culture-Collection.aspx"> CSIRO Collection of Living Microalgae</a> (CCLM)<br>Australia<br>
       <br>

      
      <td valign="top" width="50%">
      <br><a href="http://www.dunaliella.org/">Dunaliella Culture Collection at Brooklyn College</a> (DCCBC)<br>New York City, USA<br>
      <br><a href="http://ucjeps.berkeley.edu/bryolab/GPphylo/RNA/18S_17.html">Green Plant Phylogeny</a><br>	
      <br><a href="http://www.iam.u-tokyo.ac.jp/index.html">Institute of Applied Microbiology</a> (IAM)<br>Tokyo, Japan<br>
      <br><a href="http://www.nbrc.nite.go.jp/e/">NITE Biological Resource Center</a> (NBRC)<br>Chiba, Japan<br>
      <br><a href="http://www3.botany.ubc.ca/cccm/http://www3.botany.ubc.ca/cccm/">
			Canadian Center for the Culture of Microorganisms</a> (CCCM)<br>Vancouver, Canada<br>
      <br><a href="http://www.pasteur.fr/ip/easysite/pasteur/en/research/scientific-departments/microbiology/units-and-groups/cyanobacteria-collection">
		  Pasteur Culture Collection of Cyanobacterial Strains</a> (PCC)<br>Paris, France<br>
      <br><a href="http://www.naabb.org/">National Alliance For Advanced 
      Biofuels and Bio-products</a> (NAABB)<p>
       <a href="http://ncma.bigelow.org/">National Center for Marine Algae and Microbiota</a> (NCMA)<br>Maine, USA<br>
      <br><a href="http://www.uni-goettingen.de/en/184982.htmlhttp://www.uni-goettingen.de/en/184982.html">
				   Sammlung von Algenkulturen</a> (SAG)<br>G&ouml;ttingen, Germany<br>
      <br><a href="http://www.phycol.ca/">Canadian Phycological Culture Centre</a> (CPCC)<br>Ontario, Canada<br>
      <br><a href="http://www.wfcc.info/">World Federation for Culture Collections</a> (WFCC)</td></td>
    </tr>
  </table>
  
                <br><b>Organizations as Referenced by UTEX</b></b><table border="0" cellpadding="0" style="border-collapse: collapse; font-size: 10pt" width="100%" id="table3">
                  <tr>
                    <td width="50%" valign="top">Culture Collection at the 
                    University of Geneva (Genf)<br>Geneva, Switzerland [dec.]<br>
      <br>Indiana University Culture Collection of Algae (IUCC)<br>Moved to UTEX 
                    in 1976<br>
      <br><a href="http://www.nibb.ac.jp/en/">National Institute of 
                    Basic Biology</a> (NIBB)<br>Okazaki, Japan</td>
                    <td width="50%" valign="top"><a href="http://www.nies.go.jp/biology/mcc/home.htm">
                    National Institute for Environmental Studies Collection</a> 
                    (NIES)<br>Ibaraki, Japan<br>
      <br><a href="https://niva-cca.no">
                    Norwegian Institute for Water Research</a> (NIVA)<br>(Skulberg 
                    1990)<br>Oslo, Norway<br>
      <br><a href="http://www.mba.ac.uk/">Marine Biological Association of the 
                    United Kingdom</a> (Plymouth)<br>Plymouth, England</td>
                  </tr>
                </table>
 
    <br>
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