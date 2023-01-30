<?xml version="1.0"?>

<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
	<xsl:apply-templates select="html" />
</xsl:template>

<xsl:template match="html">
	<html>
		<xsl:apply-templates select="head" />
		<xsl:apply-templates select="body" />
	</html>
</xsl:template>

<xsl:template match="head">
	<head>
		<title><xsl:value-of select="title" /></title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
	</head>
</xsl:template>

<xsl:template match="body">
	<body>
		<xsl:apply-templates select="*" />
		<!-- Scripts -->
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/jquery.scrollex.min.js"></script>
		<script src="assets/js/jquery.scrolly.min.js"></script>
		<script src="assets/js/skel.min.js"></script>
		<script src="assets/js/util.js"></script>
		<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
		<script src="assets/js/main.js"></script>
	</body>
</xsl:template>

<xsl:template match="header">
	<section id="header">
		<header class="major">
			<h1><xsl:value-of select="title" /></h1>
			<p><xsl:value-of select="subtitle" /></p>
		</header>
		<div class="container">
			<ul class="actions">
				<li><a href="#{@to}" class="button special scrolly">Begin</a></li>
			</ul>
		</div>
	</section>
</xsl:template>

<xsl:template match="section">
	<section id="{@id}" class="main special">
		<div class="container">
			<span class="image fit primary"><img src="images/pic{@id}.jpg" alt="" /></span>
			<div class="content">
				<header class="major">
					<h2><xsl:value-of select="title" /></h2>
				</header>
				<p><xsl:value-of select="text" /></p>
			</div>
			<a href="#{@to}" class="goto-next scrolly">Next</a>
		</div>
	</section>
</xsl:template>

</xsl:stylesheet> 
