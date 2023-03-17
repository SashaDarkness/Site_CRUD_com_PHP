<!Doctype html>
<html lang="pt-BR">
<head>
	 <title>Consultar</title>
     <meta charset = "UTF-8">
     <link rel="stylesheet" type="text/css" href="CSS/css_view.css">    
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
</head>
<!-- Corpo da página -->
<body>
    <div> 
       <img id="image" src="img/logo0.png">
		   <div id="menu">
			    <ul id="estilo">
			        <li> PRONTUÁRIO DIGITAL </li>
			    </ul>
            </div>
	</div>	
<table id="table">
	<tr>
		<td>
			<div class="container">
				<font color="blue">
					<h2>TABELA ATENDENTE</h2>
				</font>
				<br>
	<table class="table">
	<thead>
		<tr>
			<th>ID</th>
			<th>CPF ATENDENTE</th>
			<th>NOME PACIENTE</th>
     	</tr>
	</thead>
	<tbody bgcolor="lightblue">	
<?php
include 'visual.php';	
?>			
	    </tbody>
</table>
           	</div>	
		</td>
    </tr>
</table>
	 <div> 
		 <iframe style = "border-bottom:#ADD8E6; border-top: 0px" scrolling = "no" src = "" width = "100%" height = "70" allowfullscreen>
	     </iframe>
             <div>
			     <a class="botao" href="index.php" target="_parent"> ⇜ Voltar </a> 
	         </div>
	   </div>  
  </body>
</html>

