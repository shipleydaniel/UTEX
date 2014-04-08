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
page = "UTEX Products"


%>
<LINK REL=STYLESHEET HREF="<%=webroot%>/includes/styleMain.css" TYPE="text/css">
<script language="javascript" src="<%=webroot%>/javascripts/menu.js"> </script>

<script>

var content=new Array()
//change the array below to the text associated with your links Expand or contract the array, depending on how many links you have
content[0]='<br><b>Living Algal Strains</b><br>A freshly inoculated aliquot of living algae.<br><br><center><img src="images/livingalgal01.jpg"></center>'
content[1]='<br><b>Bulk Microalgae</b><br>Wanting more than a starter culture? Do you not have the time or resources to grow your own? Bulk cultures provide liter or half liter quantities of dense cell volumes.<br><br><center><img src="images/bulkculture01.jpg"></center>'
content[2]='<br><b>Algal Culturing Media</b><br>All 88 media recipes are available to purchase in liter and test tube volumes.<br><br><center><img src="images/media02.jpg"></center>'
content[3]='<br><b>UTEX Genomic DNA</b><br>Genomic DNA from most UTEX strains are available for purchase.'
content[4]='<br><b>Teaching Kits</b><br>UTEX offers teaching kits for use in classrooms and for individual science projects.<br><br><center><img src="images/teachingkit02.jpg"></center>'
content[5]='<br><b>Algal Images</b><br>High resolution versions of all images on our website are available for purchase.<br><br><center><img src="images/algalimage02.jpg"></center>'
content[6]='<br><b>Private Strain Deposition</b><br>UTEX accepts private strains that are available exclusively to the depositor.<br><br><center><img src="images/depositstrain01.jpg"></center>'
content[7]='<br><b>Genetic and Biochemical Analysis</b><br>Coming Soon'
content[8]='<br><b>Strain Identification</b><br>UTEX performs microscopic and DNA sequencing analyses for algal strain identification.'
content[9]='<br><b>Cryogenic Storage</b><br>Cryopreservation provides a secure backup for algal strains, stabilizes genomic integrity, preserves culture quality, minimizes maintenace costs, and reduces the risk of catastrophic loss.<br><br><center><img src="images/cryo01.jpg"></center> '
content[10]='<br><b>Photobioreactors</b><br>These laboratory scale Photobioreactors and Vertical Growth Modules offer an optimized design for delivering light to maximize growth and product accumulation rates.<br><br><center><img src="images/photobioreactor7.jpg"><img src="images/algeternal-main.jpg" height="202">  </center>'


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
  <td>
  <img src="images/spacer.gif" height='0' width='10'> </td>
  <td width = 810 colspan = 1><br>


<!--------------------BEGIN MAIN CONTENT-------------------------->
<center>

<table width="700" border=0>
<tr>
<th colspan="1" align=left width=300>
<img src="images/products.jpg"></th>
<th rowspan="2" width=2></th>
<th colspan="1" align=left width=300>
&nbsp;</th>
</tr>
<tr>

<td width="300" valign=top>
	
<div id="scriptmenu0" style="line-height:25px">
	<strong>
		<font size=2>
			<img src="images/spacer.jpg"> <a href="livingalgalstrains.aspx" onMouseover="changetext(content[0])">Living Algal Strains</a><br>
			<img src="images/spacer.jpg"> <a href="bulkcultures.aspx" onMouseover="changetext(content[1])">Bulk Microalgae</a><br>
			<img src="images/spacer.jpg"> <a href="prodmedia.aspx" onMouseover="changetext(content[2])">Algal Culturing Media</a><br>
			<img src="images/spacer.jpg"> <a href="genomicDNA.aspx" onMouseover="changetext(content[3])">UTEX Genomic DNA</a><br>
			<img src="images/spacer.jpg"> <a href="prodimages.aspx" onMouseover="changetext(content[5])">Algal Images</a><br>
			<img src="images/spacer.jpg"> <a href="photobioreactoroverview.aspx" onMouseover="changetext(content[10])">Photobioreactors</a><br>

		</font>
	</strong>
</div>
	</td>
	
	
	<td width="300" valign=top>
	
	<div id="scriptmenu" style="line-height:25px"><strong>
<br>
<a href="http://utdirect.utexas.edu/txshop/list.WBX?component=0&amp;application_name=BSALGAEShttp://utdirect.utexas.edu/txshop/list.WBX?component=0&amp;application_name=BSALGAES" target="_blank">
		<img src="images/txshoporder.gif" border="0"></a><br>
<a href="faxorderform.doc">
		<img src="images/faxorder.gif" border="0"></a><br>
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
<b><p></p><font size=2>Welcome to the products page </font></b><br>
<small>Hover over a link to get a short description of what each product has to offer!</small><br>
        
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
