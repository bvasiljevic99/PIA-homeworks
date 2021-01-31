<?php
session_start();
header("location: imdb.php");
include("selektovanje.php");
$email = $_POST["email"];
$lozinka = $_POST["lozinka"];
$md5lozinka = md5("$lozinka");
$admin_check = $conn->mysqli_query("SELECT * FROM ucesnici
WHERE privilegija='$admin' AND email_korisnika='$email'");
$admin_count = $conn->mysqli_num_rows($admin_check);
$admin_lozinka = $conn->mysqli_query("SELECT * FROM ucesnici
WHERE lozinka = '$md5lozinka' ");
123
$admin_lozinka_count = $conn->mysql_num_rows($admin_lozinka);
$korisnik_check = $conn->mysqli_query("SELECT * FROM ucesnici WHERE
privilegija = '$not_admin' AND email='$email'");
$korisnik_count = $conn->mysqli_num_rows($korisnik_check);
$korisnik_lozinka = $conn->mysqli_query("SELECT * FROM ucesnici
WHERE lozinka='$md5lozinka'");

{
?>

<?php
}

{
$korisnik_info = $conn->mysqli_query("SELECT ime,
prezime FROM ucesnici WHERE
email= '$email'");
$korisnik_get_info = $conn->mysql_fetch_array($korisnik_info);
$korisnik_ime = $korisnik_get_info["ime"];
$korisnik_prezime = $korisnik_get_info["prezime"];

session_start();
$_SESSION["korisnik"] = $email;


}
 header("location: imdb.php");
else{
 echo "Ups!Izgleda da ste uneli nesto pogresno.";
}
?>
<html>
<head>
    <meta charset="UTF-8">
    <title>Singup</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
    <link href="style.css" rel="stylesheet">
</head>
<body>
    <div class="pozadina">
        <h4>Ulogujte se</h4>
        <p>Popunite email adresu ili korisničko ime i lozinku.</p>
        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
			<div class="form-group <?php echo (!empty($email_err)) ? 'has-error' : ''; ?>">
                <label>Email adresa:</label>
                <input type="email" name="email" class="form-control" value="<?php echo $email; ?>">
                <span class="help-block"><b><?php echo $email_err; ?></b></span>
            </div>
            <div class="form-group <?php echo (!empty($korisnicko_ime_err)) ? 'has-error' : ''; ?>">
                <label>Korisničko ime:</label>
                <input type="text" name="korisnicko_ime" class="form-control" value="<?php echo $korisnicko_ime; ?>">
                <span class="help-block"><b><?php echo $korisnicko_ime_err; ?></b></span>
            </div>    
            <div class="form-group <?php echo (!empty($lozinka_err)) ? 'has-error' : ''; ?>">
                <label>Lozinka:</label>
                <input type="password" name="lozinka" class="form-control">
                <span class="help-block"><b><?php echo $lozinka_err; ?></b></span>
            </div>
            <div class="form-group">
                <input type="submit" class="btn btn-primary" value="Login">
            </div>
            <p>Nemate nalog? <a href="registrovanje.php">Registrujte se</a>.</p>
        </form>
    </div>    
</body>
</html>
