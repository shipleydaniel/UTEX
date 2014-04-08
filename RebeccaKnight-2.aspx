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
page = "UTEX Culture Collection Lipid Extractions and Analysis"
%>
<LINK REL=STYLESHEET HREF="<%=webroot%>/includes/styleMain.css" TYPE="text/css">
<script language="javascript" src="<%=webroot%>/javascripts/menu.js"></script>
<STYLE TYPE="text/css">
<!--
.indented
   {
   padding-left: 10pt;
   }
.auto-style27 {
	margin-left: 40px;
}
.auto-style28 {
	margin-top: 7px;
}
-->
</STYLE>
<script src="../javascripts/jquery-1.7.2.min.js"></script>
<script src="../javascripts/lightbox.js"></script>
<link href="../includes/lightbox.css" rel="stylesheet" />

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
  <a href="images/atp3-default.jpg" rel="lightbox[ATP3]" title="From ATP<sup>3</sup> Spring 2013: Principles and Processes Workshop held at AzCATI on the ASU Polytechnic Campus in Mesa, AZ"><div style="width:254px;float:right;font-size: 80%; text-align: center; margin-bottom:10px;"><img src="http://www.wageningenur.nl/upload_mm/6/f/a/32a77c13-3b00-4b65-acb5-11e7f84baf7a_cropped_Nile%20red_490x330.jpg" alt="Nile Red Stain" width=254 height=250 style="color: #008000;margin-left:15px;" border=3 /></div></a>
  <a href="images/atp3-2.jpg" rel="lightbox[ATP3]" title="From ATP<sup>3</sup> Spring 2013: Principles and Processes Workshop held at AzCATI on the ASU Polytechnic Campus in Mesa, AZ"></a>
  <a href="images/atp3-3.jpg" rel="lightbox[ATP3]" title="From ATP<sup>3</sup> Spring 2013: Principles and Processes Workshop held at AzCATI on the ASU Polytechnic Campus in Mesa, AZ"></a>
  <font size="2" face="Arial"><p style="margin-top: 0; margin-bottom: 0" align="justify"><br>	     
  
  <strong>UTEX Culture Collection Lipid Extractions and Analysis</strong></p>
  
  <p align="justify"><strong>Description and goals will go here?</strong> asdf 
  asdf asdf asdf asdf asdf asdf
  &nbsp;asdf asdf asdf asdf asdf asdf asdf&nbsp; 
  asdf asdf asdf asdf asdf asdf asdf&nbsp; asdf asdf asdf asdf asdf asdf asdf&nbsp; 
  asdf asdf asdf asdf asdf asdf asdf&nbsp; asdf asdf asdf asdf asdf asdf asdf&nbsp; 
  asdf asdf asdf asdf asdf asdf asdf&nbsp; asdf asdf asdf asdf asdf asdf asdf&nbsp; 
  asdf asdf asdf asdf asdf asdf asdf&nbsp; asdf asdf asdf asdf asdf asdf asdf&nbsp; 
  asdf asdf asdf asdf asdf asdf asdf&nbsp; asdf asdf asdf asdf asdf asdf asdf&nbsp; 
  asdf asdf asdf asdf asdf asdf asdf&nbsp; asdf asdf asdf asdf asdf asdf asdf&nbsp; 
  asdf asdf asdf asdf asdf asdf asdf&nbsp; asdf asdf asdf asdf asdf asdf asdf&nbsp; 
  asdf asdf asdf asdf asdf asdf asdf&nbsp; asdf asdf asdf asdf asdf asdf asdf&nbsp; 
  asdf asdf asdf asdf asdf asdf asdf&nbsp; asdf asdf asdf asdf asdf asdf asdf&nbsp; 
  asdf asdf asdf asdf asdf asdf asdf&nbsp; asdf asdf asdf asdf asdf asdf asdf&nbsp; 
  asdf asdf asdf asdf asdf asdf asdf&nbsp; asdf asdf asdf asdf asdf asdf asdf&nbsp; 
  asdf asdf asdf asdf asdf asdf asdf&nbsp; asdf asdf asdf asdf asdf asdf asdf&nbsp; 
  asdf asdf asdf asdf asdf asdf asdf&nbsp; asdf asdf asdf asdf asdf asdf asdf&nbsp; 
  asdf asdf asdf asdf asdf asdf asdf&nbsp; asdf asdf asdf asdf asdf asdf asdf&nbsp; 
  asdf asdf asdf asdf asdf asdf asdf&nbsp; asdf asdf asdf asdf asdf asdf asdf&nbsp; 
  asdf asdf asdf asdf asdf asdf asdf&nbsp; asdf asdf asdf asdf asdf asdf asdf&nbsp; 
  asdf asdf asdf asdf asdf asdf asdf&nbsp; asdf asdf asdf asdf asdf asdf asdf&nbsp; 
  asdf asdf asdf asdf asdf asdf asdf&nbsp; asdf asdf asdf asdf asdf asdf asdf&nbsp; 
  asdf asdf asdf asdf asdf asdf asdf&nbsp; asdf asdf asdf asdf asdf asdf asdf&nbsp; 
  asdf asdf asdf asdf asdf asdf asdf&nbsp; asdf asdf asdf asdf asdf asdf asdf&nbsp; 
  asdf asdf asdf asdf asdf asdf asdf&nbsp; asdf asdf asdf asdf asdf asdf asdf&nbsp; 
  asdf asdf asdf asdf asdf asdf asdf&nbsp; asdf asdf asdf asdf asdf asdf asdf
  </p>
  <p align="justify">&nbsp;</p>
  <p align="justify"><strong>Protocols and Process Diagram</strong></p>
  <p align="justify"><strong>Protocols and process diagram of project.
  </strong>
  &nbsp;asdf asdf asdf asdf asdf asdf asdf&nbsp; 
  asdf asdf asdf asdf asdf asdf asdf&nbsp; asdf asdf asdf asdf asdf asdf asdf&nbsp; 
  asdf asdf asdf asdf asdf asdf asdf&nbsp; asdf asdf asdf asdf asdf asdf asdf&nbsp; 
  asdf asdf asdf asdf asdf asdf asdf&nbsp; asdf asdf asdf asdf asdf asdf asdf&nbsp; 
  asdf asdf asdf asdf asdf asdf asdf&nbsp; asdf asdf asdf asdf asdf asdf asdf&nbsp; 
  asdf asdf asdf asdf asdf asdf asdf&nbsp; asdf asdf asdf asdf asdf asdf asdf&nbsp; 
  asdf asdf asdf asdf asdf asdf asdf&nbsp; asdf asdf asdf asdf asdf asdf asdf&nbsp; 
  asdf asdf asdf asdf asdf asdf asdf&nbsp; asdf asdf asdf asdf asdf asdf asdf&nbsp; 
  asdf asdf asdf asdf asdf asdf asdf&nbsp; asdf asdf asdf asdf asdf asdf asdf&nbsp; 
  asdf asdf asdf asdf asdf asdf asdf&nbsp; asdf asdf asdf asdf asdf asdf asdf&nbsp; 
  asdf asdf asdf asdf asdf asdf asdf&nbsp; asdf asdf asdf asdf asdf asdf asdf&nbsp; 
  asdf asdf asdf asdf asdf asdf asdf&nbsp; asdf asdf asdf asdf asdf asdf asdf
  </p>
 
  <center><img alt="" src="images/rk/img5.gif" width="700"></center></p>

  <p style="margin-bottom: 0">
  
  <strong>Notes on Harvesting:</strong></p>


  <ul class="auto-style28"><li>For dry weight use pre-ashed 0.45 GF Filter &gt; 15 ml </li>
  <li>1st set lipid samples tried filtering </li>
  <li class="auto-style27">Pros: all cells captured</li>
  	<li class="auto-style27">Cons: filtration time, massive slurry created during solvent extracts, 
  requiring high solvent volume </li>
  
  <li>2nd set spun 15 ml 2000xg, rinsed with 500 ul DIW </li>
<li class="auto-style27">Pros: Fast, small volume </li>
  <li class="auto-style27">Cons: Some cells might not spin down well </li></ul>
  
  
    
    <br>
  
  
    
    <p style="margin-bottom: 0">
   <b>
    Lipid Extraction ***Modified Folch&#39;s Method:</b></p>
  <center><img alt="" height="441" src="images/rk/imgB.jpg" width="700"></center><br>
  
  
    
  <p style="margin-bottom: 0">
   <strong>Data</strong>:</p>
  
  <center><img alt="" src="images/rk/imgC.gif" width="725"></center>
  <br><hr><br>
  <center><img alt="" src="images/rk/imgE.gif" width="725"></center><br><hr><br><br>
  <center><img alt="" src="images/rk/img15.jpg" width="725"></center><br><hr><br><br>
  <center><img alt="" src="images/rk/img18.jpg" width="725"></center><br><hr><br>
  <p style="line-height: 150%; margin-bottom: 0">
  <b>Dry Weight and Ash-Free Dry Weight per Harvested Volume (g/L):</b></p>
  <center><img alt="" src="images/rk/img10.jpg" width="701"></center><br>

  <p style="margin-bottom: 0">
   <b>Total Lipids per Ash-Free Dry Weight Cells (mg/g):</b></p>
  <center><img alt="" src="images/rk/img13.jpg" width="701"></center><br>

   <p style="margin-bottom: 0"><b>GC Screen Shots:</b></p>
  <p style="margin-bottom: 0">
  <center><img alt="" src="images/rk/img1C.jpg" width="725"></center></p>
   
   <br><br>




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