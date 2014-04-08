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
page = "Ordering"


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

<table border="0" cellpadding="0" cellspacing="0" width="800" bgcolor="#FFFFFF" style="border-collapse: collapse" bordercolor="#111111">
    <tr>
        <td valign="top" width="100%"><font face="Verdana">
        <font size="5" color="#FF9900"><span lang="en-us">UTEX Order Form</span></font><br><span lang="en-us">&nbsp;</span></font>
	</td>
    </tr>
    <tr>
        <td valign="top" width="100%" bgcolor="#FFFFFF"><div align="center"><center>
          <table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse" bordercolor="#111111" height="444">

            <tr>
                <td width="100%" colspan="3" height="44">
                <span style="font-variant: small-caps; text-transform: uppercase"><u>
                <font face="Verdana"size="4"><b>O</b><strong>rder online<br>
                </strong></font>
                  </u><strong>
                <font face="Verdana"size="4">in 2 easy steps</font></strong></span></td>

            </tr>
            <tr>
                <td width="45%" valign="top" height="93">
                <b><font face="Verdana" size="5"color="#CC0000">1</font></b><font face="Verdana" size="3"> </font>
                <font face="Verdana" size="2">
		Before placing your order, please review 
                <a href="about%20ordering.html">about ordering</a>. This describes the essentials of ordering UTEX cultures, the charges for cultures and delivery, and
			terms of payment.</font>
		</td>
                <td width="10%" valign="top" height="93">&nbsp;
                        </td>
                <td width="45%" valign="top" height="93">
                  <p><b><font face="Verdana" size="5"
color="#CC0000">2</font></b><font face="Verdana" size="3">
                  </font>
                   <font face="Verdana" size="2"><span lang="en-us">Proceed to 
                   <a target="_blank" href="http://utdirect.utexas.edu/txshop/list.WBX?component=0&application_name=BSALGAES">TXShop</a> to make your purchase.</span></font></td>
            </tr>
            <tr>
                <td width="100%" valign="top" colspan="3" height="307">
                <p class="MsoNormal"><font size="2" face="Verdana"><b><br>
                 New UTEX Ordering Procedures<br>
                 </b><span lang="en-us">1.&nbsp; </span>Browse the UTEX site and 
                 decide what you want to order.<br>

                 <br>
                 <span lang="en-us">2.&nbsp; </span>When you go to order you 
                 will be directed to a new site where you will place your order.<span lang="en-us"><br>
                 &nbsp;&nbsp;&nbsp;&nbsp;
                 a)&nbsp; </span>Have UTEX number(s) and 
                 corresponding scientific name and/or media<br>
                 <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 </span>names available.<br>

                 <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp; b)&nbsp; </span>Add each item separately to 
                 the cart.</dd><br>
                 <br>
                 <span lang="en-us">3)&nbsp; </span>US academic and US government 
                 institutions should use the following discount codes at 
                 checkout to obtain the subsidized price of $30 per culture.<br>
                 <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 </span>us/acad<br>

                 <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 </span>us/gov<br>
                 <br>
                 <span lang="en-us">4)&nbsp; </span>If the order is being 
                 shipped internationally, please select the destination country 
                 under &#8220;Additional Shipping Options&#8221;.<span lang="en-us"><p align=center>
                 <a target="_blank" href="http://utdirect.utexas.edu/txshop/list.WBX?component=0&application_name=BSALGAES">
		 Order Now</a></p></span></font>

                <p class="MsoNormal"><font size="2" face="Verdana"><br>
                 <br>
                 &nbsp;</font></td>
            </tr>
        </table>
        </center></div></td>
    </tr>
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
