
-- Segurança da Informação - Controle de Acesso - comandos DCL do SQL

create login aluno with password = 'Abc12345';

use BDEscola;

create user aluno for login aluno;

grant select to usuario;

grant insert to usuario;

revoke insert from usuario;


-- consultar permissões de um usuário de uma base de dados
-- utilizando a stored procedure do sistema sp_helprotect
EXEC BDEscola.dbo.sp_helprotect @username = 'usuario';


-- Teste de login com controle de acesso - comandos DML do SQL ---------------

use BDEscola;

select * from Aluno;


-- Exclusão de usuário e login

drop user aluno;

drop login aluno;


