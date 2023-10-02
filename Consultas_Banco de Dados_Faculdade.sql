-- Implemente uma consulta para listar o quantitativo de cursos existentes
SELECT COUNT(*) AS QuantosCursos
FROM Curso;

-- Implemente uma consulta para listar o nome das disciplinas existentes.
SELECT Nome
FROM Disciplina;

-- Implemente uma consulta para listar o nome de todos os cursos e o nome de seus respectivos alunos. A listagem deve ser mostrada em ordem decrescente pelo nome dos cursos.
SELECT curso.nome AS nomeCurso, aluno.nome AS nomeAluno
FROM curso
LEFT JOIN alunoCurso ON curso.idCurso = alunoCurso.idCurso
LEFT JOIN aluno ON alunoCurso.idAluno = aluno.idAluno
ORDER BY curso.nome DESC, aluno.nome;

-- Implemente uma consulta para listar o nome das disciplinas e a média das notas das disciplinas em todos os cursos. Para isso, utilize o comando group by.
SELECT disciplina.nome AS nome_disciplina, AVG(historico.nota) AS todas_medias
FROM disciplina
LEFT JOIN historico ON disciplina.idDisciplina = historico.idDisciplina
GROUP BY disciplina.nome;

-- Implemente uma consulta para listar o nome de todos os cursos e a quantidade de alunos em cada curso. Para isso, utilize os comandos join e group by.
SELECT C.nome AS nomeCurso, COUNT(AC.idAluno) AS totalAlunos
FROM curso AS C
LEFT JOIN alunoCurso AS AC ON C.idCurso = AC.idCurso
GROUP BY C.nome
ORDER BY C.nome;