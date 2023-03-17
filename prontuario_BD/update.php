<?php 
include 'conexao.php';

//$GET_ID = $_GET['updateid'];

if (isset($_POST['update'])) {
	    $GET_ID = $_POST['updateid'];
		$GET_CPF = $_POST['cpf'];
		$GET_NOME = $_POST['nome'];

	 $update = "UPDATE `atendente` SET `CPF_Atendente` = '$GET_CPF', `Nome_Atendente` = '$GET_NOME' WHERE `atendente`.`Id_Atendente` = $GET_ID ";

	$result = mysqli_query($connect, $update);
	 
	if ($result == TRUE) {
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
/*
	if (isset($_GET['id'])) {
		 $GET_ID = $_GET['id'];*/
	if (isset($_GET['updateid'])) {
	  	 $GET_ID = $_GET['updateid'];	 
			
		 $update = "SELECT * FROM `atendente` WHERE `CPF_Atendente`='$GET_ID'";
		
		 $result = $connect->query($update);
		
	    if ($result->num_rows > 0) {
	   	    while ($row = $result->fetch_assoc()) {
			     $GET_CPF = $row['CPF_Atendente'];
			     $GET_NAME = $row['Nome_Atendente'];
			   
			 echo ' 
				<br><label>ID:</label>
				<input type="number" name="updateid"<a href="update.php?updateid='.$GET_ID.'"> ><br>
				<label><br>
				';
			}
	    } else {
			 header('Location:view.php');
		}
	}
?>
		