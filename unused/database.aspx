<%@ Page Language="VB"%>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>

<script language="VB" runat="server">
	Sub Page_Load(Src as object, E as EventArgs)
		If rblLTorGT.SelectedIndex = -1 Then rblLTorGT.SelectedIndex = 0
	End Sub
	
	Sub btnRunQuery_OnClick(Sender As Object, E As EventArgs)
		Dim objConnection As OleDbConnection
		Dim objCommand As OleDbCommand
		Dim objDataReader As OleDbDataReader
		Dim strSQLQuery As String
		
		objConnection = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("database/database.mdb") & ";")

		strSQLQuery = "SELECT * FROM sample " & _
			"WHERE (Sales " & rblLTorGT.SelectedItem.Value.ToString() & " " & txtSalesAmount.Text.ToString() & ") " & _
			"ORDER BY " & ddlSortBy.SelectedItem.Value.ToString() & ddlSortOrder.SelectedItem.Value.ToString()

		objCommand = New OleDbCommand(strSQLQuery, objConnection)

		objConnection.Open()
		
		objDataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection)

		lblSQLCommandLabel.Text = strSQLQuery
		
		EmployeeDataGrid.DataSource = objDataReader
		EmployeeDataGrid.DataBind()
	End Sub
</script>

<html>
<body>

<form action="database.aspx" method="post" runat="server">
	<strong>Sales:</strong><br />
	
	<table border="0">
		<tr><td>
			<asp:RadioButtonList id="rblLTorGT" runat="server">
				<asp:ListItem value="<" runat="server">Less Than</asp:ListItem>
				<asp:ListItem value=">" runat="server">Greater Than</asp:ListItem>
			</asp:RadioButtonList>
		</td><td>
			<asp:TextBox id="txtSalesAmount" runat="server" />
			<asp:RequiredFieldValidator runat="server"
				id="validSalesEntry" controlToValidate="txtSalesAmount"
				errorMessage="You must enter a sales amount!"
				display="dynamic"
			/>
			<asp:RangeValidator runat="server"
				id="validSalesAmount" controlToValidate="txtSalesAmount"
				type="Integer" minimumValue="-32000" maximumValue="+32000"
				errorMessage="You must enter an integer!"
				display="dynamic"
			/>
		</td></tr>
	</table>
	
	<strong>Sort By:</strong><br />

	<asp:DropDownList id="ddlSortBy" runat="server">
		<asp:ListItem value="id"         >Id</asp:ListItem>
		<asp:ListItem value="last_name"  >Last Name</asp:ListItem>
		<asp:ListItem value="first_name" >First Name</asp:ListItem>
		<asp:ListItem value="sales">Sales</asp:ListItem>
	</asp:DropDownList>

	<asp:DropDownList id="ddlSortOrder" runat="server">
		<asp:ListItem value=" ASC" >Ascending</asp:ListItem>
		<asp:ListItem value=" DESC">Descending</asp:ListItem>
	</asp:DropDownList>
	
	<asp:Button type="submit" id="btnRunQuery" text="Run Query" OnClick="btnRunQuery_OnClick" runat="server" />
</form>

<p>
<strong>Results of:</strong> <asp:label id="lblSQLCommandLabel" runat="server" />
</p>

<asp:DataGrid id="EmployeeDataGrid" runat="server"
	cellspacing="1"
	cellpadding="2"
	HeaderStyle-Font-Bold="True"
	ToolTip="This is Cool!"
	MaintainViewState="false"
/>

</body>
</html>