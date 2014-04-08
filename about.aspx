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
page = "About UTEX"


%>
<LINK REL=STYLESHEET HREF="<%=webroot%>/includes/styleMain.css" TYPE="text/css">
<script language="javascript" src="<%=webroot%>/javascripts/menu.js"></script>
<script>

var content=new Array()
//change the array below to the text associated with your links Expand or contract the array, depending on how many links you have
content[0]='<br><center><div style="width:80%" align="justify"><br><b>History, Structure, and Purposes of UTEX</b><br><br>The Culture Collection of Algae at the University of Texas at Austin, herein designated as <b>UTEX</b>, has been in continuous operation since 1953.  It was established by Richard C. Starr at Indiana University and was moved to its present site in 1976. Dr. Starr was the Director of UTEX from its inception until his untimely death in February of 1998, at which time Jerry J. Brand became the Director.<br><br>The principal <table class="image" align="right"><caption align="bottom"><font type="Arial" size="2">Dr. Jerry Brand</font></caption><tr><td><img src="images/Brand200x180.gif" align="right" vspace="6" hspace="6" width="200" height="180"></td></tr></table>resource of UTEX is its extensive collection of living algae. Nearly 2,800 different strains of algae, representing approximately 200 different genera, are provided to the public at modest charge. The Collection maintains an especially strong representation of freshwater and edaphic green algae and cyanobacteria, but includes representatives of most major algal taxa, including many marine macrophytic green and red algae. All strains in the Collection were obtained as isolates from natural sources, and no genetically altered strains are maintained. Approximately half of UTEX strains are axenic and all cultures are unialgal.<br><br>The Culture Collection of Algae is administrated as an Organized Research Unit of the University of Texas in Austin through the College of Natural Sciences. Its principal administrative officer is a Director who is responsible for establishing and enforcing policies regarding the management of UTEX.  The resources of UTEX are managed through a Curator. The primary duties of UTEX staff are transferring cultures to fresh media on regular schedules, shipping cultures to users, keeping records related to sales and inventory, preparing media, and managing glassware.<br><br>The principal function of UTEX is the maintenance of its diverse stock of living algae, in order to make these algal strains available to a user community worldwide at modest cost. Cultures in the Collection are used especially for research, but also for biotechnology development, teaching, water quality assessment, food for aquatic animals, and a variety of other purposes. UTEX does not impose restrictions regarding the use of cultures that are purchased and does not assume any responsibility for cultures that are sold and sent away from the facility.<br><br>UTEX is a nonprofit organization. Principal financial support is obtained through the National Science Foundation of the U.S.A. Additional support comes from the College of Natural Sciences of The University of Texas at Austin and through the sale of cultures to the user community.</div></center><br>'
content[1]='<br><center><div style="width:70%" align="left"><br><b>Selected Publications - Dr. David Nobles, Jr.</b><br><br>Nobles, DR Jr. and Brown, RM Jr. (2008) Transgenic expression of Gluconacetobacter xylinus strain ATCC 53582 cellulose synthase genes in the cyanobacterium Synechococcus leopoliensis strain UTCC 100. Cellulose 15(5): 691-701.<br><br>Nobles, DR Jr. and Brown, RM Jr. (2007) Many Paths up the Mountain: Tracking the Evolution of Cellulose Biosynthesis, in Brown, RM Jr. and Saxena IM eds., Cellulose: Molecular and Structural Biology. Springer, The Netherlands, pp. 1-15.<br><br>Nobles, DR Jr., Romanovicz, DK, Brown, RM Jr. (2001) Cellulose in the Cyanobacteria. Origin of Vascular Plant Cellulose Synthase? Plant Physiology, 127(2): 529-542.</div></center><br>'
content[2]='<br><center><div style="width:80%" align="left"><br><b>Dr. David Nobles, Jr.</b><br><br>Dr. David R. Nobles, Jr. earned a Ph.D. in Botany from the University of Texas at Austin in 2006. He studied under Dr. R. Malcolm Brown, Jr., a noted phycologist, microscopist, cell biologist, and leading cellulose researcher. During his time in the R. Malcolm Brown, Jr. Laboratory, Dr. Nobles became familiar with diverse algae via the study of cell wall biosynthesis. His doctoral research focused on the cell biology, molecular biology, and biotechnological aspects of cellulose biosynthesis by cyanobacteria. He received the Outstanding Dissertation Award for his dissertation entitled "Cellulose in the Cyanobacteria". His postdoctoral research focused on the development of cyanobacteria as sources for biofuel feedstocks. To date, he has developed methods for the cyanobacterial production of cellulose, glucose, and sucrose. Dr. Nobles is a co-author of multiple patents based on this research and is a founding member of Phykotek, Inc., a startup company dedicated to the production of cyanobacterial feedstocks. His current research interests include expanding the number of sequenced algal genomes; the development of novel algal systems for genetic and metabolic engineering; utilizing the amazing diversity of algae for biotechnological applications including the production of pharmaceuticals, biomass, and biofuels; and the use of algae for CO<sub>2</sub> mitigation.</div></center><br>'
content[3]='<br><center><b>Patents</b><br><Br><TABLE BORDER=1 cellpadding=5 width="80%"><font type="verdana" size="2"><TR><TD><font type="verdana" size="2"><center><b>Title<b></TD><TD width=125><font type="verdana" size="2"><center><b>Patent Number</b></TD><TD width=100><font type="verdana" size="2"><center><b>Year Filed</b></TD><TD width=175><font type="verdana" size="2"><center><b>Inventors</b></TD></TR><TR><TD><font type="verdana" size="2">Expression of Foreign Cellulose Synthase Genes in Photosynthetic Prokaryotes (Cyanobacteria)</TD><TD><font type="verdana" size="2"><center>20080113413</TD><TD><font type="verdana" size="2"><center>2007</TD><TD><font type="verdana" size="2">R. Malcolm Brown, Jr.<br>David R. Nobles, Jr.</TD></TR><TR><TD><font type="verdana" size="2">Transgenic cyanobacteria:  A novel direct secretion of glucose for the production of biofuels</TD><TD><font type="verdana" size="2"><center>20080085520</TD><TD><font type="verdana" size="2"><center>2007</TD><TD><font type="verdana" size="2">R. Malcolm Brown, Jr.<br>David R. Nobles, Jr.</TD></TR><TR><TD><font type="verdana" size="2">Controlled, direct secretion of sucrose by cyanobacteria for the production of biofuels and plastics</TD><TD><font type="verdana" size="2"><center>20080124767</TD><TD><font type="verdana" size="2"><center>2007</TD><TD><font type="verdana" size="2">R. Malcolm Brown, Jr.<br>David R. Nobles, Jr.</TD></TR><TR><TD><font type="verdana" size="2">A cellulose producing marine cyanobacterium for ethanol production</TD><TD><font type="verdana" size="2"><center>20080085536</TD><TD><font type="verdana" size="2"><center>2007</TD><TD><font type="verdana" size="2">R. Malcolm Brown, Jr.<br>David R. Nobles, Jr.</TD></TR></TR></font></TABLE></center><br>'

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

<style type="text/css">
.style1 {
	font-family:Arial;	
}

table.curvedEdges { border:5px solid green;-webkit-border-radius:13px;-moz-border-radius:13px;-ms-border-radius:13px;-o-border-radius:13px;border-radius:13px; }
table.curvedEdges td, table.curvedEdges th { border-bottom:1px dotted gray;padding:5px; }

</style>

</head>

<body>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
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
  <td width = 810 colspan = 1>
  
  <br>

<!--------------------BEGIN MAIN CONTENT-------------------------->
<b><font color="CC6600">Contact UTEX </font>
  <center><table style="width: 10%">
	  <tr>
		  <td><div class="fb-follow" data-href="https://www.facebook.com/UTEXalgae" data-colorscheme="light" data-layout="button" data-show-faces="true"></div></td>
		  <td><a href="https://twitter.com/UTEX_CC" class="twitter-follow-button" data-show-count="false">Follow @UTEX_CC</a>
</td>
	  </tr>
  </table></center>
  </b><p>

<table border="0" cellpadding="0" cellspacing="0" width="790" bordercolor="#111111" style="font-size: 10pt">
            <tr>
                <td width="150" valign="top" ALIGN="RIGHT"> <font color="CC6600"><b>MAILING ADDRESS</b></font><br></td>
                <td width="10">&nbsp;</td>
                <td style="width: 533px">
                  The University of Texas at Austin<br>
                  The Culture Collection of Algae (UTEX)<br>
                  205 W. 24th St. Stop A6700<br>Austin, TX 78712-1240<br>USA<br>
                  <br>
		</td>
                <td width="150" valign="top" ALIGN="RIGHT"> <font color="CC6600"><b>NON-POSTAL DELIVERIES</b></font><br></td>
                <td width="10">&nbsp;</td>
                <td style="width: 533px">
                  <br>The Culture Collection of Algae (UTEX)<br>
                  MCDB, Bio Labs 311<br>
                  205 W. 24th St.<br>
                  The University of Texas at Austin<br>
                  Austin, TX 78712<br>
                  USA<br>
                  <br>
		</td>
            </tr>
            <tr>
                <td width="150" valign="top" ALIGN="RIGHT"><font color="CC6600"><b>PHONE</b></font></td>
                <td width="10">&nbsp;</td>
                <td style="width: 533px">

                  (512) 471-4019<br>
                  <br></td>
                <td width="150" valign="top" ALIGN="RIGHT"><font color="CC6600"><b>FAX</b></font>
		</td>

                <td></td>
                <td style="width: 533px">
                  (512) 471-0354<br>&nbsp;
		</td>
            </tr>
	    <TR>
		<TD VALIGN="bottom" ALIGN="LEFT" COLSPAN="3">
                   <b><font color="CC6600">
             INQUIRIES
                  REGARDING </font></b>
		</TD>
	    </tr>
                                    <tr>
                <td width="150" valign="top" ALIGN="RIGHT">Ordering</td>
                <td width="10">&nbsp;</td>
                <td style="width: 533px"><a href="mailto:utalgae@uts.cc.utexas.edu">Nick 
				Davis</a> Business Manager</td>
                <td width="150" valign="top" ALIGN="RIGHT">
                         Administration & Accessioning	</td>
                						<td></td>
                <td valign="top" style="width: 533px">
                   <a href="mailto:dnobles@mail.utexas.edu">Dr. David Nobles, Jr</a> Curator
		</td>
            </tr>
           
            
                                    <tr>
                <td width="150" valign="top" ALIGN="RIGHT">&nbsp;</td>
                <td width="10">&nbsp;</td>
                <td style="width: 533px">&nbsp;</td>
                <td width="150" valign="top" ALIGN="RIGHT">
                         &nbsp;</td>
                						<td>&nbsp;</td>
                <td valign="top" style="width: 533px">
                   &nbsp;</td>
            </tr>
           
            
                                    <tr>
                <td width="150" valign="top" ALIGN="RIGHT">Culture Maintenance &amp; 
				Media</td>
                <td width="10">&nbsp;</td>
                <td style="width: 533px"><a href="mailto:stephen.o.pena@gmail.com">Stephen Peña</a> Culture Collection Manager
				<br><a href="mailto:ana.aguilar@utexas.edu">Ana Aguilar</a> 
				Facility Manager</td>
                <td width="150" valign="top" ALIGN="RIGHT">
                         &nbsp;</td>
                						<td>&nbsp;</td>
                <td style="width: 533px"><a href="mailto:jbrand@mail.utexas.edu">Dr. Jerry Brand</a> Director
		</td>
            </tr>
           
            
                        <tr>
                <td width="150" valign="top" ALIGN="RIGHT">&nbsp;</td>
                <td width="10">&nbsp;</td>
                <td style="width: 533px">&nbsp;
		</td>
            </tr>
            


            <tr>
                <td width="150" valign="top" ALIGN="RIGHT">&nbsp;</td>
                <td width="10">&nbsp;</td>
                <td style="width: 533px">&nbsp;
		</td>
	    </TR>
                        
        </table>

  <hr><br>

<center><table style="width: 75%" class="curvedEdges">
	  <tr>
		  <td style="height: 20px; width: 306px;">
	<div onclick="changetext(content[0])" style="cursor:hand; cursor:pointer"><font color="blue" class="style1" size="2">History, Structure, and Purposes of UTEX</font></div>

		  </td>
		  <td style="height: 20px">
	
	<div onclick="changetext(content[1])" style="cursor:hand; cursor:pointer">
		<font color="blue" class="style1" size="2">Selected Publications</font></div>
	
		  </td>
	  </tr>
	  <tr>
		  <td style="height: 20px; width: 306px;">
	<div onclick="changetext(content[2])" style="cursor:hand; cursor:pointer"><font color="blue" class="style1" size="2">Dr. David Nobles, Jr.</font></div>
	
	
	
	
		  </td>
		  <td style="height: 20px">
		  	<div onclick="changetext(content[3])" style="cursor:hand; cursor:pointer"><font color="blue" class="style1" size="2">Patents</font></div>


	
	
		  </td>
	  </tr>
  </table></center>

	

<ilayer id="d1" width="200" height="200" visibility="hide">
	<layer id="d2" width="200" height="200">

		<div id="descriptions" style="visibility:hide" align="left"><br><b><center>Click on the headings above to view more about the UTEX Culture Collection of Algae.</center></b><br><br>
                        <center>
                        <b>UTEX 
                        Staff </b>(November 2013)<br>
                        <img border="0" src="images/UTEXStaff-Fall2013.jpg"  height="300"><br>
                        <br>
                        <b>UTEX Staff (Standing - from left to right):</b> Stephen Pe&ntilde;a, 
						Jessica Boice, Ana Aguilar, Hannah Sieben, Madison 
						Becker, Emily 
						Dewar, Chayanit Sasiponganan, Nick Davis, Heather 
						Anderson, Andrew Cho, Dr. Schonna Manning, Julie Choi, 
						Rebecca Knight, Tinisha Hancock<br>(Kneeling - from left to right): Dr. Jerry Brand, Dr. David Nobles<br><i>Not pictured: John Ganapin, Kathleen Lee, Ali Yaqubi</i></p>
</center></b></div></layer></ilayer>








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
