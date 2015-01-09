<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" omit-xml-declaration="no"/>
  <xsl:strip-space elements="*"/>

  <xsl:template match="@* | node() | comment()">
    <xsl:copy>
      <xsl:apply-templates select="@* | node() | comment()"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="assembly">
    <xsl:copy>
      <xsl:apply-templates select="@* | comment()">
      </xsl:apply-templates>
      <xsl:apply-templates select="member">
        <xsl:sort select="@name" />
      </xsl:apply-templates>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="member">
    <xsl:copy>
      <xsl:apply-templates select="@* | attribute | comment()">
      </xsl:apply-templates>
      <xsl:apply-templates select="parameter">
        <xsl:sort select="@name" />
      </xsl:apply-templates>
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>