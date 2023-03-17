<!DOCTYPE html>
<html lang="pt-BR">
<head>
     <title> Prontuario Digital</title>
     <meta charset = "UTF-8">
     <link rel="stylesheet" type="text/css" href="css/menu.css">  
     <link rel="stylesheet" type="text/css" href="css/css_funcoes_01.css">  
     <link rel="stylesheet" type="text/css" href="css/botao.css">  
<style>
    #txt{
        font-size: 25px; 
		margin-top: -2em; 
		align-text:justify; 
		display: flex;
		position: static; 
	}
</style>
</head>
<!-- Corpo da página -->
<body>
    <div> 
       <img id="image" src="img/logo0.png">
		   <div id="menu">
			    <ul id="estilo">
					<li><a href="index.php" target="_parent" title="tela_principal"> INICIO </a></li>&nbsp;&nbsp;&nbsp;				 
					<li><a href="desenvolvedora.html" target="_parent" title="desenvolvedora"> DESENVOLVEDORA </a></li>&nbsp;&nbsp;&nbsp;				 
			    </ul>
            </div>
	</div>

	
		
<form method="POST" action="inserir.php">		   
	<table id="table">
		<tr> 
		   <th>
		        <h1 class="titulo1">
			        <font color="navy">
				        <b>TABELA ATENDENTE:</b>
					</font>
			    </h1>	
		   </th>
		   <td>
		        <img class="image2" src="img/icremedio.png">
		   </td>		   
		   <td>
		        <img class="image3" src="img/iconemedico.png">
		   </td>
		</tr>
	    <tr> 
	     	<td> 
		        <p id="txt">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				Informe os dados abaixo para serem inseridos no banco: </p>
			</td>
	    </tr>	
	    <tr>
		    <td>
			   <div id="style">	
			            <label><br>
					      	Nome do Atendente:<br>
   					    </label>
						    <input type="text" name="nome" id="nome"><br/>
						    <br>
					   <label>
						    CPF Atendente:<br>
					   </label>				     							
						    <input type="text" name="cpf" id="cpf"><br/>
						    <br>
				       <label>	
	   				<div>
						<br><button class="button" type="submit" name="btn-cadastrar">Cadastrar</button>
			        	<a class="button" style="text-decoration:none;" href="view.php" target="_parent"> Consultar</a><br>
					</div>
				</div>
		    </td>
		</tr>
</form>		
	</table>
		
	<div> 
		<iframe style = "border-bottom:#ADD8E6; border-top:0px" scrolling = "no" src = "" width="100%" height = "70" allowfullscreen>
	    </iframe>
	</div>   
  </body>
</html>
