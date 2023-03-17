<?php 
include "conexao.php";

if (isset($_GET['deleteid'])) {
	$GET_ID = $_GET['deleteid'];
	
	$del = "DELETE FROM `atendente` WHERE `atendente`.`Id_Atendente` ='$GET_ID'";

	$resultado = mysqli_query($connect,$del);

	if ($resultado == TRUE) {
		echo "
			<script>
				window.location.href='view.php';
			</script> ";
	} else {
		echo "
			<script>	
				window.location.href='view.php';
			</script> ";
	}	
}

?>