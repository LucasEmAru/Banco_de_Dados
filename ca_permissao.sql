
-- Seguran�a da Informa��o - Controle de Acesso - comandos DCL do SQL

create login aluno with password = 'Abc12345';

use BDEscola;

create user aluno for login aluno;

grant select to usuario;

grant insert to usuario;

revoke insert from usuario;


-- consultar permiss�es de um usu�rio de uma base de dados
-- utilizando a stored procedure do sistema sp_helprotect
EXEC BDEscola.dbo.sp_helprotect @username = 'usuario';


-- Teste de login com controle de acesso - comandos DML do SQL ---------------

use BDEscola;

select * from Aluno;


-- Exclus�o de usu�rio e login

drop user aluno;

drop login aluno;


