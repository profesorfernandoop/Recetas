<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" href="estilo.css" />
      </head>
      <body>
        <div id="recetario">
          <table class="tablaconborde tablacebra fsize-1-2">
            <caption class="fsize-1-5">Mi colección de recetas</caption>
            <thead class="fsize-1-5">
              <tr>
                <th>Receta</th>
                <th>Autor</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="recetario/receta[@categoria='Arroces y cereales']">
                <tr>
                  <td>
                    <xsl:value-of select="nombre" />
                  </td>
                  <td>
                    <xsl:value-of select="autor" />
                  </td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
        </div>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>