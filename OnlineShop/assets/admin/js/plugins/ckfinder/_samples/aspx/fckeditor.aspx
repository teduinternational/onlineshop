<%@ Page Language="C#" %>
<%@ Register TagPrefix="FCKeditorV2" Namespace="FredCK.FCKeditorV2" Assembly="FredCK.FCKeditorV2" %>
<%--
 * CKFinder
 * ========
 * http://cksource.com/ckfinder
 * Copyright (C) 2007-2015, CKSource - Frederico Knabben. All rights reserved.
 *
 * The software, this file and its contents are subject to the CKFinder
 * License. Please read the license.txt file before using, installing, copying,
 * modifying or distribute this file or part of its contents. The contents of
 * this file is part of the Source Code of CKFinder.
 *
 * ---
 * This is the ASP.NET connector for CKFinder.
 *
 * You must copy the CKFinder.Connector.dll file to your "bin" directory or
 * make a reference to it in your Visual Studio project.
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server" language="C#">

	// We are not using a code behind page here just for simplicity in the
	// sample file. In this way we don't have to distribute a compiled DLL for
	// this page. In real cases, the following code will instead be defined in
	// a code behind file.

	protected override void OnLoad( EventArgs e )
	{
		CKFinder.FileBrowser _FileBrowser = new CKFinder.FileBrowser();
		_FileBrowser.BasePath = "../../" ;
		_FileBrowser.SetupFCKeditor( FCKeditor1 );
	}

</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>CKFinder - Sample - FCKeditor Integration</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="robots" content="noindex, nofollow" />
	<link href="../sample.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<h1 class="samples">
		CKFinder - Sample - FCKeditor Integration
	</h1>
	<div class="description">
		CKFinder can be easily integrated with FCKeditor. Try it now, by clicking the "Image"
		or "Link" icons and then the "<strong>Browse Server</strong>" button.</div>
	<p>
		<!--
			We assume that FCKeditor is installed in the same folder as
			CKFinder. If this is not true, just set the following "BasePath"
			to the correct path to FCKeditor (like "/fckeditor/").
		-->
		<FCKeditorV2:FCKeditor id="FCKeditor1" BasePath="../../../fckeditor/" runat="server" value="<p>Just click the <b>Image</b> or <b>Link</b> button, and then <b>&quot;Browse Server&quot;</b>.</p>"></FCKeditorV2:FCKeditor>
	</p>
	<div id="footer">
		<hr />
		<p>
			CKFinder - Ajax File Manager - <a class="samples" href="http://cksource.com/ckfinder/">http://cksource.com/ckfinder</a>
		</p>
		<p id="copy">
			Copyright &copy; 2007-2015, <a class="samples" href="http://cksource.com/">CKSource</a> - Frederico Knabben. All rights reserved.
		</p>
	</div>
</body>
</html>
