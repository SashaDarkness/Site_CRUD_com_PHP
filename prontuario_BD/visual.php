<?php 
include "conexao.php";

$selecionar = "SELECT * FROM atendente";

$result = mysqli_query($connect,$selecionar);

if($result){
	while($row = mysqli_fetch_assoc($result)){
		$GET_ID = $row['Id_Atendente'];
		$GET_CPF = $row['CPF_Atendente'];
		$GET_NAME = $row['Nome_Atendente'];
	
	 echo '<tr>
				<th scope ="row"><b>'.$GET_ID.'</b></th>
				<td><b>'.$GET_CPF.'</b></td>
				<td><b>'.$GET_NAME.'</b></td>
				<td>
				<button class="btn btn-info"><a href="tela_update.html?updateid='.$GET_ID.'"> Editar </a></button>&nbsp;				
				<button class="btn btn-danger"><a href="delete.php?deleteid='.$GET_ID.'" > Deletar </a></button>
				</td>
			</tr>';
    }	
}
//<button class="btn btn-info"><a href="tela_update.html"> Editar </a></button>&nbsp;
				
?>	
