<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:output method="html" encoding="UTF-8" indent="yes"/>

 <!-- Plantilla principal para generar el HTML -->
 <xsl:template match="/cds">
    <html>
      <head>
        <title>Canciones de Pink Floyd</title>
      </head>
      <body>
        <h2>Canciones de Pink Floyd</h2>
        <table border="1" >
          <tr bgcolor="#53E69B">
            <th>Título de la canción</th>
            <th>Duración</th>
          </tr>
          <xsl:apply-templates select="cd[artista='Pink Floyd']/canciones/cancion"/>
        </table>
      </body>
    </html>
 </xsl:template>
 <xsl:template match="cancion">
    <tr bgcolor="#ADD8E6">
      <td><xsl:value-of select="titulo"/></td>
      <td><xsl:value-of select="duracion"/></td>
    </tr>
 </xsl:template>

</xsl:stylesheet>
