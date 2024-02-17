<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" indent="no"/>

    <xsl:template match="text()">
        <xsl:value-of select="normalize-space(.)"/>
        <xsl:text>&#10;</xsl:text>
    </xsl:template>
</xsl:stylesheet>