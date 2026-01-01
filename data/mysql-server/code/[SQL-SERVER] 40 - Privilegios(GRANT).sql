/* 40 - GRANT
GRANT é utilizado para atribuir permissões aos usuários, tendo variação de acordo com as permissões que se desaeja conceder ao respectivo objeto ou usuário, sendo esse um fator critico de controle

- Permissões "Globais"
GRANT CONNECT TO nome_usuario;
GRANT USAGE ON SCHEMA PUBLIC TO nome_usuario;

- Permissões de Views e Objetos
GRANT SELECT ON nome_tabela TO nome_usuario; -- Permite a realização de consulta a tabela/view
GRANT INSERT ON nome_tabela TO nome_usuario; -- Permite a inserção de dados na tabela/view
GRANT DELETE ON nome_tabela TO nome_usuario; -- Permite a realização de operação de delete de dados da tabela/view
GRANT UPDATE ON nome_tabela TO nome_usuario; -- Permite a realização da atualização da tabela/view

-- Permissões específicas por coluna
GRANT SELECT nome_coluna ON nome_tabela TO nome_usuario; -- Permite o select em uma coluna específica
GRANT UPDATE nome_coluna ON nome_tabela TO nome_usuario;

-- Permissões voltadas a objetos de programação
GRANT EXECUTE ON PROCEDURE nome_procedure TO nome_usuario;
GRANT EXECUTE ON FUNCTION nome_funcao TO nome_usuario;

-- Permissões administrativas 
GRANT ALL PRIVILEGES ON nome_tabela TO nome_usuario;
GRANT CREATE ON DATABASE nome_database TO nome_usuario;
GRANT DROP ON nome_tabela TO nome_usuario;

-- Permitindo que o usuário repasse a permissão a outros usuários
GRANT SELECT ON nome_tabela TO usuarios WITH GRANT OPTION;
*/

-- 1. GRANT, permissõa de acesso a uma coluna específica
GRANT SELECT 
  id_cliente
  , nome
  , sobrenome
ON cadastro TO jose@localhost; -- Desta forma o usuários pode realizar SELECT apenas na coluna específica da tabela específica.
