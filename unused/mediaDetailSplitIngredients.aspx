

Sub mediaStockDetail( mediaID as string)
  Dim MyConnection As OleDBConnection
  Dim MyAdapter as OleDbDataAdapter
  Dim MyDataReader As OleDbDataReader
  Dim DS as Dataset
  Dim MyCommand As OleDBCommand
  Dim sqlStr As String
  Dim RcdCount As Integer

  IF not isNumeric(mediaID) 
	mediaID = cstr(0)
  END IF

  sqlStr = "select nutrient, StockPerFinal, StockAmount, FinalConcentration from qry_MediaStockSolution where mediaID = " + mediaID
  sqlStr = sqlStr + " order by SortOrder"

  'Open up our connection with our connection object
  MyConnection = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath(dbFile) & ";")

  'To execute our Sql Statement and provide out active connection
  MyCommand = New OleDbCommand(sqlStr, MyConnection)

  'Create instance of dataset object and fill our predetermined datagrid with it and we name it

  MyAdapter = new OleDBDataAdapter(MyCommand)
  DS = new Dataset()			
  MyAdapter.Fill(DS, "mediaStockData")


  RcdCount = DS.Tables("mediaStockData").Rows.Count.ToString()

  IF RcdCount > 0
	  mediaStockData.DataSource = DS
	  mediaStockData.Databind()
  END IF




  ' Close our DataReader and Connection

  myConnection.Close()

End Sub


Sub mediaNutrientDetail( mediaID as string)
  Dim MyConnection As OleDBConnection
  Dim MyAdapter as OleDbDataAdapter
  Dim MyDataReader As OleDbDataReader
  Dim DS as Dataset
  Dim MyCommand As OleDBCommand
  Dim sqlStr As String
  Dim RcdCount As Integer

  IF not isNumeric(mediaID) 
	mediaID = cstr(0)
  END IF

  sqlStr = "select nutrient, nutrientAmount, StockNutrientAmount, FinalNutrientConcentration from qry_MediaNutrient where mediaID = " + mediaID
  sqlStr = sqlStr + " order by SortOrder"

  'Open up our connection with our connection object
  MyConnection = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath(dbFile) & ";")

  'To execute our Sql Statement and provide out active connection
  MyCommand = New OleDbCommand(sqlStr, MyConnection)

  'Create instance of dataset object and fill our predetermined datagrid with it and we name it

  MyAdapter = new OleDBDataAdapter(MyCommand)
  DS = new Dataset()			
  MyAdapter.Fill(DS, "mediaNutrientData")

  RcdCount = DS.Tables("mediaNutrientData").Rows.Count.ToString()

  IF RcdCount > 0
	  mediaNutrientData.DataSource = DS
	  mediaNutrientData.Databind()
  END IF

  ' Close our DataReader and Connection

  myConnection.Close()

End Sub




Sub mediaMediaDetail( mediaID as string)
  Dim MyConnection As OleDBConnection
  Dim MyAdapter as OleDbDataAdapter
  Dim MyDataReader As OleDbDataReader
  Dim DS as Dataset
  Dim MyCommand As OleDBCommand
  Dim sqlStr As String
  Dim RcdCount As Integer

  IF not isNumeric(mediaID) 
	mediaID = cstr(0)
  END IF

  sqlStr = "select '<a href=mediaDetail.aspx?mediaID=' + cstr(referencedMediaID) + '>'+ media + '</a>' as Media, mediaAmount from qry_MediaMedia where mediaID = " + mediaID
  sqlStr = sqlStr + " order by SortOrder"

  'Open up our connection with our connection object
  MyConnection = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath(dbFile) & ";")

  'To execute our Sql Statement and provide out active connection
  MyCommand = New OleDbCommand(sqlStr, MyConnection)

  'Create instance of dataset object and fill our predetermined datagrid with it and we name it

  MyAdapter = new OleDBDataAdapter(MyCommand)
  DS = new Dataset()			
  MyAdapter.Fill(DS, "mediaMediaData")

  RcdCount = DS.Tables("mediaMediaData").Rows.Count.ToString()

  IF RcdCount > 0
	  mediaMediaData.DataSource = DS
	  mediaMediaData.Databind()
  END IF

  ' Close our DataReader and Connection

  myConnection.Close()

End Sub







<!--List all stock solution information in this media  -->
<% mediaStockDetail(request.queryString("mediaID")) %>

<table>
  <tr> 
    <td>&nbsp;&nbsp;</td>
    <td>
    <ASP:Datagrid 
	      id="mediaStockData"
	      runat="server" 
	      Font-Size="10pt"
	      Width = "600"
	      AutoGenerateColumns="False"
	      Gridlines="None"	
	      cellspacing="0"
	      cellpadding="2"	     
    >
<HeaderStyle BackColor="Blue" ForeColor="White" Font-Bold="True" HorizontalAlign="Left"  VerticalAlign = "TOP" />
<AlternatingItemStyle BackColor="#EFEFEE" />

    <columns>
        <asp:boundcolumn DataField="Nutrient" HeaderText="Stock Components" ItemStyle-Width="150" />
        <asp:boundcolumn DataField="StockPerFinal" HeaderText="Stock Solution <br>per Final Solution" SortExpression="Strain"  ItemStyle-Width="150" />
        <asp:boundcolumn DataField="StockAmount" HeaderText="Stock Solution <br>Concentration"  ItemStyle-Width="150"  />
        <asp:boundcolumn DataField="FinalConcentration" HeaderText="Final Concentration"   ItemStyle-Width="150" />
    </columns>

    </ASP:DataGrid>
    </td>
  </tr>
</table>

<!--List all nutrient information in this media  -->
<% mediaNutrientDetail(request.queryString("mediaID")) %>
<table>
  <tr> 
    <td>&nbsp;&nbsp;</td>
    <td>
    <ASP:Datagrid 
	      id="mediaNutrientData"
	      runat="server" 
	      Font-Size="10pt"
	      Width = "450"
	      AutoGenerateColumns="False"
	      Gridlines="None"	
	      cellspacing="0"
	      cellpadding="2"	     
    >
<HeaderStyle BackColor="Blue" ForeColor="White" Font-Bold="True" HorizontalAlign="Left"  VerticalAlign = "TOP" />
<AlternatingItemStyle BackColor="#EFEFEE" />

    <columns>
        <asp:boundcolumn DataField="Nutrient" HeaderText="Nutrients" ItemStyle-Width="150" />
        <asp:boundcolumn DataField="NutrientAmount" HeaderText="Amount" SortExpression="Strain"  ItemStyle-Width="150" />
        <asp:boundcolumn DataField="FinalNutrientConcentration" HeaderText="Final Concentration"   ItemStyle-Width="150" />
    </columns>

    </ASP:DataGrid>
    </td>
  </tr>
</table>

<!--List all media information in this media  -->
<% mediaMediaDetail(request.queryString("mediaID")) %>
<table>
  <tr> 
    <td>&nbsp;&nbsp;</td>
    <td>
    <ASP:Datagrid 
	      id="mediaMediaData"
	      runat="server" 
	      Font-Size="10pt"
	      Width = "300"
	      AutoGenerateColumns="False"
	      Gridlines="None"	
	      cellspacing="0"
	      cellpadding="2"	     
    >
<HeaderStyle BackColor="Blue" ForeColor="White" Font-Bold="True" HorizontalAlign="Left"  VerticalAlign = "TOP" />
<AlternatingItemStyle BackColor="#EFEFEE" />

    <columns>
        <asp:boundcolumn DataField="media" HeaderText="Media" ItemStyle-Width="150" />
        <asp:boundcolumn DataField="mediaAmount" HeaderText="Amount" SortExpression="Strain"  ItemStyle-Width="150" />
    </columns>

    </ASP:DataGrid>
    </td>
  </tr>
</table>
