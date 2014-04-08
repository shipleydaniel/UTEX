
'***** THIS FUNCTION PRINTS ONE ITEM OF THE NAVIGATION DEPRICATED *****
Public Shared FUNCTION Print_Navigation_Item (linkname, linkRef, currentpage, bgColor, fgColor)
  DIM str as String
  IF Cstr(linkname) = Cstr(currentpage) THEN
	str="<tr><td colspan= '2' width='138' align='left' class='navigation' bgcolor='"
	str=str+ fgColor + "'><b><font size = 2 color='"
	str=str+ bgColor + "'>" + linkName + "</font></b></td><td><img src='images/spacer.gif' width='5'></td></tr><tr><td><img src='images/spacer.gif' height='3'></td></tr>"
  ELSE
	str="<tr><td colspan='2' width='138' align='left' bgcolor='"
	str=str + bgColor + "' onclick=location.href='" + linkref + "' onmouseover=this.style.backgroundColor='White';this.style.cursor='hand'; onmouseout=this.style.backgroundColor='" 
	str=str + bgcolor + "'; class='navigation' ><a href='"+ linkref + "'><b><font color='"
	str=str + fgcolor + "' >" + linkname + "</font></b></a></td><td><img src='images/spacer.gif' width='5'></td></tr><tr><td><img src='images/spacer.gif' height='3'></td></tr>"
  END IF
return str
END FUNCTION
<%


'***** THIS FUNCTION PRINTS ONE ITEM OF THE NAVIGATION *****
FUNCTION Print_Navigation_Item (linkname, linkRef, currentpage)

  IF Cstr(linkname) = Cstr(currentpage) THEN
%>
	<tr>
	<td colspan= "2" width="90" align="left" class="navigation" bgcolor="<%=fgcolor%>" >
	<b><font color="<%=bgcolor%>"><%=linkname%></font></b>
	</td>
    </tr>
<%
  ELSE
%>
	<tr>
    	<td colspan="2" width="90" align="left" bgcolor="<%=bgcolor%>" onclick="location.href='<%=linkRef%>'" onmouseover="this.style.backgroundColor='666666';this.style.cursor='hand';" onmouseout="this.style.backgroundColor='<%=bgcolor%>';" class="navigation" >
	<a href="<%=linkRef%>"><b><font color="<%=fgcolor%>"><%=linkname%></font></b></a>
	</td>
	</tr>
<%
  END IF
END FUNCTION


'***** THIS FUNCTION PRINTS ONE  SUB - ITEM OF THE NAVIGATION *****

FUNCTION Print_SubNavigation_Item (linkname, linkRef, currentpage)

  IF Cstr(linkname) = Cstr(currentpage) THEN
%>
	<tr>
	<td width="80" align="left" class="navigation" bgcolor="<%=fgcolor%>">
		<img src="<%=webroot%>/images/spacer.gif" width="10" height="0" >
		<b><font color="<%=bgcolor%>"><%=linkname%></font></b>
	</td>
    </tr>
<%
  ELSE
%>
	<tr aligh="right"> 
        <td width="80" align="left" bgcolor="<%=bgcolor%>" onclick="location.href='<%=linkRef%>'" onmouseover="this.style.backgroundColor='666666';this.style.cursor='hand';" onmouseout="this.style.backgroundColor='<%=bgcolor%>';" class="navigation" >
		<img src="<%=webroot%>/images/spacer.gif" width="10" height="0" >  
		<a href="<%=linkRef%>"><b><font color="<%=fgcolor%>"><%=linkname%></font></b></a>
	</td>
	</tr>
<%
  END IF
END FUNCTION



'***** THIS FUNCTION PRINTS ALL ITEMS IN THE TOP NAVIGATION *****
FUNCTION Print_Navigation (CurrentPage)
  Response.write "<table cellspacing=""10"" cellpadding=""7"" background = ""/images/menubackground.gif"">"& vbCrLf  
  Response.write "<tr><td><img src=""/images/spacer.gif"" width=""80"" height=""20"">" & vbCrLf  
	CALL Print_Navigation_Item("About Us", "/default.asp", CurrentPage)	
	CALL Print_Navigation_Item("Mission", "/mission.asp", CurrentPage)
	CALL Print_Navigation_Item("Services", "/services.asp", CurrentPage)
	'IF CurrentPage = "Services" THEN
	'	Call Print_SubNavigation_Item ("Planning", "/planning.asp", CurrentPage)
	'END IF
	'CALL Print_Navigation_Item("Client List", "/clients.asp", CurrentPage)
	CALL Print_Navigation_Item("Contact Us", "/contactus.asp", CurrentPage)

  Response.write "<tr><td><img src=""/images/spacer.gif"" width=""80"" height=""60"">" & vbCrLf  	
  Response.write "</table>"
END FUNCTION

%>