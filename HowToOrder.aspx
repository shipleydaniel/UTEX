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
page = "How to Order"


%>
<LINK REL=STYLESHEET HREF="<%=webroot%>/includes/styleMain.css" TYPE="text/css">
<script language="javascript" src="<%=webroot%>/javascripts/menu.js"></script>

<style type="text/css">
 p.MsoNormal
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:10.0pt;
	margin-left:0in;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
p.MsoListParagraphCxSpFirst
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
p.MsoListParagraphCxSpMiddle
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
p.MsoListParagraphCxSpLast
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:10.0pt;
	margin-left:.5in;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
p.MsoListParagraph
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:10.0pt;
	margin-left:.5in;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
ol
	{margin-bottom:0in;}
 li.MsoNormal
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:10.0pt;
	margin-left:0in;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
.auto-style4 {
	text-align: center;
}
.auto-style5 {
	margin-left: 14px;
}
.auto-style6 {
	margin-left: 13px;
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
  <p class="p.MsoNormal">&nbsp;</p>
  <p class="p.MsoNormal">All strains of living algae included in the UTEX list 
  of publicly available cultures can be purchased by organizations and individuals, except in cases 
  where a culture has been lost or needs attention to restore its vigor.&nbsp; UTEX does not impose any restrictions regarding the use of cultures 
  purchased from this list.&nbsp; UTEX does not assume responsibility for a culture or its uses after it 
  leaves the UTEX facility.</p>
  <p>&nbsp;</p>
  <p><b>Step 1: Please review our policies:</b></p>
  <ul>
	  <li><a href="orderingpolicies2.aspx">Ordering Policies</a></li>
	  <li><a href="shippingreplacementpolicies2.aspx">Shipping and Replacement 
	  Policies</a></li>
  </ul>
  <p>&nbsp;</p>
  <p><b>Step 2: Methods of Payment</b></p>
  <p class="auto-style5">The preferred method for receiving payment is by credit 
  card (Visa or MasterCard only) via the secure online store, TxShop.  UTEX also accepts credit card orders sent via telephone (512-471-4019), FAX (512-471-0354) or 
  regular mail. <b>Please do not send credit 
  card information via email.</b></p>
  <p class="auto-style5">Payment by check or money order (U.S. dollars only, drawn 
  on a U.S. bank) should be 
  sent to the address below and reference the UTEX 4-digit invoice 
  number:</p>
  <p class="auto-style6">Francisco Valladares<br>
  MCDB<br>
  205 W. 24th St.<br>
  University of Texas at Austin<br>Stop A6700<br>Austin, TX 78712-1240<br>USA</p>
  <p class="auto-style4"><![if !supportLists]>
  
  
  <img border="0" src="images/exclaim.gif" width="15" height="15"><b>
  UTEX does not accept bank-to-bank payments for 
  foreign or U.S. domestic orders.</span></b></p>
  <p>&nbsp;</p>
  <p><b>Step 3: Place an order through one of the following methods:</b></p>
  <ul>
	  <li>
	  <p>Through our online shopping cart, TxShop
	  <ol>
		  <li>
		  Browse the UTEX site and decide what you want 
		  to order.
		  </li><br><br>
		  <li>
		  When you go to order you will be directed to a 
		  new site where you will place your order.
		  <ul>
			  <li>
			  Have the UTEX number(s) and corresponding 
			  scientific name and/or media names available.
			  </li>
			  <li>
			  Add each item separately to the cart.
			  </li>
		  </ul><br>
		  </li>
		  <li>
		  US academic and US government institutions should use the following 
		  discount codes at checkout to obtain the subsidized price of $50 USD 
		  per culture:
		  <ul>
			  <li>
			  us/acad
			  </li>
			  <li>
			  us/gov
			  </li>
		  </ul>
		  </li><br>
		  <li>
		  If the order is being shipped internationally, 
		  please select the destination country under &quot;Additional Shipping 
		  Options.&quot;</li>
	  </ol>
	  <p><br><li>
	  By Phone (+1-512-471-4019) or FAX (+1-512-471-0354)</p>
	  </li>
  </ul>
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
