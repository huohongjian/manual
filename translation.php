<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>FreeBSD Manual Translation</title>
	<link rel="stylesheet" type="text/css" href="./translation.css">
</head>
<body>
	
<div class="translation">

<?php

function __autoload($class){ include_once("class/$class.php");}

$pgsql = PgSQL::getInstance();

$sql = "SELECT * FROM m_content WHERE docid=1 ORDER BY id";

$rs = $pgsql->fetchAll($sql);

foreach($rs as $r){
	print_r("<p data-id=\"{$r['id']}\">{$r['english']}</p>");

}


?>
</div>



</body>
</html>
