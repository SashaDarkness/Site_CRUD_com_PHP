<!doctype html>
<html>
<head>
	<title>CONEXÃO</title>
</head>
<body bgcolor="lightblue">

<?php
$host="localhost";
$username="root";
$password="ifpa@123";
$database="prontuario_digital";
$usertable="atendente";

$connect = mysqli_connect($host, $username, $password, $database);

if (mysqli_connect_error()) :
    echo '<h5 style="color:red; text-align:center;">Falha de conexão com o banco de dados:</h5>' . mysqli_connect_error();
else :
    echo '<h5 style="color:blue; text-align:center;">Conexão executada com sucesso!</h5>';
endif;

?>
</body>
</html>