<?php require 'cabecalho.php' ?>

<h1>Edição de Aluno</h1>

<form action="edita-aluno.php" method="post">
      <input type="hidden" name="id" value="<?=$aluno[0]['id']?>">
	<div>
		<label>Matrícula:</label>
		<input type="text" name="matricula" value="<?=$aluno[0]['matricula']?>"size="15">

  </div>
	<div>
		<label>Nome:</label>
		<input type="text" name="nome" value="<?=$aluno[0]['nome']?>" size="30">
	</div>
	<input type="submit" value="Salvar"/>
	<a href="lista-aluno.php">Desistir</a>
</form>

<?php require 'rodape.php' ?>
