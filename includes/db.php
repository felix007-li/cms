<?php

    $db['db_host'] = "localhost";
    $db['db_user'] = "kiwitech_Kevin";
    $db['db_pass'] = "WEIWEI061030";
    $db['db_name'] = "kiwitech_cms2";

    foreach($db as $key => $value){
        
        define(strtoupper($key),$value);
               
    }
    
$connection = mysqli_connect(DB_HOST,DB_USER,DB_PASS,DB_NAME);
    
  if($connection){
       
      echo "We are connected!";
     
      
  }
 
?>