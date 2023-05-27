<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<html>
				<style>
					body{
						background-image:linear-gradient(white,#0D429B);
					}
					table{
						margin:auto;
						width:95%;
						border-collapse: collapse;
					}
					.content h1{
						margin-left: 35px;
						font-size: 50px;
						text-align:center;
						font-family: 'Bruno Ace SC', cursive;
					}
					table tr .head{
						background-color: #f2f2f2;
						color:black;
						font-size: 30px;
						border-radius: 40px 40px 0px 0px;
						font-family: Monospace;
					}
					table tr th{
						background-color: #0D429B;
						color: white;
					}
					table tr th, tr td{
						padding:10px;
						text-align:center;
					}
					table tr td{
						font-family: Arial, Helvetica, sans-serif;
					}
					table tr .plain{
						background-color: #f2f2f2;
						color:black;
					}
					.buttons{
						display: flex;
						justify-content: space-between;
						align-items:center;
						padding: 0px 10% 0px 10%;
						margin-top: 50px;
					}
					.buttons a{
						padding: 10px 30px;
						background-color: #0D429B; 	
						border-radius: 5px;
						border: none;
						color:white;
						font-weight: bold;
						text-decoration:none;
					}
					.table-one{
						padding: 0px 0px 20px 0px;
					}
					.table-two{
						padding: 0px 0px 20px 0px;
					}
					.table-three{
						padding: 0px 0px 20px 0px;
					}
					.table-four{
						padding: 0px 0px 20px 0px;
					}
				</style>
			<body>
				<section class="table-one">
					<table border="1" class="table-one">
						<div class="buttons">
							<a href="http://127.0.0.1:5500/index.html">Go Back</a>
							<a href="http://127.0.0.1:5500/table3/running.xml">Next Table</a>
						</div>
						<div class="content">
							<h1>List of Basketball Products</h1>
						</div>
						<tr bgcolor="cyan">
							<th colspan="7" class="head">BASKETBALL SHOES</th>
						</tr>
						<tr bgcolor="pink">
							<th class="plain">PRODUCT NUM</th>
							<th>PRODUCT</th>
							<th>SIZES</th>
							<th>DESCRIPTION</th>
							<th>SHIPPING</th>
							<th>TRANSACTION</th>
							<th>PRICE</th>
						</tr>
						<xsl:for-each select="basketball/basketballshoes">
							<tr bgcolor="f2f2f2">
								<td><xsl:value-of select="@count"/></td>
								<td><xsl:value-of select="product"/></td>
								<td><xsl:value-of select="sizes"/></td>
								<td><xsl:value-of select="description"/></td>
								<td><xsl:value-of select="shipping"/></td>
								<td><xsl:value-of select="transaction"/></td>
								<td><xsl:value-of select="price"/></td>
							</tr>
						</xsl:for-each>
					</table>
				</section>
				<section class="table-two">
					<table border="1" class="table-two">
						<tr bgcolor="#A5C4E0">
							<th colspan="7" class="head">BALLS EQUIPMENT</th>
						</tr>
						<tr bgcolor="#E7E5FA">
							<th class="plain">PRODUCT NUM</th>
							<th>PRODUCT</th>
							<th>SIZES</th>
							<th>DESCRIPTION</th>
							<th>SHIPPING</th>
							<th>TRANSACTION</th>
							<th>PRICE</th>
						</tr>
						<xsl:for-each select="basketball/ballsequipment">
							<tr bgcolor="f2f2f2">
								<td><xsl:value-of select="@count"/></td>
								<td><xsl:value-of select="product"/></td>
								<td><xsl:value-of select="sizes"/></td>
								<td><xsl:value-of select="description"/></td>
								<td><xsl:value-of select="shipping"/></td>
								<td><xsl:value-of select="transaction"/></td>
								<td><xsl:value-of select="price"/></td>
							</tr>
						</xsl:for-each>
					</table>
				</section>
				<section class="table-three">
					<table border="1" class="table-three">
						<tr bgcolor="#F4C430">
							<th colspan="7" class="head">BASKETBALL HOOPS</th>
						</tr>
						<tr bgcolor="#2CD5A0">
							<th class="plain">PRODUCT NUM</th>
							<th>PRODUCT</th>
							<th>SIZES</th>
							<th>DESCRIPTION</th>
							<th>SHIPPING</th>
							<th>TRANSACTION</th>
							<th>PRICE</th>
						</tr>
						<xsl:for-each select="basketball/basketballhoops">
							<tr bgcolor="f2f2f2">
								<td><xsl:value-of select="@count"/></td>
								<td><xsl:value-of select="product"/></td>
								<td><xsl:value-of select="sizes"/></td>
								<td><xsl:value-of select="description"/></td>
								<td><xsl:value-of select="shipping"/></td>
								<td><xsl:value-of select="transaction"/></td>
								<td><xsl:value-of select="price"/></td>
							</tr>
						</xsl:for-each>
					</table>
				</section>
				<section class="table-four">
					<table border="1" class="table-four">
						<tr bgcolor="#A95D6B">
							<th colspan="7" class="head">BASKETBALL APPAREL</th>
						</tr>
						<tr bgcolor="#BCB88A">
							<th class="plain">PRODUCT NUM</th>
							<th>PRODUCT</th>
							<th>SIZES</th>
							<th>DESCRIPTION</th>
							<th>SHIPPING</th>
							<th>TRANSACTION</th>
							<th>PRICE</th>
						</tr>
						<xsl:for-each select="basketball/basketballapparel">
							<tr bgcolor="f2f2f2">
								<td><xsl:value-of select="@count"/></td>
								<td><xsl:value-of select="product"/></td>
								<td><xsl:value-of select="sizes"/></td>
								<td><xsl:value-of select="description"/></td>
								<td><xsl:value-of select="shipping"/></td>
								<td><xsl:value-of select="transaction"/></td>
								<td><xsl:value-of select="price"/></td>
							</tr>
						</xsl:for-each>
					</table>
				</section>
			</body>
		</html>
	</xsl:template>
	
</xsl:stylesheet>
