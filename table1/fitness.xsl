<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
<xsl:template match="/">
    <html>
	    <head>
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
			</style>
        </head>
            <body>
				<section class="table-one">
					<table border="1" class="table-one">
						<div class="buttons">
							<a href="https://jamquinto.github.io/tobsytable.github.io/?fbclid=IwAR2AYblMvwa24ZXxVWy6svpEzagTk3JAGp67shlC2CUEGmJefITaZhXHU50/index.html">Go Back</a>
							<a href="table2/basketball.xml">Next Table</a>
						</div>
						<div class="content">
							<h1>List of Fitness Products</h1>
						</div>
							<tr bgcolor="#82a899">
								<th colspan ="6" class="head">EXERCISE EQUIPMENT</th>
							</tr>
							<tr bgcolor="#467baa">
							   <th class="plain">PRODUCT NUM</th>
							   <th>PRODUCT NAME</th>
							   <th>DESCRIPTION</th>
							   <th>SHIPPING DETAILS</th>
							   <th>TRANSACTION</th>
							   <th>PRICE</th>
							</tr>
						<xsl:for-each select="fitness/exerciseequipment">			
							<tr bgcolor="#f2f2f2">
								<td><xsl:value-of select="@count"/></td>
								<td><xsl:value-of select = "item"/></td>
								<td><xsl:value-of select = "description"/></td>
								<td><xsl:value-of select = "shipping"/></td>
								<td><xsl:value-of select = "transaction"/></td>
								<td><xsl:value-of select = "price"/></td>	
							</tr>
						</xsl:for-each>
					</table>
				</section>
				<section class="table-two">
					<table border="1" class="table-two">
							<tr bgcolor="#82a899">
								<th colspan ="6" class="head">ACCESSORIES EQUIPMENT</th>
							</tr>
							<tr bgcolor="#467baa">
							   <th class="plain">PRODUCT NUM</th>
							   <th>PRODUCT NAME</th>
							   <th>DESCRIPTION</th>
							   <th>SHIPPING DETAILS</th>
							   <th>TRANSACTION</th>
							   <th>PRICE</th>
							</tr>
						<xsl:for-each select="fitness/accessoriesequipment">			
							<tr bgcolor="#f2f2f2">
								<td><xsl:value-of select="@count"/></td>
								<td><xsl:value-of select = "item"/></td>
								<td><xsl:value-of select = "description"/></td>
								<td><xsl:value-of select = "shipping"/></td>
								<td><xsl:value-of select = "transaction"/></td>
								<td><xsl:value-of select = "price"/></td>	
							</tr>
						</xsl:for-each>
					</table>
				</section>
				<section class="table-tree">
					<table border="1">
						<tr bgcolor="#82a899">
						<th colspan ="6" class="head">GEAR EQUIPMENT</th>
						</tr>
							<tr bgcolor="#467baa">
							   <th class="plain">PRODUCT NUM</th>
							   <th>PRODUCT NAME</th>
							   <th>DESCRIPTION</th>
							   <th>SHIPPING DETAILS</th>
							   <th>TRANSACTION</th>
							   <th>PRICE</th>
							  </tr>
							<xsl:for-each select="fitness/gearequipment">			
								<tr bgcolor="#f2f2f2">
									<td><xsl:value-of select="@count"/></td>
									<td><xsl:value-of select = "item"/></td>
									<td><xsl:value-of select = "description"/></td>
									<td><xsl:value-of select = "shipping"/></td>
									<td><xsl:value-of select = "transaction"/></td>
									<td><xsl:value-of select = "price"/></td>	
								</tr>
							</xsl:for-each>
					</table>
				</section>
            </body>
    </html>
    </xsl:template>
</xsl:stylesheet>
