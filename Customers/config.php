<?php

	$DB_HOST = 'sql6.freemysqlhosting.net';
	$DB_USER = 'sql6444323';
	$DB_PASS = 'TL1PB5VrKD';
	$DB_NAME = 'sql6444323';
	
	try{
		$DB_con = new PDO("mysql:host={$DB_HOST};dbname={$DB_NAME}",$DB_USER,$DB_PASS);
		$DB_con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	}
	catch(PDOException $e){
		echo $e->getMessage();
	}
