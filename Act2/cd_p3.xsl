<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:output method="html" encoding="UTF-8" indent="yes"/>
 <xsl:template match="/cds">
    <html>
      <head>
        <title>Canciones de Harvest Records</title>
      </head>
      <body>
        <h2>Canciones de Harvest Records</h2>
        <table border="1">
          <tr bgcolor="#53E69B">
            <th>Título de la canción</th>
            <th>Duración</th>
          </tr>
          <xsl:apply-templates select="cd[sello_discografico='Harvest Records']/canciones/cancion"/>
        </table>
      </body>
    </html>
 </xsl:template>
 <xsl:template match="cancion">
    <tr bgcolor="#FFB463">
      <td><xsl:value-of select="titulo"/></td>
      <td><xsl:value-of select="duracion"/></td>
    </tr>
 </xsl:template>

</xsl:stylesheet>
