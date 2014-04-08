<%@ Page Language="VB" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<script language="VB" runat="server">

	Sub btnSearch_OnClick(sender as Object, e as EventArgs)
		dgPaging.CurrentPageIndex = 0
		ShowDataGrid()
	End Sub

	Sub PageChange(sender As Object, e As DataGridPageChangedEventArgs)
		dgPaging.CurrentPageIndex = e.NewPageIndex
		ShowDataGrid()
	End Sub

	Sub ShowDataGrid()
		Dim objConnection As SqlConnection
		Dim objCommand    As SqlCommand
		Dim objAdapter    As SqlDataAdapter
		Dim objDataSet    As DataSet
		Dim strSearch     As String
		Dim strSQLQuery   As String

		strSearch = txtSearch.Text

		If Len(Trim(strSearch)) > 0 Then


			objConnection = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("database/20061106utex.mdb") & ";")
	
			strSQLQuery = "SELECT  utexPrefix + utexNumber as UtexNumber, genus, class, species, media, authoirityName FROM qry_searchList " _
				& "WHERE Genus LIKE '%" & Replace(strSearch, "'", "''") & "%' " _
				& "ORDER BY last_name;"
	


			' Create new command object passing it our SQL query
			' and telling it which connection to use.
			objCommand = New SqlCommand(strSQLQuery, objConnection)

			' Get a DataSet to bind the DataGrid to
			objAdapter = New SqlDataAdapter(objCommand)
			objDataSet = New DataSet()
			objAdapter.Fill(objDataSet)

			' DataBind DG to DS
			dgPaging.DataSource = objDataSet
			dgPaging.DataBind()

			objConnection.Close()
		Else
			txtSearch.Text = "Enter Search Here"
		End If
	End Sub

</script>
<html>
<head>
  <title>ASP.NET Database Paged Search Sample</title>
</head>
<body>

<form runat="server">

<p>Search our sample db by first or last name.  (% returns all)</p>

<asp:TextBox id="txtSearch" runat="server" />

<asp:Button id="btnSearch" runat="server"
	Text    = "Search"
	OnClick = "btnSearch_OnClick"
/>

<p>
[Since we've got a very small sample DB, try a single letter
search like 'a' or 'e' for an example that actually pages!]
</p>

<!-- Plain vanilla DataGrid... format it as you like. -->
<asp:DataGrid id="dgPaging" runat="server"
  AllowPaging = "True"
  PageSize    = 5
  OnPageIndexChanged = "PageChange">
	<PagerStyle Mode="NumericPages" />
</asp:DataGrid>

</form>

<hr />

<p>
Click <a href="http://www.asp101.com/samples/db_paged_search_aspx.asp">here</a>
to read about and download the source code.
</p>

</body>
</html>
