<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" doctype-system="about:legacy-compat" encoding="UTF-8" indent="yes"/>

<xsl:template match="/notas">
    <html>
        <head>
            <title>Notas de Alumnos</title>
        </head>
        <body>
            <div style="text-align: center;">
                <table border="1" bgcolor="#D4F9F9">
                    <tr bgcolor="#57969F">
                        <th colspan="2">Datos</th>
                        <th colspan="4">Notas</th>
                    </tr>
                    <tr bgcolor="#78DBE8">
                        <th>Nombre</th>
                        <th>Apellidos</th>
                        <th>Cuestionarios</th>
                        <th>Tareas</th>
                        <th>Examen</th>
                        <th>Final</th>
                    </tr>
                    <xsl:apply-templates select="alumno[@convocatoria='Junio']"/>
                </table>
            </div>
        </body>
    </html>
</xsl:template>

<xsl:template match="alumno">
    <tr>
        <td><xsl:value-of select="nombre"/></td>
        <td><xsl:value-of select="apellidos"/></td>
        <td><xsl:value-of select="cuestionarios"/></td>
        <td><xsl:value-of select="tareas"/></td>
        <td><xsl:value-of select="examen"/></td>
        <td>
            <xsl:choose>
                <xsl:when test="final >= 9">
                    <span style="color: blue;">Sobresaliente</span>
                </xsl:when>
                <xsl:when test="final >= 7">
                    <span style="color: lightblue;">Notable</span>
                </xsl:when>
                <xsl:when test="final >= 6">
                    <span style="color: black;">Bien</span>
                </xsl:when>
                <xsl:when test="final >= 5">
                    <span style="color: orange;">Suficiente</span>
                </xsl:when>
                <xsl:otherwise>
                    <span style="color: red;">Suspenso</span>
                </xsl:otherwise>
            </xsl:choose>
        </td>
    </tr>
</xsl:template>

</xsl:stylesheet>