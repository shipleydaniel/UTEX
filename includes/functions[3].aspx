
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
str = str + print_navigation_item ("Culture Maintenance", "cultureMaintenance.aspx")
str = str + "<!-- MENU ORDERING START -->" & vbCrLf  
str = str + "              <tr><td class='menuExpand' width='100%' onmouseover='expand(this);' onmouseout='collapse(this);' align='right' valign='middle'>Ordering" & vbCrLf  
str = str + "                <div class='menuNormal' width='150'>" & vbCrLf  
str = str + "                  <table class='menu' width='150' border=0>" & vbCrLf  
str = str + "                    <tr><td class='subMenuExpandHover'>" & vbCrLf  
str = str + "                      <a href='orderingAbout.aspx' class='menuItem' >How to Order</a>" & vbCrLf  
str = str + "                    </td></tr>" & vbCrLf  
str = str + "                    <tr><td class='subMenuExpandHover'>" & vbCrLf  
str = str + "                      <a href='http://utdirect.utexas.edu/txshop/list.WBX?component=0&application_name=BSALGAES' class='menuItem'  >Order Now</a>" & vbCrLf  
str = str + "                    </td></tr>" & vbCrLf  
str = str + "                    <tr><td class='subMenuExpandHover'>" & vbCrLf  
str = str + "                      <a href='orderingPricingShipping.aspx' class='menuItem' >Pricing and Shipping</a>" & vbCrLf  
str = str + "                    </td></tr>" & vbCrLf  
str = str + "                  </table>" & vbCrLf  
str = str + "                </div>" & vbCrLf  
str = str + "              </td></tr>" & vbCrLf  
str = str + "              <tr><td><img src='images/spacer.gif' height='1'></td></tr>" & vbCrLf 
str = str + "<!-- MENU ORDERING END -->" & vbCrLf  
str = str + "<!-- MENU MEDIA START -->" & vbCrLf  
str = str + "              <tr><td class='menuExpand' width='100%' onmouseover='expand(this);' onmouseout='collapse(this);' align='right' valign='middle'>Media" & vbCrLf  
str = str + "                <div class='menuNormal' width='150'>" & vbCrLf  
str = str + "                  <table class='menu' width='150' border=0>" & vbCrLf  
str = str + "                    <tr><td class='subMenuExpandHover'>" & vbCrLf  
str = str + "                      <a href='media.aspx' class='menuItem'  >Recipes</a>" & vbCrLf  
str = str + "                    </td></tr>" & vbCrLf  
str = str + "                    <tr><td class='subMenuExpandHover'>" & vbCrLf  
str = str + "                      <a href='mediaGrowth.aspx' class='menuItem' >Notes on Growth Media</a>" & vbCrLf  
str = str + "                    </td></tr>" & vbCrLf  
str = str + "                  </table>" & vbCrLf  
str = str + "                </div>" & vbCrLf  
str = str + "              </td></tr>" & vbCrLf  
str = str + "              <tr><td><img src='images/spacer.gif' height='1'></td></tr>" & vbCrLf 
str = str + "<!-- MENU MEDIA END -->" & vbCrLf 
str = str + "<!-- MENU SELECT COLLECTIONS START -->" & vbCrLf  
str = str + "              <tr><td class='menuExpand' width='100%' onmouseover='expand(this);' onmouseout='collapse(this);' align='right' valign='middle'>Select Collections" & vbCrLf  
str = str + "                <div class='menuNormal' width='150'>" & vbCrLf  
str = str + "                  <table class='menu' width='150' border=0>" & vbCrLf  
str = str + "                    <tr><td class='subMenuExpandHover'>" & vbCrLf  
str = str + "                      <a href='scFreshWaterDiatom.aspx' class='menuItem'  >Fresh Water Diatom Collection</a>" & vbCrLf  
str = str + "                    </td></tr>" & vbCrLf  
str = str + "                    <tr><td class='subMenuExpandHover'>" & vbCrLf  
str = str + "                      <a href='scExtremeEnvironment.aspx' class='menuItem' >Extreme Environment Collection</a>" & vbCrLf  
str = str + "                    </td></tr>" & vbCrLf  
str = str + "                    <tr><td class='subMenuExpandHover'>" & vbCrLf  
str = str + "                      <a href='scSnow.aspx' class='menuItem' >Snow Collection</a>" & vbCrLf  
str = str + "                    </td></tr>" & vbCrLf  
str = str + "                    <tr><td class='subMenuExpandHover'>" & vbCrLf  
str = str + "                      <a href='scSaltPlains.aspx' class='menuItem' >Salt Plains Collection</a>" & vbCrLf  
str = str + "                    </td></tr>" & vbCrLf  
str = str + "                  </table>" & vbCrLf  
str = str + "                </div>" & vbCrLf  
str = str + "              </td></tr>" & vbCrLf  
str = str + "              <tr><td><img src='images/spacer.gif' height='1'></td></tr>" & vbCrLf 
str = str + "<!-- MENU SELECT COLLECTIONS END -->" & vbCrLf 
str = str + print_navigation_item ("Depositing Strains", "depositing.aspx")
str = str + print_navigation_item ("Taxonomic Considerations", "taxonomic.aspx")
str = str + print_navigation_item ("Cryopreservation of Microalgae", "protocols.aspx")
str = str + "<!-- MENU Resources START -->" & vbCrLf  
str = str + "              <tr><td class='menuExpand' width='100%' onmouseover='expand(this);' onmouseout='collapse(this);' align='right' valign='middle'>Resources" & vbCrLf  
str = str + "                <div class='menuNormal' width='150'>" & vbCrLf  
str = str + "                  <table class='menu' width='150' border=0>" & vbCrLf  
str = str + "                    <tr><td class='subMenuExpandHover'>" & vbCrLf  
str = str + "                      <a href='otherResources.aspx' class='menuItem'  >Other Algal Collections &amp; Resources</a>" & vbCrLf  
str = str + "                    </td></tr>" & vbCrLf  
str = str + "                    <tr><td class='subMenuExpandHover'>" & vbCrLf  
str = str + "                      <a href='teachingKits.aspx' class='menuItem' >Teaching Kits</a>" & vbCrLf  
str = str + "                    </td></tr>" & vbCrLf  
str = str + "                    <tr><td class='subMenuExpandHover'>" & vbCrLf  
str = str + "                      <a href='referenceLiteratureA-C.aspx' class='menuItem' >Reference Literature</a>" & vbCrLf  
str = str + "                    </td></tr>" & vbCrLf  
str = str + "                  </table>" & vbCrLf  
str = str + "                </div>" & vbCrLf  
str = str + "              </td></tr>" & vbCrLf  
str = str + "              <tr><td><img src='images/spacer.gif' height='1'></td></tr>" & vbCrLf 
str = str + "<!-- MENU Resources END -->" & vbCrLf 
str = str + print_navigation_item ("FAQ", "faq.aspx")
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

                strResults  = strResults  + " " + strColumnName + " Like '%" + Trim(orTerms(iOrLoop)) + "%'" 					
 		
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
Public Shared function GetWhereClause(txtSearchTerms, utexNumber, classID, images, typeCulture, Notes) 

Dim strWhereClause as string
strWhereClause = ""

IF txtSearchTerms <> "" or utexNumber <> "" or classID <> 32640611 or Images = 1 or typeCulture = 1 or Notes <> ""

	strWhereClause = " or ( 1 = 1 "

	'we've gotta split up the search terms on ORs and ANDs for each different term incorporate search based on that term to search only Title and Content
	IF txtSearchTerms <> ""
		strWhereClause = strWhereClause + splitString(txtSearchTerms, "Strain")
	END IF

	IF classID <> 32640611
		strWhereClause = strWhereClause + " AND classID = " + cstr(classID)
	END IF

	IF utexNumber <> ""
	  	strWhereClause = strWhereClause + splitString(utexNumber, "utexNumber") 
	END IF
	
	IF images = 1
		strWhereClause = strWhereClause + " AND imageCount > 0 "
	END IF

	IF typeCulture = 1
		strWhereClause = strWhereClause + " AND typeCulture = TRUE "
	END IF

	IF Notes <> ""
		strWhereClause = strWhereClause +  splitString(Notes, "accessionNotes")
	END IF




	strWhereClause = strWhereClause + " )"

END IF


return strWhereClause

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


'**************** IS NULL FUNCTION ********************
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




</script>

