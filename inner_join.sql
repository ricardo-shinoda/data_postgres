-- Join study
SELECT funcionarios.nome, localizacao.localizacao, localizacao.pais
FROM funcionarios
INNER JOIN localizacao ON funcionarios.idregiao = localizacao.idregiao;

SELECT * FROM funcionarios;
SELECT * FROM localizacao;

SELECT funcionarios.nome, funcionarios.departamento, localizacao.localizacao, localizacao.pais
FROM localizacao
RIGHT JOIN funcionarios ON localizacao.idregiao = funcionarios.idregiao;

SELECT funcionarios.nome, funcionarios.departamento, localizacao.localizacao, localizacao.pais
FROM localizacao
LEFT JOIN funcionarios ON localizacao.idregiao = funcionarios.idregiao;
