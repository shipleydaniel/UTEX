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
page = "Home"


%>
<LINK REL=STYLESHEET HREF="<%=webroot%>/includes/styleMain.css" TYPE="text/css">
<script language="javascript" src="<%=webroot%>/javascripts/menu.js"></script>


<script language="VB" runat="server">

Dim Public imageDirectory = getImageLocation()
Dim Public dbFile = getDBLocation()



Sub Page_Load(sender As Object, e As EventArgs)
  ' Only bind the data on the first visit to the page
    PullImage()
End Sub



Sub PullImage()

  Dim MyConnection As OleDBConnection
  Dim MyAdapter as OleDbDataAdapter
  Dim MyDataReader As OleDbDataReader
  Dim DS as Dataset
  Dim MyCommand As OleDBCommand
  Dim sqlStr As String

  sqlStr= "select top 1  '<img src=''" + imageDirectory + "\spacer.gif'' width=120 height=0><a href=algaeDetail.aspx?algaeID='+CStr(algaeID)+'><img src=''"
  sqlStr = sqlStr + imageDirectory + "' + imageFile +''' border=0  height=300 width=400 align=center></a>' AS ImageReference from tblAlgaeImage where algaeImageID >= " + cstr( GetRandomNumberInRange(3, 876) ) + " order by algaeImageID"

  'Open up our connection with our connection object
  MyConnection = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath(dbFile) & ";")

  'To execute our Sql Statement and provide out active connection
  MyCommand = New OleDbCommand(sqlStr, MyConnection)

  'Create instance of dataset object and fill our predetermined datagrid with it and we name it
  MyConnection.open()
  MyDataReader = MyCommand.ExecuteReader(CommandBehavior.CloseConnection)


  'Now we assign the dataview to the datasource of the datagrid and we send it right on it		
  imageGrid.DataSource = myDataReader
  imageGrid.DataBind()



  ' Close our DataReader and Connection
  myDataReader.Close()
  myConnection.Close()

End Sub

</script>
<style>
<!--
 p.MsoNormal
	{mso-style-parent:"";
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman";
	margin-left:0in; margin-right:0in; margin-top:0in}
.auto-style1 {
	font-weight: bold;
	text-decoration: underline;
}
.auto-style2 {
	text-align: center;
}
.auto-style3 {
	text-align: left;
}
.auto-style4 {
	margin-left: 0px;
}
-->
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
  <td width = 810 colspan = 1 class="auto-style2">
  <div class="auto-style3">



  <span class="auto-style2">



<p class="auto-style4" style="width: 732px">Starting 
	  on <strong>April 1, 2012</strong>, the price of our <strong>Living Algal 
	  Strains</strong> (10-ml agar and 15-ml liquid cultures) will increase from
	  <strong>$75 to $90 USD per strain</strong> for individuals and commercial 
	  companies, while pricing for US Academic and US Government institutions 
	  will increase from <strong>$30 to $40 USD per strain</strong>.&nbsp; 
	  Pricing for other products and services UTEX provides will not change.&nbsp; 
	  Please visit our <a href="faq.aspx">FAQ</a> page for more information.&nbsp; If you have 
	  questions regarding this change, please <a href="contactUtex.aspx">contact us</a>.<br>
	  <br></p>
	  </span>



  <span class="auto-style1">Announcements<br></span><br>



<img border="0" src="images/exclaim.gif" width="15" height="15"></b>UTEX 
  offers 2-day workshops for those interested in utilizing algae commercially, 
  such as for biofuel production. <b>The workshop on February 9-10, 2012 is 
	  full.&nbsp; The next one will be held on March 22-23, 2012</b>.  Workshops are held at the site of UTEX on the 
  University of Texas campus in Austin, Texas. More 
  information can be found here: <a href="Workshops.aspx">Workshops: Managing 
  Microalgal Cultures</a><br>
  </span><b><br>
 
    <img border="0" src="images/exclaim.gif" width="15" height="15"></b>UTEX 
  sells living microalgae in bulk culture volumes.&nbsp; Select strains can be grown and 
  shipped in multiples of 500-ml or 1-liter<span lang="en-us"> quantities.&nbsp; 
  More information can be found here:&nbsp;
  <a href="bulkcultures.aspx">Bulk Microalgae Cultures</a><br><br>
  
  </span>
  </div>
  <p align="left"><span lang="en-us"><b>About Us</b><br>
   The Culture Collection includes approximately 3,000 different strains of 
   living algae, representing most major algal taxa.&nbsp; Cultures in the 
   Collection are used for research, teaching, biotechnology development, and 
   various other projects throughout the world.&nbsp; UTEX supports this 
   community of users through the provision of algal cultures along with a 
   variety of other goods and services.&nbsp; This website contains a listing of 
   the cultures maintained by UTEX, conditions for their maintenance, 
   information regarding the purchase of cultures, and various other features of 
   UTEX.



<br><br>
  </p>
  </p>
<table width="100%" border= 0>
 <tr>
 <td align="Left">
<asp:DataGrid id="imageGrid" runat="server" 
showHeader = "False"
border="0"
Gridlines="None"	
width="400"
align="Left"
/>
</td>
</tr>
</table>
  <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" id="table1">
    <tr>
      <td>
      <p align="center"><font size="2">Click on image for algae detail.</font></td>
    </tr>
  </table>



  </td>
</tr><br><br>


<tr align="center">
  <td colspan = 3>
	<hr width=100% size=2>
<!--#include virtual="includes/footer.html"-->
  </td>
</tr>


</table>	
</body>
</html>