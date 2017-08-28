<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>FreeBSD Manual Translation</title>
	<link rel="stylesheet" type="text/css" href="css/manual.css">

	<script type="text/javascript" src="js/R.js?v=1.0.0"></script>
	<script type="text/javascript" src="js/manual.js?v=1.0.0"></script>
</head>
<body>
	
<div class="translation">
<pre class="translation-pre">


<?php

function __autoload($class){ include_once("class/$class.php");}

$pgsql = PgSQL::getInstance();

$sql = "SELECT * FROM m_content WHERE docid=2 ORDER BY id";

$rs = $pgsql->fetchAll($sql);

foreach($rs as $r){
	print_r("<span data-id=\"{$r['id']}\">{$r['english']}</span>\n");

}


?>


</pre>
</div>



</body>
</html>
