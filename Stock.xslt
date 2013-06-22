<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

  <xsl:template match="/">
    <html>
      <body>
        <h2>Book Stock</h2>
        <table border="1">
          <tr bgcolor="#0099CC">
            <th>StockID</th>
            <th>Description</th>
            <th>Price</th>
            <th>Stock_level</th>
            <th>SupplierID</th>
          </tr>
          <xsl:for-each select="NewDataSet/Stock">
            <tr>
              <td>
                <xsl:value-of select="StockID" />
              </td>
              <td>
                <xsl:value-of select="Description" />
              </td>
              <td>
                <xsl:value-of select="Price" />
              </td>
              <td>
                <xsl:value-of select="Stock_level" />
              </td>
              <td>
                <xsl:value-of select="SupplierID" />
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
