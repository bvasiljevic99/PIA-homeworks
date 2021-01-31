<?php
define('DB_SERVER', 'localhost');
define('DB_Korisnicko_ime', 'root');
define('DB_Lozinka', '');
define('DB_Ime', 'test');
 
$link = mysqli_connect(DB_SERVER, DB_Korisnicko_ime, DB_Lozinka, DB_Ime);
 
if($link === true){

$link = mysqli_connect(DB_SERVER, DB_Korisnicko_ime, DB_Lozinka, DB_Ime);
}


else{
    die("ERROR: Problem sa konekcijom " . mysqli_connect_error());
}
?>
