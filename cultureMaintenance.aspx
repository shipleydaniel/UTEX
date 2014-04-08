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
page = "Culture Maintenance"


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
bgcolor="#FFFFFF">
    <tr>
        <td valign="top" width="100%" bgcolor="#FFFFFF"><div align="center"><center><table border="0" cellpadding="0" cellspacing="0" width="790">
            <tr>
                <td width="900" colspan="2"><font size="2" face="Verdana">
                <b><span lang="en-us">General Maintenance Conditions</span></b></font><p>
                 <font size="2" face="Verdana">Although achieving the
                                growth of large quantities of
                                algae in a short time is desired
                                by many who receive UTEX
                                cultures, such goals are not
                                consistent with <span lang="en-us"></span>the needs of
                                the Collection. On the contrary,
                                it is more efficient for us to
                                grow small cultures slowly, so as
                                to minimize the<span lang="en-us"> </span>use of
space,&nbsp;materials
                                and staff work, all of which
                                contribute to cost. With this
thought in
                                mind, the following account of
                                how UTEX cultures are maintained
                                is not to be interpreted as our
                                recommendations for the best
                                growth conditions and media to
                                achieve optimal growth rates and
                                large quantities of algae. Such
                                information must be acquired in
                                other literature or through
                                careful experimentation. Those
                                who receive cultures are
                                encouraged to duplicate within
                                reason the conditions used in the
                                Collection, when handling newly
                                acquired cultures, to reduce the
                                chance of losing the culture.
                                After a stock culture is
                                established, subcultures may be
                                used for testing other
                                conditions.</font><br><br><br>
                <b><span lang="en-us"><font face="Verdana" size="2">The 
                 Environment in the Room</font></span></b></p>

                <p><font size="2" face="Verdana"><i>Temperature:</i> 20° C<br>
                                <i>Light source: </i>cool-white
fluorescent lamps<br>
                                <i>Intensity: </i>3200 lux
(maximum)<br>
                                Periodicity: 12/12 h L/D
<br><br>Set up: with the
exception of <i>Volvox</i>, all cultures are maintained in a single room having approximately 500 square feet of floor space. The temperature of the room is kept
at 20 ± 1° C using a chilled water cooling system and air circulator. The relative humidity is kept at 50 ± 1%. Racks of metal shelves
having no lights are placed on the north wall near three windows, and cultures placed on these shelves may benefit from this natural light.
The remaining cultures are maintained in five incubators located on the perimeter of the remaining walls. The temperature in four of the incubators
is kept at 20 ± 1° C. The fifth incubator is kept at 25 ± 1° C and maintains Dasycladales and some tropical chlorophytes. Four workstations,
one each parallel to the east and west walls, and two parallel to the north wall, are equipped with a pair of 4 foot cool-white fluorescent light tubes mounted approximately 10 inches
above each of three shelves. During the life of the cultures, none are aerated or agitated.
                                

<p align=center><img border="0" src="images/UTEX.jpg" align="center" width="576" height="170"></p><b><span lang="en-us">Culture Production</span></b></font><p>

                 <font size="2" face="Verdana">The serial transfer of
                                all agar cultures into new medium
                                is performed in a laminar flow hood. Transfers are made with
                                metal bacteriological loops
                                appropriately sterilized with the
                                flame of a Bunsen burner or with autoclavable wooden sticks. Culture
                                tubes are also flamed<span lang="en-us"> </span>before and
                                after they are entered
                                with the loop or stick.<span lang="en-us"> </span>The serial transfer
                                of all axenic liquid cultures is
                                made in the laminar hood also.
                                An aliquot of the culture
                                suspension is inoculated into
                                fresh medium using a Pasteur
                                pipet and 1 mL bulb. Flaming is
                                not necessary. All xenic cultures
                                are transferred in open work
                                areas of the culture rooms.<br>
                                <br>
                                Newly transferred cultures are
                                usually placed on a lighted shelf
                                and allowed to grow or reproduce
                                asexually until the desired size
                                or population density is
                                achieved. Then the culture is
                                placed on one of the shelves away
                                from the lights until it is
                                needed. This initial growth
                                period usually takes one to two
                                weeks, but more or less time may
                                be required. The frequency at
                                which cultures are transferred
                                varies from two weeks to nine
                                months and is determined through
                                experience and close observation
                                of the cultures.<br>
                                <br>
                                Of note are cultures which are
                                never placed under bright lights,
                                e.g., the colorless strains of
                                the euglenoids (<i>Astasia</i>,

<i>Menoidium</i>, <i>Rhabdomonas</i> and some
                                <i>Euglena</i> strains), the
greens
(<i>Polytoma</i>, <i>Polytomella</i> and
                                  <i>Prototheca</i>);
heterotrophs
                                  (<i>Ochromonas</i>,

<i>Poterioochromonas</i>
                                and <i>Chlorella</i> cultures
                                1663-1671); and other
                                light-sensitive algae, which are
                                adversely affected by high light
                                intensity. All reds except
<i>Porphyridium</i>, the browns, and the
                                macrophytic marine greens grow
                                well in the dimly lighted areas
                                of the culture room or in front
                                of the windows. However,
                                blue-green algae are especially
                                troublesome, because they may
                                bleach out under high light
                                intensity or otherwise achieve
                                little growth in dimly lighted
                                areas. It has been found that
                                most do well on the lighted shelf
                                when the light intensity is
                                diminished by placing a neutral
                                density filter such as a sheet of
                                white bond paper between the
                                cultures and the
lights.</font><br/><br/></td>
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
