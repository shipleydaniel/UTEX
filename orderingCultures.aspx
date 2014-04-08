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
page = "Ordering Cultures"


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



<table border="0" cellpadding="0" cellspacing="0" width="790"
bgcolor="#FFFFFF" style="border-collapse: collapse" bordercolor="#111111">
    <tr>
        <td valign="top" width="100%"
bgcolor="#FFFFFF"><div align="center"><center>
          <table border="0" cellpadding="0" cellspacing="0" width="790" style="border-collapse: collapse" bordercolor="#111111">
            <tr>
                <td width="900">
                         <font face="Verdana" size="2">                        
                        <b>Preparation of Cultures 
                        for Shipment</b><br>
                        <br>
                        Aliquots of algal strains that are maintained on agar 
                        slants are <br>
                        transferred to the surface of fresh slants in 25 mm 
                        diameter glass <br>
                        screw-cap tubes in preparation for shipment. The fresh 
                        inocula are grown in a diurnal light cycle for at least 
                        5 days until a macroscopically visible<span lang="en-us">

                        </span>lawn appears.<br>
                        <br>
                        Approximately <span lang="en-us">10 </span>ml aliquots 
                        of strains that are maintained as liquid<span lang="en-us">
                        </span>cultures are transferred to screw-cap tubes on the day 
                        of shipment.<br>
                        <br>
                        Agar and liquid cultures for a customer are packaged 
                        within a Styrofoam<span lang="en-us">*</span> box and shipped on the 
                        same day they are packaged.<br>

                        <br>
                        One tube of agar or liquid culture constitutes an order 
                        for a single <br>
                        culture of a single strain of living algae. UTEX makes 
                        no attempt to <br>
                        quantify the number of organisms or other 
                        characteristics of the culture. UTEX only guarantees the 
                        identity of the organism as specified in the strain 
                        history.</p>
                        <b><br>
                        </b>

                        <b style="mso-bidi-font-weight:normal">
                        Culture
                        Charges<o:p>
                        </o:p>
                        </b></p>
                        <p class="MsoNormal" style="text-indent: 0; margin-left: 0" align="left">
                         The
                        standard charge for living algal cultures is US$75.00
                        per culture.</p>
                        <p class="MsoNormal" style="text-indent: 0; margin-left: 0" align="left">
                         Because
                        the U.S. government provides substantial support for
                        operating the Culture Collection, U.S. governmental
                        agencies and academic institutions within the U.S. are
                        charged a subsidized rate of $30.00 per culture.<span lang="en-us"> 
							When ordering on-line these institutions should use 
							the discount codes &quot;us/acad&quot; or &quot;us/gov&quot; to gain the 
							subsidized rate.</span></p>

							<p class="MsoNormal" style="text-indent: 0; margin-left: 0" align="left">
                        <br>
                         <b style="mso-bidi-font-weight:normal">
                         <br>
                         Shipping
                        and Handling Charges<o:p>
                        </o:p>
                         </b></p>
                          <p class="MsoNormal" style="text-indent: 0; margin-left: 0" align="left">

                           In
                        addition to the cost per culture, there is a
                        shipping/handling charge for each shipment:</p>
                        <p class="MsoNormal" style="text-indent: 0; margin-left: 0" align="left">
                         Shipments
                        within the continental U.S. are charged $20.00 per order
                        for Federal Express Priority Overnight or UPS Next Day
                        Air delivery.</p>
                        <p class="MsoNormal" style="text-indent: 0; margin-left: 0" align="left">
                         Shipments
                        within the continental U.S. by First Class Mail are
                        charged a $10.00 shipping and handling fee.</p>
                        <p class="MsoNormal" style="text-indent: 0; margin-left: 0" align="left">
                         Shipments
                        outside the continental U.S. are charged the actual
                        shipping rate plus a US$5.00 handling fee.</p>

                        <p class="MsoNormal" style="text-indent: 0; margin-left: 0" align="left">
                         Shipments
                        sent on a day other than the standard shipping day each
                        week are charged an additional US$<span lang="en-us">10</span>.00 special handling<span lang="en-us">/rush 
							order</span>
                        fee.</p>                       

<table width="630">
 <tr><td align="center">
                         <font face="Verdana" size="2"><p align=center>
                           <a href="orderingAbout.aspx" style="text-decoration: none">
                           Back to About Ordering</span></a></p></font>
</td></tr>
</table>

                        <p class="MsoNormal" style="text-indent: 0; margin-left: 0" align="left">
                <font face="Verdana" size="1"><span class="trademark">*Trademark 
                of The Dow Chemical Company</span></font></p>
                </td>
            </tr>
            <tr>
                <td width="900">&nbsp;
                         </td>
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
