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
					margin-top: 20px;
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
					text-decoration: none;
				}
				.content h1{
					margin-left: 35px;
					font-size: 50px;
					text-align:center;
					font-family: 'Bruno Ace SC', cursive;
				}
			</style>
					<body>
						<div class="buttons">
							<a href="http://127.0.0.1:5500/index.html">Go Back</a>
						</div>
						<div class="content">
							<h1>List of Sales and Promo</h1>
						</div>

						<table border="1">
							<tr>
								<th>PRODUCT NAME</th>
								<th>BRAND</th>
								<th>SIZE</th>
								<th>DESCRIPTION</th>
								<th>SHIPPING</th>
								<th>ORIGINAL PRICE</th>
								<th>SALE PRICE</th>
							</tr>
							<xsl:for-each select ="promo/product">
								<tr bgcolor="f2f2f2">
									<td><xsl:value-of select ="name"/></td>
									<td><xsl:value-of select ="brand"/></td>
									<td><xsl:value-of select ="size"/></td>
									<td><xsl:value-of select ="description"/></td>
									<td><xsl:value-of select ="order"/></td>
									<td><xsl:value-of select ="origprice"/></td>
									<td><xsl:value-of select ="disprice"/></td>
								</tr>
							</xsl:for-each>
						</table>
					</body>
		</html>
	</xsl:template>
</xsl:stylesheet>