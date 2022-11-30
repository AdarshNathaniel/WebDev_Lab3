<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h2>Blackhawks Support Staff</h2>
    <table border="1">
      <tr bgcolor="#ff9900">
        <th>Position</th>
        <th>First Name</th>
        <th>Last Name</th>
      </tr>
      <xsl:for-each select="supportStaff/emp">
      <xsl:sort select="position"/>
      <xsl:if test="empId>103">
        <tr>
          <td><xsl:value-of select="position"/></td>
          <td><xsl:value-of select="firstName"/></td>
          <td><xsl:value-of select="lastName"/></td>
        </tr>
      </xsl:if> 
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>


<!-- 

<tr>
          <xsl:choose>
            <xsl:when test="empId<104">
              <td bgcolor="#ebd834">
              <xsl:value-of select="position"/></td>
            </xsl:when>
            <xsl:otherwise>
              <td><xsl:value-of select="position"/></td>
            </xsl:otherwise>
          </xsl:choose>
          <td><xsl:value-of select="firstName"/></td>
          <td><xsl:value-of select="lastName"/></td>
</tr>

  <xsl:if test="empId>103">
        <tr>
          <td><xsl:value-of select="position"/></td>
          <td><xsl:value-of select="firstName"/></td>
          <td><xsl:value-of select="lastName"/></td>
        </tr>
  </xsl:if> 
-->