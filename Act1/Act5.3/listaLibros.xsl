<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Mi biblioteca personal</h1>
                <table>
                    <tr bgcolor="#ff7676">
                        <th>ISBN</th>
                        <th>Título</th>
                        <th>Autor</th>
                        <th>Precio</th>
                    </tr>
                    <xsl:for-each select="libreria/libro">
                        <xsl:sort select="precio" data-type="number"/>
                        <xsl:sort select="autor"/>
                        <xsl:if test="precio &gt; 10">
                            <tr bgcolor="#ADD8E6">
                                <td><xsl:value-of select="isbn"/></td>
                                <td><xsl:value-of select="titulo"/></td>
                                <td><xsl:value-of select="autor"/></td>
                                <td><xsl:value-of select="precio"/></td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
                <table>
                    <tr bgcolor="#ff7676">
                        <th>ISBN</th>
                        <th>Título</th>
                        <th>Autor</th>
                        <th>Precio</th>
                    </tr>
                    <xsl:for-each select="libreria/libro">
                        <xsl:sort select="precio" data-type="number"/>
                        <xsl:sort select="autor"/>
                        <xsl:if test="precio &gt; 10 and autor='George R.R. Martin'">
                            <tr bgcolor="#ADD8E6">
                                <td><xsl:value-of select="isbn"/></td>
                                <td><xsl:value-of select="titulo"/></td>
                                <td><xsl:value-of select="autor"/></td>
                                <td><xsl:value-of select="precio"/></td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>                
                <table>
                    <tr bgcolor="#ff7676">
                        <th>ISBN</th>
                        <th>Título</th>
                        <th>Autor</th>
                        <th>Precio</th>
                    </tr>
                    <xsl:for-each select="libreria/libro">
                        <xsl:sort select="precio" data-type="number"/>
                        <xsl:sort select="autor"/>
                        <xsl:if test="precio &gt; 12">
                            <tr bgcolor="#ADD8E6">
                                <td><xsl:value-of select="isbn"/></td>
                                <td><xsl:value-of select="titulo"/></td>
                                <td><xsl:value-of select="autor"/></td>
                                <td><xsl:value-of select="precio"/></td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
