<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
    <h2>Mostrando valores para Sitio:</h2>
	  <xsl:value-of select="Doc/Site/SiteName"/> (Site_ID = 
      <xsl:value-of select="Doc/Site/SiteID"/>)
      <br/><br/>
      
	  <table border="1"  class="table table-striped table-bordered">
		  <tr class="backgroundBlue">
			<th>Order ID</th>
			<th>Customer ID</th>
			<th>Employee ID</th>
			<th>Order Date</th>
			<th>Required Date</th>
			<th>Shipped Date</th>
			<th>Ship Via</th>
			<th>Freight</th>
			<th>Ship Name</th>
			<th>Ship Address</th>
			<th>Ship City</th>
			<th>Ship Postal Code</th>
			<th>Ship Country</th>
			<th colspan="25">Details</th>
		</tr>
		  <xsl:for-each select="Doc/Site/Orders/Order">
		  <tr>
			<td><xsl:value-of select="OrderID" /></td>
			<td><xsl:value-of select="CustomerID" /></td>
			<td><xsl:value-of select="EmployeeID" /></td>
			<td><xsl:value-of select="OrderDate" /></td>
			<td><xsl:value-of select="RequiredDate" /></td>
			<td><xsl:value-of select="ShippedDate" /></td>
			<td><xsl:value-of select="ShipVia" /></td>
			<td><xsl:value-of select="Freight" /></td>
			<td><xsl:value-of select="ShipName" /></td>
			<td><xsl:value-of select="ShipAddress" /></td>
			<td><xsl:value-of select="ShipCity" /></td>
			<td><xsl:value-of select="ShipPostalCode" /></td>
			<td><xsl:value-of select="ShipCountry" /></td>
			<td>
				<table border="1" class="table table-striped table-bordered table-condensed table-inner">
					<tr >
						<th>Product ID</th>
						<th>Unit Price</th>
						<th>Quantity</th>
						<th>Discount</th>
						<th>Order DetailID</th>
						<th>Product Name</th>
					</tr>
				<xsl:for-each select="Details/Detail">
					<tr>
						<td><xsl:value-of select="ProductID" /></td>
						<td><xsl:value-of select="UnitPrice" /></td>
						<td><xsl:value-of select="Quantity" /></td>
						<td><xsl:value-of select="Discount" /></td>
						<td><xsl:value-of select="OrderDetailID" /></td>
						<td><xsl:value-of select="Product/ProductName" /></td>
					</tr>
				</xsl:for-each>
				</table>
			</td>
		  </tr>
		  </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>