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
			table tr .head{
				background-color: #f2f2f2;
				color:black;
				font-size: 30px;
				border-radius: 40px 40px 0px 0px;
				font-family: Monospace;
			}
			table tr .plain{
				background-color: #f2f2f2;
				color:black;
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
		</style>
            </head>
            <body>
				<section class="table-one">
					<table border="1" class="table-one">
							<div class="buttons">
								<a href="http://127.0.0.1:5500/index.html">Go Back</a>
								<a href="http://127.0.0.1:5500/table5/promo.xml">Next Table</a>
							</div>
							<div class="content">
								<h1>List of Sports Products</h1>
							</div>
							<tr bgcolor="83c5be">
								<th colspan ="7" class="head">TEAM SPORTS</th>
							</tr>
							<tr bgcolor="ADD8E6">
							   <th class="plain">PRODUCT NUM</th>
							   <th>PRODUCT NAME</th>
							   <th>DESCRIPTION</th>
							   <th>SIZE</th>
							   <th>SHIPPING</th>
							   <th>TRANSACTION</th>
							   <th>PRICE</th>
							</tr>
						<xsl:for-each select="sports/teamsports">			
							<tr bgcolor="f2f2f2">
								<td><xsl:value-of select="@count"/></td>
								<td><xsl:value-of select = "item"/></td>
								<td><xsl:value-of select = "description"/></td>
								<td><xsl:value-of select = "size"/></td>
								<td><xsl:value-of select = "details"/></td>
								<td><xsl:value-of select = "transaction"/></td>
								<td><xsl:value-of select = "price"/></td>	
							</tr>
						</xsl:for-each>
					</table>
				</section>
				<section class="table-two">
					<table border="1" class="table-two">
							<tr bgcolor="83c5be">
								<th colspan ="7" class="head">CYCLING</th>
							</tr>
							<tr bgcolor="ADD8E6">
							   <th class="plain">PRODUCT NUM</th>
							   <th>PRODUCT NAME</th>
							   <th>DESCRIPTION</th>
							   <th>SIZE</th>
							   <th>SHIPPING</th>
							   <th>TRANSACTION</th>
							   <th>PRICE</th>
							</tr>
						<xsl:for-each select="sports/cycling">			
							<tr bgcolor="f2f2f2">
								<td><xsl:value-of select="@count"/></td>
								<td><xsl:value-of select = "item"/></td>
								<td><xsl:value-of select = "description"/></td>
								<td><xsl:value-of select = "size"/></td>
								<td><xsl:value-of select = "details"/></td>
								<td><xsl:value-of select = "transaction"/></td>
								<td><xsl:value-of select = "price"/></td>	
							</tr>
						</xsl:for-each>
					</table>
				</section>
				<section class="table-three">
					<table border="1">
							<tr bgcolor="83c5be">
							<th colspan ="7" class="head">BOXING AND COMBAT SPORTS</th>
							</tr>
								<tr bgcolor="ADD8E6">
									<th class="plain">PRODUCT NUM</th>
									<th>PRODUCT NAME</th>
									<th>DESCRIPTION</th>
									<th>SIZE</th>
									<th>SHIPPING</th>
									<th>TRANSACTION</th>
									<th>PRICE</th>
								</tr>
						<xsl:for-each select="sports/boxing">			
							<tr bgcolor="f2f2f2">
								<td><xsl:value-of select="@count"/></td>
								<td><xsl:value-of select = "item"/></td>
								<td><xsl:value-of select = "description"/></td>
								<td><xsl:value-of select = "size"/></td>
								<td><xsl:value-of select = "details"/></td>
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