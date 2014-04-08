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
page = "Teaching Kits: Edible Algae"


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


<!--------------------BEGIN MAIN CONTENT-------------------------->

  <img border="0" src="http://web.biosci.utexas.edu/utex/images/teachingkits/edible-1.jpg" align="right" vspace="6" hspace="6" width="184" height="184"><img border="0" src="http://web.biosci.utexas.edu/utex/images/teachingkits/edible-2.jpg" align="right" vspace="6" hspace="6" width="184" height="184"><i>Spirulina</i> is a photosynthetic 
  alga (actually a kind of bacterium) that grows to very high densities in some tropical lakes. It appears 
  as long, thin threads, spiral in shape, as the name suggests. It is grown commercially as a super food because of its high concentration of nutrients. Beta carotene, a good antioxidant, is ten times more concentrated in 
  <i>Spirulina</i> than in carrots. <i>Spirulina</i> is also rich in other antioxidants and is said to boost energy and health. 
  <i>Spirulina</i> is commonly processed and sold in health-food stores as a powder, flakes, 
  and tablets.<br><br><i>Chlorella</i> is a single-celled freshwater alga that contains a high 
  concentration of chlorophyll and protein. 
  <i>Chlorella</i> is well known for its ability to detoxify heavy metals and pesticides. 
  It is used commercially as a food supplement in Japan, because of its high nutrient value and 
  reported ability to strengthen the immune system.<br><br><i>Porphyra</i> is a red marine alga. A commercial product of 
  <i>Porphyra</i> is called Nori, which is most commonly used as a component of sushi. Nori lacks a cell wall, making it easy to 
  digest. The high concentration of vitamins A and C in Nori are comparable to the vitamin contents of spinach and oranges respectively.<br>
  <br>While the contents of these tubes<span lang="en-us">, or material collected in 
  the field,</span> are not edible, commercial products 
  containing the same species would compliment algae in the kit and can be found at 
  variety of health-food and grocery stores. Cookies and other foods can be made 
  or coated with commercially purchased, food-grade <i>Spirulina</i>. <br><br>
  <i>Experiment Suggestions:</i><br><li>How does nutrient content of the growth medium affect 
  protein content of the algae?</li><br><br><i>Kit Price:</i><br><li>One tube each of 
  <i>Spirulina</i>, 
  <i>Chlorella</i>, and<i> Porphyra</i> - $60<br><br></li>
  <a href="http://utdirect.utexas.edu/txshop/item_details.WBX?application_name=BSALGAES&amp;component=0&amp;dept_prefix=BS&amp;item_id=10&amp;cat_seq_chosen=05&amp;subcategory_seq_chosen=000http://utdirect.utexas.edu/txshop/item_details.WBX?application_name=BSALGAES&amp;component=0&amp;dept_prefix=BS&amp;item_id=10&amp;cat_seq_chosen=05&amp;subcategory_seq_chosen=000" target="_blank">
  <img src="images/orderhere01.gif" border="0"></a><br>


  <p align=center>
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
