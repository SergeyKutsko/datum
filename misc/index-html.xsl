<?xml version="1.0" encoding="UTF-8"?>
<!--
Copyright (c) 2016-2017 Zerocracy

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to read
the Software only. Permissions is hereby NOT GRANTED to use, copy, modify,
merge, publish, distribute, sublicense, and/or sell copies of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
-->
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="xml"/>
  <xsl:strip-space elements="*"/>
  <xsl:template match="/index">
    <html lang="en">
      <head>
        <meta charset="utf-8"/>
        <meta name="description" content="@path"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="shortcut icon" href="http://www.zerocracy.com/logo.png"/>
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Nunito"/>
        <link rel="stylesheet" href="http://cdn.rawgit.com/yegor256/tacit/gh-pages/tacit-css.min.css"/>
        <link rel="stylesheet" href="http://www.0crat.com/css/main.css"/>
        <title>
          <xsl:value-of select="@path"/>
        </title>
      </head>
      <body>
        <section>
          <header>
            <p>
              <xsl:value-of select="@path"/>
            </p>
          </header>
          <article>
            <p>
              <xsl:value-of select="count(entry)"/>
              <xsl:text> entries here:</xsl:text>
            </p>
            <ul>
              <xsl:apply-templates select="entry"/>
            </ul>
          </article>
        </section>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="entry">
    <li>
      <a href="{text()}">
        <xsl:value-of select="text()"/>
      </a>
    </li>
  </xsl:template>
</xsl:stylesheet>
