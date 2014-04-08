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
page = "Contact UTEX"
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

<font=green>Due to the high volume of phone calls and emails, please allow 3-5 business days for a response. We value your patronage and thank you for your patience.</color><p>

<table border="0" cellpadding="0" cellspacing="0" width="790" bordercolor="#111111" style="font-size: 10pt">
            <tr>
                <td width="150" valign="top" ALIGN="RIGHT"> <b>MAILING ADDRESS</b><br></td>
                <td width="10">&nbsp;</td>
                <td width="630">
                  The University of Texas at Austin<br>
                  The Culture Collection of Algae (UTEX)<br>
                  205 W. 24th St. Stop A6700<br>Austin, TX 78712-1240<br>USA<br>
                  <br>
		</td>
            </tr>
            <tr>
                <td width="150" valign="top" ALIGN="RIGHT"><b>NON-POSTAL DELIVERIES</b></td>
                <td width="10">&nbsp;</td>
                <td width="630">
                  The Culture Collection of Algae (UTEX)<br>
                  MCDB, Bio Labs 311<br>
                  205 W. 24th St.<br>
                  The University of Texas at Austin<br>
                  Austin, TX 78712<br>
                  USA<br>
                  <br>
		</td>
            </tr>
            <tr>
                <td width="150" valign="top" ALIGN="RIGHT"><b>PHONE</b></td>
                <td width="10">&nbsp;</td>
                <td width="630">

                  (512)471-4019<br>
                  <br></td>
            </tr>
            <tr>
                <td width="150" valign="top" ALIGN="RIGHT">
                       <b> FAX</b>
		</td>

                <td width="10">&nbsp;
                        </td>
                <td width="630">
                  (512) 471-0354<br>&nbsp;
		</td>
            </tr>
	    <TR>
		<TD VALIGN="TOP" ALIGN="LEFT" COLSPAN="3">
                   <b>
             INQUIRIES
                  REGARDING </b><p>
		</TD>
	    </tr>
                                    <tr>
                <td width="150" valign="top" ALIGN="RIGHT">Ordering</td>
                <td width="10">&nbsp;</td>
                <td width="630"><a href="mailto:utalgae@uts.cc.utexas.edu">Nick 
				Davis</a> Business Manager</td>
            </tr>
           
            
                        <tr>
                <td width="150" valign="top" ALIGN="RIGHT">&nbsp;</td>
                <td width="10">&nbsp;</td>
                <td width="630">&nbsp;
		</td>
            </tr>
            
            <tr>
                <td width="150" valign="top" ALIGN="RIGHT">Culture Maintenance &amp; 
				Media</td>
                <td width="10">&nbsp;</td>
                <td width="630"><a href="mailto:stephen.o.pena@gmail.com">Stephen Peña</a> Culture Collection Manager
				<br><a href="mailto:ana.aguilar@utexas.edu">Ana Aguilar</a> 
				Facility Manager</td>
            </tr>
            


            <tr>
                <td width="150" valign="top" ALIGN="RIGHT">&nbsp;</td>
                <td width="10">&nbsp;</td>
                <td width="630">&nbsp;
		</td>
	    </TR>
            <tr>
                <td width="150" valign="top" ALIGN="RIGHT">
                         Administration & Accessioning	</td>
                <td width="10">&nbsp;
                        </td>
                <td width="630" valign="top">
                   <a href="mailto:dnobles@mail.utexas.edu">Dr. David Nobles, Jr</a> Curator
		</td>
            </tr>
            <tr>
                <td width="150" valign="top" ALIGN="RIGHT">&nbsp;</td>
                <td width="10">&nbsp;</td>
                <td width="630">&nbsp;
		</td>
            
            
            </tr>
            
            <tr>
                <td width="150" valign="top" ALIGN="RIGHT"></td>
                <td width="10">&nbsp;</td>
                <td width="630"><a href="mailto:jbrand@mail.utexas.edu">Dr. Jerry Brand</a> Director
		</td>
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
