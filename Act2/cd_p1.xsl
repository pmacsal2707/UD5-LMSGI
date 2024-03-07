<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Mi lista de CDs</h1>
                <table>
                    <tr bgcolor="#ff7676"> 
                      <th>Título del álbum</th>
                      <th>Artista</th>
                      <th>Canciones</th>
                      <th>Sello discográfico</th>
                      <th>Año de publicación</th>
                    </tr>
                    <xsl:for-each select="cds/cd">
                    <tr bgcolor="#ADD8E6">
                      <td><xsl:value-of select="titulo_album"/></td>
                      <td><xsl:value-of select="artista"/></td>
                      <td>
                        <ul>
                          <xsl:for-each select="canciones/cancion">
                            <li><xsl:value-of select="titulo"/> - <xsl:value-of select="duracion"/></li>
                          </xsl:for-each>
                        </ul>
                      </td>
                      <td><xsl:value-of select="sello_discografico"/></td>
                      <td><xsl:value-of select="anio_publicacion"/></td>
                    </tr>
                    </xsl:for-each>
                 </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
