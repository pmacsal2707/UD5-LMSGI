<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:output method="html" encoding="UTF-8" indent="yes"/>
 <xsl:template match="/cds">
    <html>
      <head>
        <title>Canciones con duración inferior a 4 minutos</title>
      </head>
      <body>
        <h2>Canciones con duración inferior a 4 minutos</h2>
        <table border="1">
          <tr bgcolor="#63ECFF">
            <th>Título de la canción</th>
            <th>Duración</th>
          </tr>
          <xsl:apply-templates select="cd/canciones/cancion[substring-before(duracion, ':') &lt; 4]"/>
        </table>
      </body>
    </html>
 </xsl:template>
 <xsl:template match="cancion">
    <tr bgcolor="#A8FF63">
      <td><xsl:value-of select="titulo"/></td>
      <td><xsl:value-of select="duracion"/></td>
    </tr>
 </xsl:template>
</xsl:stylesheet>
