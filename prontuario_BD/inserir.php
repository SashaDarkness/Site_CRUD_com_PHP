<?php
require_once 'conexao.php';

if (isset($_POST['btn-cadastrar'])) :
  $GET_CPF = mysqli_escape_string($connect, $_POST['cpf']);
  $GET_NOME = mysqli_escape_string($connect, $_POST['nome']);

  $sql = "INSERT INTO atendente (Id_Atendente, CPF_Atendente, Nome_Atendente) VALUES(NULL,'$GET_CPF', '$GET_NOME')";

  if (mysqli_query($connect, $sql)):
	echo "
	    <script>
	        alert('Dados Inseridos com sucesso!');
	        window.location.href='view.php';
    	</script> ";
  else:
	echo "
	    <script>
	        alert('Dados não inseridos. Falha na conexão.');
	        window.location.href='view.php';
	    </script> ";
   endif;
 endif;
?>
