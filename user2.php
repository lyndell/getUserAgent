<?php
  header('Content-Type: text/plain');

	$browserStr= $_SERVER['HTTP_USER_AGENT'] . "\n\n";

  echo "User Agent:  " . $browserStr . "\n\n";

	# Mozilla/[version] ([system and browser information]) [platform] ([platform details]) [extensions] = split('/', $browserStr );
  # $broswerVersion, 
	list($browser, $sysinfo, $platform, $verNo) = split('/', $browserStr );

  echo "Browser: " . $browser . "\n\n";
  echo "print_r: \n" ;
  print_r($browser);
  echo "\n\n";
  # $sysinfo, $platform, $verNo) = split('/', $browserStr );
?>

