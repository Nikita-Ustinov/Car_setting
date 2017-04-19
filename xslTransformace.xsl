<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>  
    <xsl:template match="car_setting">
           {
            "owners": [
               <xsl:for-each select="//owner[position() != last()]"> {
               "Name":"<xsl:value-of select="name/first_name"/>",
               "Second namez":"<xsl:value-of select="name/second_name"/>",
               "Driving style":"<xsl:value-of select="driving_style"/>",
               "Inspection":
               <xsl:choose>
                   <xsl:when test="before_the_inspection=0">"You need take an inspection"
                   },</xsl:when>
                   <xsl:otherwise>"You don't need an inspection"
                   },</xsl:otherwise>
               </xsl:choose> 
               </xsl:for-each>
               {
                "Name":"<xsl:value-of select="owner[last()]/name/first_name"/>",
                "Second namez":"<xsl:value-of select="owner[last()]/name/second_name"/>",
                "Driving style":"<xsl:value-of select="owner[last()]/driving_style"/>",
                "Inspection":
                 <xsl:choose>
                   <xsl:when test="owner[last()]/before_the_inspection=0">"You need to take an inspection"
                }</xsl:when>
                   <xsl:otherwise>"You don't need an inspection"
                }
                   </xsl:otherwise>
                 </xsl:choose>
             ]
            }
            
    </xsl:template>
</xsl:stylesheet>