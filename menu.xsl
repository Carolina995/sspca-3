<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<xsl:template match="/">
		<table id="menuTable" border="1" class="indent">
			<thead>
				<tr>
					<th>Select</th>
					<th>Movie</th>
					<th>Year</th>
					<th>Poster</th>
				</tr>
			</thead>
			<tbody>
				<xsl:for-each select="//category">
					<tr>
						<td colspan="4">
							<xsl:value-of select="@name" />
						</td>
					</tr>
					<xsl:for-each select="movie">
						<tr id="{position()}">
							<xsl:attribute name="decaf">
								<xsl:value-of select="boolean(@decaf)" />
							</xsl:attribute>
							<td align="center">
								<input name="item0" type="checkbox" />
							</td>
							<td>
								<xsl:value-of select="name" />
							</td>
							<td align="right">
								<xsl:value-of select="year" />
							</td>
							<td>
							<xsl:for-each select="Image">
								<img width="150" height="200">
								<xsl:attribute name="src">
									<xsl:value-of select="."/>
								</xsl:attribute>
								</img>
							</xsl:for-each>
						</tr>
					</xsl:for-each>
				</xsl:for-each>
				
			</tbody>
		</table>
	</xsl:template>
</xsl:transform>