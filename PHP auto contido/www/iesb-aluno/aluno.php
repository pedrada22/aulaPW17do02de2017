<?php

require_once 'conexao.php';

function inserir_aluno($conexao, $matricula, $nome)
{
   $sql = "INSERT INTO alunos(matricula,nome) VALUES({$matricula},'{$nome}')";
   return pg_query($conexao, $sql);
}

function alterar_aluno($conexao, $id, $matricula, $nome)
{
   $sql = "UPDATE alunos SET matricula={$matricula},nome='{$nome}' WHERE id={$id}";
   return pg_query($conexao, $sql);
}

function excluir_aluno($conexao, $id)
{
   $sql = "DELETE FROM alunos WHERE id={$id}";
   return pg_query($conexao, $sql);
}

function consultar_aluno($conexao, $id)
{
   $sql = "SELECT * FROM alunos WHERE id={$id}";
   $resultado = pg_query($conexao, $sql);
   return pg_fetch_all($resultado);
}

function listar_alunos($conexao)
{
   $alunos = array();
   $sql = "SELECT * FROM alunos";
   $resultado = pg_query($conexao, $sql);


   while ($aluno = pg_fetch_row($resultado)) {
      array_push($alunos, $aluno);
   }

   return $alunos;
}
