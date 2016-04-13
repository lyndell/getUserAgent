<?php
  header('Content-Type: text/plain');
	$browserStr= $_SERVER['HTTP_USER_AGENT'] . "\n\n";

	print_r (split('/', $browserStr ));

?>

