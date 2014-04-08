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
page = "Teaching Kits: Shapes of Algae"


%>
<LINK REL=STYLESHEET HREF="<%=webroot%>/includes/styleMain.css" TYPE="text/css">
<script language="javascript" src="<%=webroot%>/javascripts/menu.js"></script>

<style type="text/css">
.auto-style1 {
	margin-bottom: 1px;
}
.auto-style2 {
	margin-top: 0px;
}
.auto-style3 {
	text-align: right;
	font-size: x-small;
}
.auto-style4 {
	font-size: small;
}
.auto-style5 {
	font-size: x-small;
	font-style: italic;
}
.auto-style6 {
	font-size: x-small;
}
.auto-style7 {
	font-size: small;
	text-align: left;
}
.auto-style8 {
	font-size: small;
	text-align: center;
}
.auto-style9 {
	margin-bottom: 0px;
}
.auto-style10 {
	margin-top: 15px;
}
</style>

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


<!--------------------BEGIN MAIN CONTENT-------------------------->

  <img border="0" src="http://web.biosci.utexas.edu/utex/images/teachingkits/shapes-2.jpg" align="right" vspace="6" hspace="6" width="184" height="184"><img border="0" src="http://web.biosci.utexas.edu/utex/images/teachingkits/shapes-1.jpg" align="right" vspace="6" hspace="6" width="184" height="184"><p>Students can observe the morphological and swimming characteristics of different genera within a class of algae. Each tube contains enough algae to prepare about 50 slides.</p>
  <p class="auto-style1"><strong>Experiment Suggestions:</strong><br>
<ul class="auto-style2"><li>How do the number and location of flagella affect motility in a stationary pond environment? in a flowing stream environment?</li>
<li>How does light intensity and location of light affect cell movement?</li></ul></p>
  
  <p class="auto-style9"><strong>Prices:</strong><p class="auto-style10" style="width: 636px">
  <table style="width: 83%">
	  <tr>
		  <td class="auto-style4" style="width: 402px"><strong>Assortment of 
		  algae by class (six tubes) - $120</strong></td>
		  <td class="auto-style8">&nbsp;</td>
	  </tr>
	  <tr>
		  <td class="auto-style7" style="width: 402px">Chlorophyceae</td>
		  <td class="auto-style8">&nbsp;</td>
	  </tr>
	  <tr>
		  <td class="auto-style3" style="width: 402px">
		  <span class="auto-style5">&nbsp;Chlamydomonas</span><span class="auto-style6">, 
		  </span><span class="auto-style5">Dunaliella</span><span class="auto-style6">,
  		</span><span class="auto-style5">Oocystis</span><span class="auto-style6">, 
		  </span><span class="auto-style5">Pediastrum</span><span class="auto-style6">, 
		  </span><span class="auto-style5">Pandorina</span><span class="auto-style6">, and 
		  </span><span class="auto-style5">Volvox</span></td>
		  <td class="auto-style8"><a href="http://utdirect.utexas.edu/txshop/item_details.WBX?application_name=BSALGAES&amp;component=0&amp;dept_prefix=BS&amp;item_id=14&amp;cat_seq_chosen=05&amp;subcategory_seq_chosen=000http://utdirect.utexas.edu/txshop/item_details.WBX?application_name=BSALGAES&amp;component=0&amp;dept_prefix=BS&amp;item_id=14&amp;cat_seq_chosen=05&amp;subcategory_seq_chosen=000" target="_blank"><img src="images/orderhere01.gif" border="0"></a></td>
	  </tr>
	  <tr>
		  <td class="auto-style7" style="width: 402px">Cyanophyceae </td>
		  <td class="auto-style8">&nbsp;</td>
	  </tr>
	  <tr>
		  <td class="auto-style3" style="width: 402px">
		  <span class="auto-style5">Cylindrospermum</span><span class="auto-style6">, 
  		</span><span class="auto-style5">Merismopedia</span><span class="auto-style6">, 
		  </span><span class="auto-style5">Nostoc</span><span class="auto-style6">, 
		  </span><span class="auto-style5">Phormidium</span><span class="auto-style6">, 
		  </span><span class="auto-style5">Spirulina</span><span class="auto-style6">, and 
		  </span><span class="auto-style5">Synechococcus</span><span class="auto-style6">
		  </span></td>
		  <td class="auto-style8"><a href="http://utdirect.utexas.edu/txshop/item_details.WBX?application_name=BSALGAES&amp;component=0&amp;dept_prefix=BS&amp;item_id=15&amp;cat_seq_chosen=05&amp;subcategory_seq_chosen=000http://utdirect.utexas.edu/txshop/item_details.WBX?application_name=BSALGAES&amp;component=0&amp;dept_prefix=BS&amp;item_id=15&amp;cat_seq_chosen=05&amp;subcategory_seq_chosen=000" target="_blank"><img src="images/orderhere01.gif" border="0"></a></td>
	  </tr>
	  <tr>
		  <td class="auto-style7" style="width: 402px">Dinophyceae</td>
		  <td class="auto-style8">&nbsp;</td>
	  </tr>
	  <tr>
		  <td class="auto-style3" style="width: 402px">
		  <span class="auto-style5">Amphidium</span><span class="auto-style6">, 
		  </span><span class="auto-style5">Heterocapsa</span><span class="auto-style6">, 
  		</span><span class="auto-style5">Gyrodinium</span><span class="auto-style6">, 
		  </span><span class="auto-style5">Perdinium</span><span class="auto-style6">, 
		  </span><span class="auto-style5">Pyrocystis</span><span class="auto-style6">, and 
		  </span><span class="auto-style5">Zooxanthella</span></td>
		  <td class="auto-style8"><a href="http://utdirect.utexas.edu/txshop/item_details.WBX?application_name=BSALGAES&amp;component=0&amp;dept_prefix=BS&amp;item_id=16&amp;cat_seq_chosen=05&amp;subcategory_seq_chosen=000http://utdirect.utexas.edu/txshop/item_details.WBX?application_name=BSALGAES&amp;component=0&amp;dept_prefix=BS&amp;item_id=16&amp;cat_seq_chosen=05&amp;subcategory_seq_chosen=000" target="_blank"><img src="images/orderhere01.gif" border="0"></a>&nbsp;</td>
	  </tr>
	  <tr>
		  <td class="auto-style7" style="width: 402px">Euglenophyceae</td>
		  <td class="auto-style8">&nbsp;</td>
	  </tr>
	  <tr>
		  <td class="auto-style3" style="width: 402px">
		  <span class="auto-style5">Colacium</span><span class="auto-style6">, 
		  </span><span class="auto-style5">Euglena</span><span class="auto-style6">, 
		  </span><span class="auto-style5">Eutreptia</span><span class="auto-style6">, 
  		</span><span class="auto-style5">Lepocinclis</span><span class="auto-style6">, 
		  </span><span class="auto-style5">Phacus</span><span class="auto-style6">, and 
		  </span><span class="auto-style5">Trachelomonas</span></td>
		  <td class="auto-style8"><a href="http://utdirect.utexas.edu/txshop/item_details.WBX?application_name=BSALGAES&amp;component=0&amp;dept_prefix=BS&amp;item_id=17&amp;cat_seq_chosen=05&amp;subcategory_seq_chosen=000http://utdirect.utexas.edu/txshop/item_details.WBX?application_name=BSALGAES&amp;component=0&amp;dept_prefix=BS&amp;item_id=17&amp;cat_seq_chosen=05&amp;subcategory_seq_chosen=000" target="_blank"><img src="images/orderhere01.gif" border="0"></a></td>
	  </tr>
	  <tr>
		  <td class="auto-style7" style="width: 402px">Phaeophyceae</td>
		  <td class="auto-style8">&nbsp;</td>
	  </tr>
	  <tr>
		  <td class="auto-style3" style="width: 402px">
		  <span class="auto-style5">Bodanella</span><span class="auto-style6">, 
		  </span><span class="auto-style5">Dictyota</span><span class="auto-style6">, 
  		</span><span class="auto-style5">Ectocarpus</span><span class="auto-style6">, 
		  </span><span class="auto-style5">Sorocarpus</span><span class="auto-style6">, 
		  </span><span class="auto-style5">Spermatochnus</span><span class="auto-style6">, and 
		  </span><span class="auto-style5">Sphacelaria</span></td>
		  <td class="auto-style8"><a href="http://utdirect.utexas.edu/txshop/item_details.WBX?application_name=BSALGAES&amp;component=0&amp;dept_prefix=BS&amp;item_id=18&amp;cat_seq_chosen=05&amp;subcategory_seq_chosen=000http://utdirect.utexas.edu/txshop/item_details.WBX?application_name=BSALGAES&amp;component=0&amp;dept_prefix=BS&amp;item_id=18&amp;cat_seq_chosen=05&amp;subcategory_seq_chosen=000" target="_blank"><img src="images/orderhere01.gif" border="0"></a></td>
	  </tr>
	  </table>
  <i>&nbsp;</i><p align=center>
  <a href="teachingKits.aspx">back</a></p></td>
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
