/* 18 - INSERT INTO (MULTIPLE VALUES)

-- Adicionando diversos valores a uma tabela
USE schema_name
USE table_name

INSERT INTO table_name(column1,column2,column3)
  VALUES('info1','info2','info3')
        ,('info4','info5','info6')
        ,('info7','info8','info9');

*/

-- 1. INSERT INTO(DEFAULT), os ultimos valores da tabela
INSERT INTO table_name
  VALUES('Juan','Daniel','1994-01-01'),
        ('Gabriel','Alonso','1923-12-12'),
        ('André','Vincent','1990-11-11');

-- 2. INSERT INTO, um unico campo
INSERT INTO table_name(nome)
  VALUES('Antony')
      , ('Augusto')
      , ('Lucas');
