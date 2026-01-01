/* 38 - SET PASSWORD
SET PASSWORD, é utilizado para criar senhas de usuários

SET PASSWORD = 'nova_senha' -- desta forma a senha do usuário atual é alterada.

*/

-- 1. SET PASSWORD, alterando senha do usuário atual
SET PASSWORD = '@login1112'; -- A nova senha de usuário passará a ser essa

-- 2. SET PASSWORD, alterando a senha de outro usuário, precisa de permissão para realizar essa alteração
SET PASSWORD FOR 'ana1324'@'localhost' = '@login1324';

-- 3. ALTER USER, alterando a senha de um usuário
ALTER USER 'ana1324'@'localhost' = '@Login1324';
