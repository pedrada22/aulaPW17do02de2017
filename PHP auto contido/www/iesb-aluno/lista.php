<?php require 'cabecalho.php' ?>

<?php if(isset($_GET['sucesso'])) { ?>
<p><?=$_GET['sucesso']?></p>
<?php } ?>

<?php if(isset($_GET['falha'])) { ?>
<p><?=$_GET['falha']?></p>
<?php } ?>

<h1>Listagem de Alunos</h1>

<a href="adiciona-aluno.php">Adicionar</a>

<table>
	<tr>
		<th>Matrícula</th>
		<th>Nome</th>
	</tr>
<?php foreach($alunos as $aluno) { ?>
	<tr>
		<td><?=$aluno[1]?></td>
		<td><?=$aluno[2]?></td>
    <td><a href="edita-aluno.php?id=<?=$aluno[0]?>">Editar</a>
      <a href="remove-aluno.php?id=<?=$aluno[0]?>" onclick="confirm('Deseja remover o aluno?');">Remover</a>

    </td>
  </tr>
<?php } ?>
</table>

<?php require 'rodape.php' ?>
