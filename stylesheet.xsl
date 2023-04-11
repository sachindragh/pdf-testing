<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <!-- Vladimir Script    VLADIMIR.TTF -->
        <!-- Viner Hand ITC     VINERITC.TTF -->
        <!-- Noto Color Emoji   NotoColorEmoji-Regular.ttf -->
        <fo:root font-family="Noto Color Emoji,Viner Hand ITC">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="A4-portrait"
                                       page-height="29.7cm" page-width="21.0cm" margin="2cm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="A4-portrait">
                <fo:flow flow-name="xsl-region-body">
                    <fo:block font-family="Noto Color Emoji,Viner Hand ITC">
                        <xsl:value-of select="value"/>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>