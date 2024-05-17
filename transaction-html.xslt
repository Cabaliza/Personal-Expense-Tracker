<!-- transaction-html.xsl -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- Define output method and encoding -->
  <xsl:output method="html" encoding="UTF-8"/>

  <!-- Template to match transactions -->
  <xsl:template match="transactions">
    <html>
      <head>
        <title>Transaction History</title>
      </head>
      <body>
        <h1>Transaction History</h1>
        <table border="1">
          <tr>
            <th>Name</th>
            <th>Amount</th>
            <th>Date</th>
            <th>Type</th>
          </tr>
          <!-- Apply template for each transaction -->
          <xsl:apply-templates select="transaction"/>
        </table>
      </body>
    </html>
  </xsl:template>

  <!-- Template to match individual transactions -->
  <xsl:template match="transaction">
    <tr>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="amount"/></td>
      <td><xsl:value-of select="date"/></td>
      <td><xsl:value-of select="type"/></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
