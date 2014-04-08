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
page = "UTEX Resources"


%>
<LINK REL=STYLESHEET HREF="<%=webroot%>/includes/styleMain.css" TYPE="text/css">
<script language="javascript" src="<%=webroot%>/javascripts/menu.js"></script>

<script>

var content=new Array()
//change the array below to the text associated with your links Expand or contract the array, depending on how many links you have
content[0]='<br><b>Culture Maintenance</b><br>  General growth conditions utilized at UTEX for long-term culture maintenance.<br><br><center><img src="images/utex.jpg"></center>'
content[1]='<br><b>Algal Media Recipes</b><br>  Recipes available for all 88 media-types used at UTEX.'
content[2]='<br><b>Strain Accessioning</b><br>  UTEX accepts new strains for accessioning into our collection.<br><br><center><img src="images/depositstrain01.jpg"></center>'
content[3]='<br><b>Cryopreservation of Microalgae</b><br>  Cryopreservation provides a secure backup for algal strains, stabilizes genomic integrity, preserves culture quality, minimizes maintenance costs, and reduces the risk of catastrophic loss.  View a typical standard operating procedure (SOP) for cryopreservation of microalgae.'
content[4]='<br><b>Select Algal Collections</b><br><br>Freshwater Diatom Collection<br>Extreme Environment Collection<br>Snow Collection<br>Salt Plains Collection'
content[5]='<br><b>Other Algal Culture Collections and Resources</b><br>  Information on other Culture Collections, phycological societies, and organizations referenced by UTEX throughout the world.<br><br><center><img src="images/algalimage02.jpg"></center>'

function regenerate(){
window.location.reload()
}
function regenerate2(){
if (document.layers){
appear()
setTimeout("window.onresize=regenerate",450)
}
}

function changetext(whichcontent){

if (document.all||document.getElementById){
cross_el=document.getElementById? document.getElementById("descriptions"):document.all.descriptions
cross_el.innerHTML='<font face=""><small>'+whichcontent+'</small><font>'
}
else if (document.layers){
document.d1.document.d2.document.write('<font face=""><small>'+whichcontent+'</small></font>')
document.d1.document.d2.document.close()
}

}

function appear(){
document.d1.visibility='show'
}

window.onload=regenerate2


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
  <td width = 810 colspan = 1><br>


<!--------------------BEGIN MAIN CONTENT-------------------------->

<center>

<table width="700" border=0>
<tr>
<th colspan="1" align=left width=300>
<img src="images/resources.jpg"></th>
<th rowspan="2" width=2></th>
<th colspan="1" align=left width=300>
&nbsp;</th>
</tr>
<tr>

<td width="300" valign=top>
	
<div id="scriptmenu0" style="line-height:25px">
	<strong>
		<font size=2>
			<img src="images/spacer.jpg"> <a href="culturemaintenance.aspx" onMouseover="changetext(content[0])">Culture Maintenance</a><br>
			<img src="images/spacer.jpg"> <a href="media.aspx" onMouseover="changetext(content[1])">Algal Media Recipes</a><br>
			<img src="images/spacer.jpg"> <a href="depositing.aspx" onMouseover="changetext(content[2])">Strain Accessioning</a><br>
			

		</font>
	</strong>
</div>
	</td>
	
	
	<td width="300" valign=top>
	
	<div id="scriptmenu" style="line-height:25px">
	<strong>
		<font size="2">
<img src="images/spacer.jpg"> <a href="protocols.aspx" onMouseover="changetext(content[3])">Cryopreservation of Microalgae</a><br>
			<img src="images/spacer.jpg"> <a href="" onMouseover="changetext(content[4])">Select Algal Collections</a><br>
			<img src="images/spacer.jpg"> <a href="otherresources.aspx" onMouseover="changetext(content[5])">
		Other Algal Culture Collections &amp; Resources</a><br>
		</font>
		
</strong>

</div>
	
	</td>
</tr>
</table>
</center>

<center>
<table border="0">
<tr>
<td width="650">

<ilayer id="d1" width="200" height="200" visibility="hide">
<layer id="d2" width="200" height="200">
<br><div id="descriptions" align="left">

<!--Change below to default content of your own-->
<b><p></p><font size=2>Welcome to the UTEX Resources page.</font></b><br>
<small>&nbsp;&nbsp;&nbsp;&nbsp; Hover over a link to get a short description.</small><br>
        
<!--Stop editting-->

</div>
</layer>
</ilayer>



</td>




<td width="50"></td>
</tr>



</table> 
</center>

<br><br>

<center>
<table width="700" border=0>
<td colspan="0" align="left" width="300">
</th>
</td>
<td colspan=0 align=left width=400>
</td>
</table>
</center>

            </tr>

        </table>









<!--------------------END MAIN CONTENT-------------------------->

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
