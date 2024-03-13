<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" encoding="UTF-8" doctype-system="about:legacy-compat" />

<xsl:template match="/">
    <html>
        <head>
            <title>Notas de Alumnos - CFGS Desarrollo de Aplicaciones Web</title>
            <style type="text/css">
                body { font-family: Arial, sans-serif; }
                th, td { border: 1px solid #ddd; padding: 8px; }
                th { background-color: #4CAF50; color: white; }
                .blue { color: blue; }
                .light-blue { color: lightblue; }
                .black { color: black; }
                .orange { color: orange; }
                .red { color: red; }
            </style>
        </head>
        <body>
            <div class="center">
                <table>
                    <thead>
                        <tr>
                            <th colspan="2">Datos</th>
                            <th colspan="3">Notas</th>
                        </tr>
                        <tr>
                            <th>Nombre</th>
                            <th>Apellidos</th>
                            <th>Tareas</th>
                            <th>Examen</th>
                            <th>Final</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:apply-templates select="notas/alumno[@convocatoria='Junio']" />
                    </tbody>
                </table>
            </div>
        </body>
    </html>
</xsl:template>

<xsl:template match="alumno">
    <tr>
        <td><xsl:value-of select="nombre" /></td>
        <td><xsl:value-of select="apellidos" /></td>
        <td><xsl:value-of select="tareas" /></td>
        <td><xsl:value-of select="examen" /></td>
        <td>
            <xsl:choose>
                <xsl:when test="final >= 9">
                    <span class="blue">Sobresaliente</span>
                </xsl:when>
                <xsl:when test="final >= 7">
                    <span class="light-blue">Notable</span>
                </xsl:when>
                <xsl:when test="final >= 6">
                    <span class="black">Bien</span>
                </xsl:when>
                <xsl:when test="final >= 5">
                    <span class="orange">Suficiente</span>
                </xsl:when>
                <xsl:otherwise>
                    <span class="red">Suspenso</span>
                </xsl:otherwise>
            </xsl:choose>
        </td>
    </tr>
</xsl:template>

<xsl:template match="matricula" />

</xsl:stylesheet>
