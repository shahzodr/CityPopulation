<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!-- start of root template -->
    <xsl:template match="/">
        <!-- start of web page -->
        <html>
            <body>
                <table border="1">
                    <tr>
                        <th colspan="4">City With the Highest Population</th>
                    </tr>
                    <tr>
                        <th>County</th>
                        <th>Year</th>
                        <th>Cases</th>
                        <th>Population</th>
                    </tr>
                     <xsl:for-each select="data/city">
                        <xsl:sort select="population" data-type="number" order="descending"/>
                        <xsl:if test="position() = 1">
                        <tr>
                            <td id="county"><xsl:value-of select="county"/></td>
                            <td id="year"><xsl:value-of select="year"/></td>
                            <td id="cases"><xsl:value-of select="cases"/></td>
                            <td id="population"><xsl:value-of select="population"/></td>
                        </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
                <p></p>
                <table border="1">
                    <tr>
                        <th colspan="4">City With the Highest Incidence of Lung Cancer</th>
                    </tr>
                    <tr>
                        <th>County</th>
                        <th>Year</th>
                        <th>Cases</th>
                        <th>Population</th>
                    </tr>
                     <xsl:for-each select="data/city">
                        <xsl:sort select="cases" data-type="number" order="descending"/>
                        <xsl:if test="position() = 1">
                        <tr>
                            <td id="county"><xsl:value-of select="county"/></td>
                            <td id="year"><xsl:value-of select="year"/></td>
                            <td id="cases"><xsl:value-of select="cases"/></td>
                            <td id="population"><xsl:value-of select="population"/></td>
                        </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
                <p></p>
                <table border="1">
                    <tr>
                        <th colspan="4">City With the Lowest Incidence of Lung Cancer</th>
                    </tr>
                    <tr>
                        <th>County</th>
                        <th>Year</th>
                        <th>Cases</th>
                        <th>Population</th>
                    </tr>
                     <xsl:for-each select="data/city">
                        <xsl:sort select="cases" data-type="number" order="ascending"/>
                        <xsl:if test="position() = 1">
                        <tr>
                            <td id="county"><xsl:value-of select="county"/></td>
                            <td id="year"><xsl:value-of select="year"/></td>
                            <td id="cases"><xsl:value-of select="cases"/></td>
                            <td id="population"><xsl:value-of select="population"/></td>
                        </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
        <!-- end of web page -->
    </xsl:template>
    <!-- end of root template -->
</xsl:stylesheet>