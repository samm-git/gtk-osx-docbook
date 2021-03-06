<?xml version="1.0" encoding="utf-8"?><xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:src="http://nwalsh.com/xmlns/litprog/fragment" exclude-result-prefixes="src" version="1.0">

<!-- This file is generated from param.xweb; do not edit this file! -->

<!-- ********************************************************************
     $Id: param.xweb 6151 2006-08-09 14:06:37Z xmldoc $
     ********************************************************************

     This file is part of the XSL DocBook Stylesheet distribution.
     See ../README or http://nwalsh.com/docbook/xsl/ for copyright
     and other information.

     ******************************************************************** -->

<xsl:param name="man.break.after.slash">0</xsl:param>
<xsl:param name="man.hyphenate">0</xsl:param>
<xsl:param name="man.hyphenate.urls">0</xsl:param>
<xsl:param name="man.hyphenate.filenames">0</xsl:param>
<xsl:param name="man.hyphenate.computer.inlines">0</xsl:param>
<xsl:param name="man.justify">0</xsl:param>
<xsl:param name="man.indent.width">3n</xsl:param>
<xsl:param name="man.indent.refsect" select="0"/>
<xsl:param name="man.indent.blurbs" select="1"/>
<xsl:param name="man.indent.lists" select="1"/>
<xsl:param name="man.indent.verbatims" select="1"/>
  <xsl:param name="man.font.funcprototype">BI</xsl:param>
  <xsl:param name="man.font.funcsynopsisinfo">B</xsl:param>
  <xsl:param name="man.font.table.headings">B</xsl:param>
  <xsl:param name="man.font.table.title">B</xsl:param>
<xsl:param name="man.output.manifest.enabled" select="0"/>
<xsl:param name="man.output.manifest.filename">MAN.MANIFEST</xsl:param>
<xsl:param name="man.output.quietly" select="0"/>
<xsl:param name="man.output.encoding" select="'UTF-8'"/>
<xsl:param name="man.output.in.separate.dir" select="0"/>
<xsl:param name="man.output.base.dir">man/</xsl:param>
<xsl:param name="man.output.subdirs.enabled" select="1"/>
<xsl:param name="man.string.subst.map">
  <substitution oldstring="\" newstring="\\"/>
  <!-- * now, we need to restore single-backslashes in all roff -->
  <!-- * requests (because the substitution above doubled them) -->
  <substitution oldstring="\\fB" newstring="\fB"/>
  <substitution oldstring="\\fI" newstring="\fI"/>
  <substitution oldstring="\\fR" newstring="\fR"/>
  <substitution oldstring="\\n" newstring="\n"/>
  <!-- * requests in .SH sectsions output from Refsect1-level source -->
  <!-- * end up getting capitalized... -->
  <substitution oldstring="\\FB" newstring="\fB"/>
  <substitution oldstring="\\FI" newstring="\fI"/>
  <substitution oldstring="\\FR" newstring="\fR"/>
  <substitution oldstring="\\%" newstring="\%"/>
  <substitution oldstring="\\&amp;" newstring="\&amp;"/>
  <substitution oldstring=".\\&#34;" newstring=".\&#34;"/>
  <!-- * although the groff docs do not make it clear, it appears that -->
  <!-- * the only way to get a non-breaking hyphen in roff is to put a -->
  <!-- * backslash in front of it; and, unfortunately, groff is not smart -->
  <!-- * about where it breaks things (for example, it'll break an -->
  <!-- * argument for a command across a line, if that argument contains -->
  <!-- * a dash/hyphen); so, we must globally change all hyphens to "\-" -->
  <substitution oldstring="-" newstring="\-"/>
  <!-- * now, we need to restore single-hypens in all roff requests -->
  <!-- * (because the substitution above added backslashes before them) -->
  <substitution oldstring=".sp \-" newstring=".sp -"/>
  <substitution oldstring=".it 1 an\-trap" newstring=".it 1 an-trap"/>
  <substitution oldstring=".nr an\-no\-space\-flag 1" newstring=".nr an-no-space-flag 1"/>
  <substitution oldstring=".nr an\-break\-flag 1" newstring=".nr an-break-flag 1"/>
  <substitution oldstring=".ll \-" newstring=".ll -"/>
  <!-- * squeeze multiple newlines before a roff request  -->
  <substitution oldstring="&#xA;&#xA;." newstring="&#xA;."/>
  <!-- * remove any .sp occurences that directly follow a .PP  -->
  <substitution oldstring=".PP&#xA;.sp" newstring=".PP"/>
  <!-- * squeeze multiple newlines after start of no-fill (verbatim) env. -->
  <substitution oldstring=".nf&#xA;&#xA;" newstring=".nf&#xA;"/>
  <!-- * squeeze multiple newlines after REstoring margin -->
  <substitution oldstring=".RE&#xA;&#xA;" newstring=".RE&#xA;"/>
  <!-- * an apostrophe at the beginning of a line gets interpreted as a -->
  <!-- * roff request (groff(7) says it is "the non-breaking control -->
  <!-- * character"); so we must add backslash before any apostrophe -->
  <!-- * found at the start of a line -->
  <substitution oldstring="&#xA;'" newstring="&#xA;\'"/>
  <!-- * -->
  <!-- * non-breaking space -->
  <!-- * -->
  <!-- * A no-break space can be written two ways in roff; the difference, -->
  <!-- * according to the "Page Motions" node in the groff info page, ixsl: -->
  <!-- * -->
  <!-- *   "\ " = -->
  <!-- *   An unbreakable and unpaddable (i.e. not expanded during filling) -->
  <!-- *   space. -->
  <!-- * -->
  <!-- *   "\~" = -->
  <!-- *   An unbreakable space that stretches like a normal -->
  <!-- *   inter-word space when a line is adjusted."  -->
  <!-- * -->
  <!-- * Unfortunately, roff seems to do some weird things with long -->
  <!-- * lines that only have words separated by "\~" spaces, so it's -->
  <!-- * safer just to stick with the "\ " space -->
  <substitution oldstring=" " newstring="\ "/>
  <!-- * x2008 is a "punctuation space"; we must replace it here because, -->
  <!-- * for certain reasons, the stylesheets add it before and after -->
  <!-- * every Parameter in Funcprototype output -->
  <substitution oldstring=" " newstring=" "/>
  <substitution oldstring="⌂" newstring="&#x9;"/>
  <!-- * -->
  <!-- * Now deal with some other characters that are added by the -->
  <!-- * stylesheets during processing. -->
  <!-- * -->
  <!-- * bullet -->
  <substitution oldstring="•" newstring="\(bu"/>
  <!-- * left double quote -->
  <substitution oldstring="“" newstring="\(lq"/>
  <!-- * right double quote -->
  <substitution oldstring="”" newstring="\(rq"/>
  <!-- * left single quote -->
  <substitution oldstring="‘" newstring="\(oq"/>
  <!-- * right single quote -->
  <substitution oldstring="’" newstring="\(cq"/>
  <!-- * copyright sign -->
  <substitution oldstring="©" newstring="\(co"/>
  <!-- * registered sign -->
  <substitution oldstring="®" newstring="\(rg"/>
  <!-- * servicemark... -->
  <!-- * There is no groff equivalent for it. -->
  <substitution oldstring="℠" newstring="(SM)"/>
  <!-- * trademark... -->
  <!-- * We don't do "\(tm" because for console output, -->
  <!-- * groff just renders that as "tm"; that is: -->
  <!-- * -->
  <!-- *   Product&#x2122; -> Producttm -->
  <!-- * -->
  <!-- * So we just make it to "(TM)" instead; thus: -->
  <!-- * -->
  <!-- *   Product&#x2122; -> Product(TM) -->
  <substitution oldstring="™" newstring="(TM)"/>
</xsl:param>
<xsl:param name="man.links.are.numbered">1</xsl:param>
<xsl:param name="man.links.are.underlined">1</xsl:param>
<xsl:param name="man.links.list.enabled">1</xsl:param>
<xsl:param name="man.links.list.heading" select="''"/>
<xsl:param name="variablelist.term.separator">, </xsl:param>
<xsl:param name="variablelist.term.break.after">0</xsl:param>
<xsl:param name="man.charmap.enabled" select="1"/>
<xsl:param name="man.charmap.uri" select="''"/>
<xsl:param name="man.charmap.use.subset" select="1"/>
<xsl:param name="man.charmap.subset.profile">
@*[local-name() = 'block'] = 'Miscellaneous Technical' or
(@*[local-name() = 'block'] = 'C1 Controls And Latin-1 Supplement (Latin-1 Supplement)' and
 @*[local-name() = 'class'] = 'symbols'
) or
(@*[local-name() = 'block'] = 'General Punctuation' and
 (@*[local-name() = 'class'] = 'spaces' or
  @*[local-name() = 'class'] = 'dashes' or
  @*[local-name() = 'class'] = 'quotes' or
  @*[local-name() = 'class'] = 'bullets'
 )
) or
@*[local-name() = 'name'] = 'HORIZONTAL ELLIPSIS' or
@*[local-name() = 'name'] = 'WORD JOINER' or
@*[local-name() = 'name'] = 'SERVICE MARK' or
@*[local-name() = 'name'] = 'TRADE MARK SIGN' or
@*[local-name() = 'name'] = 'ZERO WIDTH NO-BREAK SPACE'
</xsl:param>
<xsl:param name="man.segtitle.suppress" select="0"/>
<xsl:param name="man.table.footnotes.divider">----</xsl:param>
<xsl:param name="man.subheading.divider">========================================================================</xsl:param>
<xsl:param name="man.subheading.divider.enabled">0</xsl:param>
<xsl:param name="refentry.date.profile.enabled">0</xsl:param>
<xsl:param name="refentry.meta.get.quietly" select="0"/>
<xsl:param name="refentry.manual.profile.enabled">0</xsl:param>
<xsl:param name="refentry.source.name.profile.enabled">0</xsl:param>
<xsl:param name="refentry.version.profile.enabled">0</xsl:param>
<xsl:param name="refentry.source.name.suppress">0</xsl:param>
<xsl:param name="refentry.version.suppress">0</xsl:param>
<xsl:param name="refentry.date.profile">
  (($info[//date])[last()]/date)[1]|
  (($info[//pubdate])[last()]/pubdate)[1]
</xsl:param>
<xsl:param name="refentry.manual.fallback.profile">
refmeta/refmiscinfo[1]/node()</xsl:param>
<xsl:param name="refentry.manual.profile">
  (($info[//title])[last()]/title)[1]|
  ../title/node()
</xsl:param>
<xsl:param name="refentry.source.fallback.profile">
refmeta/refmiscinfo[1]/node()</xsl:param>
<xsl:param name="refentry.source.name.profile">
  (($info[//productname])[last()]/productname)[1]|
  (($info[//corpname])[last()]/corpname)[1]|
  (($info[//corpcredit])[last()]/corpcredit)[1]|
  (($info[//corpauthor])[last()]/corpauthor)[1]|
  (($info[//orgname])[last()]/orgname)[1]|
  (($info[//publishername])[last()]/publishername)[1]
</xsl:param>
<xsl:param name="refentry.version.profile">
  (($info[//productnumber])[last()]/productnumber)[1]|
  (($info[//edition])[last()]/edition)[1]|
  (($info[//releaseinfo])[last()]/releaseinfo)[1]
</xsl:param>
<xsl:param name="man.th.title.max.length">20</xsl:param>
<xsl:param name="man.th.extra2.max.length">30</xsl:param>
<xsl:param name="man.th.extra3.max.length">30</xsl:param>
<xsl:param name="man.th.extra1.suppress">0</xsl:param>
<xsl:param name="man.th.extra2.suppress">0</xsl:param>
<xsl:param name="man.th.extra3.suppress">0</xsl:param>
<xsl:param name="email.delimiters.enabled">1</xsl:param>
</xsl:stylesheet>
    