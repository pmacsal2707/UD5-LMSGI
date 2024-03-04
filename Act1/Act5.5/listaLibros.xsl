<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Mi biblioteca</h1>
                    <table>
                        <tr bgcolor="#887788">
                            <th>ISBN</th>
                            <th>Título</th>
                            <th>Autor</th>
                            <th>Precio</th>
                            <th>Número de páginas</th>
                        </tr>
                        <xsl:for-each select="libreria/libro">
                            <tr>
                                <td><xsl:value-of select="isbn"/></td>
                                <td><xsl:value-of select="titulo"/></td>
                                <td><xsl:value-of select="autor"/></td>
                                <td><xsl:value-of select="precio"/></td>
                                <td>
                                    <xsl:apply-templates select="numPaginas"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
            </body>
        </html>
        </xsl:template>

        <!-- Nueva plantilla para numPaginas > 150 -->
        <xsl:template match="numPaginas[. > 150]">
        <span style="color:red;"><xsl:value-of select="."/></span>
        </xsl:template>

        <!-- Plantilla por defecto para numPaginas -->
        <xsl:template match="numPaginas">
        <xsl:value-of select="."/>
    </xsl:template>
</xsl:stylesheet>
