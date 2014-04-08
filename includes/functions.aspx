
<Script Runat='Server'>

'******CONSTANTS*********'
Public Shared FUNCTION getDBLocation ()
  DIM dbLocation as String = "database/20070415web.mdb"
  getDBLocation = dbLocation
END FUNCTION

Public Shared FUNCTION getImageLocation ()
  DIM imageLocation as String = "images/algae/"
   getImageLocation = imageLocation
END FUNCTION



'***** THIS FUNCTION PRINTS ONE ITEM OF THE NAVIGATION *****
Public Shared FUNCTION Print_Navigation_Item (linkname, linkRef)
  DIM str as String
  

	str = str + "<!-- MENU " + linkName + " START -->" & vbCrLf  
	str = str + "              <tr><td class='menuNormal' width='100%' align='right'>" & vbCrLf  
	str = str + "              <a href='" + linkref + "' class='coreMenuitem'>"+ linkName + "</a>" & vbCrLf  
	str = str + "              </td></tr>" & vbCrLf  
	str = str + "              <tr><td><img src='images/spacer.gif' height='1'></td></tr>" & vbCrLf  
	str = str + "<!-- MENU " + linkName + " END -->" & vbCrLf   

return str
END FUNCTION




'***** THIS FUNCTION PRINTS ALL ITEMS IN THE TOP NAVIGATION *****
Public Shared FUNCTION Print_Navigation (CurrentPage, bgColor, fgColor )
dim str as string
str = "<table cellspacing=""0"" cellpadding=""0"" border = '0' width='100%'>"& vbCrLf 
str = str + "<!-- MENU SPACER START -->" & vbCrLf  
str = str + "              <tr><td class='menuNormal' width='100%'align='right'>" & vbCrLf  
str = str + "			<img src='images/spacer.gif' width='0' height='10'>" & vbCrLf  
str = str + "              </td></tr>" & vbCrLf  
str = str + "              <tr><td><img src='images/spacer.gif' height='1'></td></tr>" & vbCrLf  
str = str + "<!-- MENU SPACER END -->" & vbCrLf   
str = str + print_navigation_item ("Home", "default.aspx")
str = str + print_navigation_item ("Culture Search", "Search.aspx")
str = str + "<!-- MENU PRODUCTS START -->" & vbCrLf  
str = str + "              <tr><td class='menuExpand' width='100%' onmouseover='expand(this);' onmouseout='collapse(this);' align='right' valign='middle'>Products" & vbCrLf  
str = str + "                <div class='menuNormal' width='150'>" & vbCrLf  
str = str + "                  <table class='menu' width='150' border=0>" & vbCrLf  
str = str + "                    <tr><td class='subMenuExpandHover'>" & vbCrLf  
str = str + "                      <a href='livingalgalstrains.aspx' class='menuItem' >Living Algal Strains </a>" & vbCrLf  
str = str + "                    </td></tr>" & vbCrLf 
str = str + "                    <tr><td class='subMenuExpandHover'>" & vbCrLf  
str = str + "                      <a href='bulkcultures.aspx' class='menuItem'  >Bulk Microalgae</a>" & vbCrLf  
str = str + "                    </td></tr>" & vbCrLf  
str = str + "                    <tr><td class='subMenuExpandHover'>" & vbCrLf  
str = str + "                      <a href='prodmedia.aspx' class='menuItem' >Algal Culturing Media</a>" & vbCrLf  
str = str + "                    </td></tr>" & vbCrLf 
str = str + "                    <tr><td class='subMenuExpandHover'>" & vbCrLf  
str = str + "                      <a href='genomicDNA.aspx' class='menuItem' >UTEX Genomic DNA</a>" & vbCrLf  
str = str + "                    </td></tr>" & vbCrLf 
str = str + "                    <tr><td class='subMenuExpandHover'>" & vbCrLf  
str = str + "                      <a href='prodimages.aspx' class='menuItem' >Algal Images</a>" & vbCrLf  
str = str + "                    </td></tr>" & vbCrLf  
str = str + " 					 <tr><td class='subMenuExpandHover'>" & vbCrLf  
str = str + "                      <a href='photobioreactoroverview.aspx' class='menuItem' >Photobioreactors</a>" & vbCrLf  
str = str + "                    </td></tr>" & vbCrLf 
str = str + "                  </table>" & vbCrLf  
str = str + "                </div>" & vbCrLf  
str = str + "              </td></tr>" & vbCrLf  
str = str + "              <tr><td><img src='images/spacer.gif' height='1'></td></tr>" & vbCrLf 
str = str + "<!-- MENU PRODUCTS END -->" & vbCrLf 
str = str + "<!-- MENU SERVICES START -->" & vbCrLf  
str = str + "              <tr><td class='menuExpand' width='100%' onmouseover='expand(this);' onmouseout='collapse(this);' align='right' valign='middle'> Services" & vbCrLf  
str = str + "                <div class='menuNormal' width='150'>" & vbCrLf  
str = str + "                  <table class='menu' width='150' border=0>" & vbCrLf  
str = str + "                    <tr><td class='subMenuExpandHover'>" & vbCrLf  
str = str + "                      <a href='#' class='menuItem'  >Private Strain Deposition</a>" & vbCrLf  
str = str + "                    </td></tr>" & vbCrLf 
str = str + "                    <tr><td class='subMenuExpandHover'>" & vbCrLf  
str = str + "                      <a href='#' class='menuItem'  >Genetic & Biochemical Analysis</a>" & vbCrLf  
str = str + "                    </td></tr>" & vbCrLf
str = str + "                    <tr><td class='subMenuExpandHover'>" & vbCrLf  
str = str + "                      <a href='strainidentification.aspx' class='menuItem'  >Strain Identification</a>" & vbCrLf  
str = str + "                    </td></tr>" & vbCrLf  
str = str + "                    <tr><td class='subMenuExpandHover'>" & vbCrLf
str = str + "                      <a href='cryostorage.aspx' class='menuItem'  >Cryogenic Storage</a>" & vbCrLf                   
str = str + "                  </table>" & vbCrLf  
str = str + "                </div>" & vbCrLf  
str = str + "              </td></tr>" & vbCrLf  
str = str + "              <tr><td><img src='images/spacer.gif' height='1'></td></tr>" & vbCrLf 
str = str + "<!-- MENU SERVICES END -->" & vbCrLf 
str = str + "<!-- MENU EDUCATION START -->" & vbCrLf  
str = str + "              <tr><td class='menuExpand' width='100%' onmouseover='expand(this);' onmouseout='collapse(this);' align='right' valign='middle'>Education" & vbCrLf  
str = str + "                <div class='menuNormal' width='150'>" & vbCrLf  
str = str + "                  <table class='menu' width='150' border=0>" & vbCrLf  
str = str + "                    <tr><td class='subMenuExpandHover'>" & vbCrLf  
str = str + "                      <a href='workshopsoverview.aspx' class='menuItem'  >Workshops</a>" & vbCrLf  
str = str + "                    </td></tr>" & vbCrLf 
str = str + "                    <tr><td class='subMenuExpandHover'>" & vbCrLf  
str = str + "                      <a href='teachingkits.aspx' class='menuItem'  >Teaching Kits</a>" & vbCrLf  
str = str + "                    </td></tr>" & vbCrLf
str = str + "                    <tr><td class='subMenuExpandHover'>" & vbCrLf
str = str + "                      <a href='referenceliteraturea-c.aspx' class='menuItem'  >Reference Literature</a>" & vbCrLf                   
str = str + "                  </table>" & vbCrLf 
str = str + "                </div>" & vbCrLf  
str = str + "              </td></tr>" & vbCrLf  
str = str + "              <tr><td><img src='images/spacer.gif' height='1'></td></tr>" & vbCrLf 
str = str + "<!-- MENU EDUCATION END -->" & vbCrLf 
str = str + "<!-- MENU RESOURCES START -->" & vbCrLf  
str = str + "              <tr><td class='menuExpand' width='100%' onmouseover='expand(this);' onmouseout='collapse(this);' align='right' valign='middle'>Resources" & vbCrLf  
str = str + "                <div class='menuNormal' width='150'>" & vbCrLf  
str = str + "                  <table class='menu' width='150' border=0>" & vbCrLf  
str = str + "                    <tr><td class='subMenuExpandHover'>" & vbCrLf  
str = str + "                      <a href='culturemaintenance.aspx' class='menuItem'  >Culture Maintenance</a>" & vbCrLf  
str = str + "                    </td></tr>" & vbCrLf  
str = str + "                    <tr><td class='subMenuExpandHover'>" & vbCrLf  
str = str + "                      <a href='media.aspx' class='menuItem' >Algal Media Recipes</a>" & vbCrLf  
str = str + "                    </td></tr>" & vbCrLf 
str = str + "                    <tr><td class='subMenuExpandHover'>" & vbCrLf  
str = str + "                      <a href='depositing.aspx' class='menuItem' >Strain Accessioning</a>" & vbCrLf  
str = str + "                    </td></tr>" & vbCrLf 
str = str + "                    <tr><td class='subMenuExpandHover'>" & vbCrLf  
str = str + "                      <a href='protocols.aspx' class='menuItem' >Cryopreservation of Microalgae</a>" & vbCrLf  
str = str + "                    </td></tr>" & vbCrLf  
str = str + " 			 		<tr><td class='subMenuExpandHover'>" & vbCrLf
str = str + " 			  		 <a href='#' class='menuItem' >Select Collections</a>" & vbCrLf
str = str + " 			 		</td></tr>" & vbCrLf
str = str + " 			 		<tr><td class='subMenuExpandHover'>" & vbCrLf  
str = str + "                      <a href='otherresources.aspx' class='menuItem' >Other Algal Collections & Resources</a>" & vbCrLf  
str = str + "                    </td></tr>" & vbCrLf 
str = str + "                  </table>" & vbCrLf 
str = str + "                </div>" & vbCrLf  
str = str + "              </td></tr>" & vbCrLf  
str = str + "              <tr><td><img src='images/spacer.gif' height='1'></td></tr>" & vbCrLf 
str = str + "<!-- MENU RESOURCES END -->" & vbCrLf 
str = str + print_navigation_item ("FAQ", "faqs.aspx")
str = str + print_navigation_item ("About UTEX", "about.aspx") 
str = str + "<!-- MENU SPACER START -->" & vbCrLf  
str = str + "              <tr><td class='menuNormal' width='100%'align='right'>" & vbCrLf  
str = str + "			<img src='images/spacer.gif' width='0' height='10'>" & vbCrLf  
str = str + "              </td></tr>" & vbCrLf  
str = str + "              <tr><td><img src='images/spacer.gif' height='1'></td></tr>" & vbCrLf  
str = str + "<!-- MENU SPACER END -->" & vbCrLf  
str = str + "<tr><td><img src=""images/spacer.gif"" width=""140"" height=""0""></td></tr>" & vbCrLf  	
str = str + "</table>"
return str
END FUNCTION


Public Function IsDBNull(ByVal dbvalue) As Boolean
     Return dbvalue Is DBNull.Value 
End Function

Public Function FixNull(ByVal dbvalue) As String
        If dbvalue Is DBNull.Value Then
            Return ""
        Else
            'NOTE: This will cast value to string if
             'it isn't a string.

            Return dbvalue.ToString
        End If
End Function



'**************************Function to split Sting into and or components ***************************
Public Shared function splitString (strToSplit, strColumnName)

Dim colTerms as array, orTerms as array 
Dim iUpperTerms, iLoop, iUpperOrTerms, iOrLoop
Dim strResults as String


strResults = " and "

        colTerms = strToSplit.split("+")
        iUpperTerms = UBound(colTerms)        	
        
          FOR iLoop = LBound(colTerms) to iUpperTerms
            orTerms = rtrim(ltrim(colTerms(iLoop))).split(" ")
            iUpperOrTerms = UBound(orTerms)
        
            strResults = strResults + "("
            FOR iOrLoop = LBound(orTerms) to iUpperOrTerms

                strResults = strResults + " " + strColumnName + " Like '%" + Trim(orTerms(iOrLoop)) + "%'"
 		
              IF iOrLoop < iUpperOrTerms then 
                strResults  = strResults  + " OR "
              END IF      
            NEXT
        
            strResults  = strResults  + ")"
        
            IF iLoop < iUpperTerms then
              strResults  = strResults  + " AND "
            END IF
          Next

return strResults

END Function




'**************************Function to Set Where Clause*********************************
Public Shared function GetWhereClause(txtSearchTerms, utexNumber, classID, images, typeCulture, Notes, Relatives, aka) 

Dim strWhereClause as string
strWhereClause = ""

IF txtSearchTerms <> "" or utexNumber <> "" or classID <> 32640611 or Images = 1 or typeCulture = 1 or Notes <> "" or Relatives <> ""  or aka <> ""

	strWhereClause = " or ( 1 = 1 "

	'we've gotta split up the search terms on ORs and ANDs for each different term incorporate search based on that term to search only Title and Content
            If txtSearchTerms <> "" Then
                strWhereClause = strWhereClause + splitString(txtSearchTerms, "Strain")
                'Response.Write(txtSearchTerms)
            End If

            If classID <> 32640611 Then
                strWhereClause = strWhereClause + " AND classID = " + CStr(classID)
            End If

            If utexNumber <> "" Then
                strWhereClause = strWhereClause + " AND utexNumber like '%" + CStr(utexNumber) + "%'"
            End If
	
            If images = 1 Then
                strWhereClause = strWhereClause + " AND imageCount > 0 "
            End If

            If typeCulture = 1 Then
                strWhereClause = strWhereClause + " AND typeCulture = TRUE "
            End If

            If Notes <> "" Then
                strWhereClause = strWhereClause + splitString(Notes, "accessionNotes")
            End If


            If Relatives <> "" Then
                strWhereClause = strWhereClause + splitString(Relatives, "relatives")
            End If

            If aka <> "" Then
                strWhereClause = strWhereClause + splitString(aka, "alsoKnownAs")
            End If


            strWhereClause = strWhereClause + " )"
            

        End If


        Return strWhereClause

END Function




'**************** IS NULL FUNCTION ********************

Public Shared function isItNull(str)
	Dim blankStr
	blankStr = trim("" & str)

	if blankStr = "" then
		return  blankStr
	else
		return  str
	end if
end function


'**************** Random Number Function ********************
Function GetRandomNumberInRange(intLowerBound As Integer, intUpperBound As Integer)
	Dim RandomGenerator As Random
	Dim intRandomNumber As Integer
		
	' Create and init the randon number generator
	RandomGenerator = New Random()
	'RandomGenerator = New Random(DateTime.Now.Millisecond)

	' Get the next random number
        intRandomNumber = RandomGenerator.Next(intLowerBound, intUpperBound + 1)

	' Return the random # as the function's return value
	GetRandomNumberInRange = intRandomNumber
End Function



'**************** Add Number to Counter Function ********************
Function addToCounterFile (pagename as String)
	dim objReader as StreamReader
	dim objWriter as StreamWriter
	dim sFile as string
	dim sCount as string
	dim iCount as integer


sFile = Server.MapPath("\utex\pageCounter")
If Right(sFile, 1) <> "\" then sFile = sFile & "\"
sFile = sFile & pageName &"counter" & cstr( year(now()) )  & cstr( month(now)) & ".txt"

If not File.Exists(sFile) then 
	objWriter = File.CreateText(sFile)
	objWriter.Write("0")
	objWriter.Close
End if

objReader = File.OpenText(sFile)
sCount = objReader.ReadToEnd()
objReader.Close
iCount = Cint(sCount)
iCount = iCount + 1
sCount = iCount.ToString

objWriter = File.CreateText(sFile)
objWriter.Write(sCount)
objWriter.Close

End Function




</script>

