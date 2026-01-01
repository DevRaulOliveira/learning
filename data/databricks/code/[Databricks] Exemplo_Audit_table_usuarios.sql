/* Análses
Análise de usuários, usuários x periodos :13: > 1 - 24
Análise de atividades, atividades x periodos :493: > 25 - 50
Análise de consultas, consultas x periodos :1033: > 51 - 76
Análise de acesso, acessos x períodos :1704: > 76 - 102
Análise de usuários, usuários x atividades :2350 > 103 - 128
Análise de usuários, usuários x consultas x periodo :2962: > 129 - 154
Analise de usuários, usuários x acessos x periodo :3702 > 155 - 180

action_name IN ('createTable','commandSubmit','getTable','deleteTable') -- Consulta 
action_name IN ("workspaceInHouseOAuthClientAuthentication", "mintOAuthToken", "mintOAuthAuthorizationCode") -- Acesso
WHERE sua_coluna RLIKE '[A-Z]' -- campos com letras maiusculas (Descrição de schemas, tabelas e colunas) -- Letras maiusculas

*/

---
/*Usuários */
---
-- 1. Lista de usuários
WITH active_users AS
  (
  SELECT DISTINCT
    user_identity.email `Usuario`
  FROM `system`.`access`.`audit`
  WHERE 
    user_identity.email RLIKE '@'
  )
SELECT
  Usuario
FROM active_users;

-- 2. Total de usuários
WITH active_users AS
  (
  SELECT
    COUNT(DISTINCT user_identity.email) `Total de Usuarios`
  FROM `system`.`access`.`audit`
  WHERE
    user_identity.email RLIKE '@'
  )
SELECT
  Total de Usuarios
FROM active_users;
-- 3. Usuários distintos, por ano
WITH active_users AS
  (
  SELECT
    (SELECT DISTINCT user_identity.email) `Usuario`
    YEAR(event_date) `Ano`
  FROM `system`.`access`.`audit`
  WHERE
    user_identity.email RLIKE '@'
  GROUP BY
    Usuario
  , Ano
  )
SELECT 
  Usuario
, Ano
FROM active_users;
-- 4. Total de usuários distintos por ano
WITH active_users AS
  (
  SELECT
    COUNT(DISTINCT user_identity.email) `Total de Usuarios`
  , YEAR(event_date) `Ano`
  FROM `system`.`access`.`audit`
  WHERE
    user_identity.email RLIKE '@'
  GROUP BY
    Ano
  )
SELECT
  usuarios
, Ano
FROM active_users;

-- 5. Usuarios distintos por semestre
WITH active_users AS
  (
  SELECT
    (SELECT DISTINCT user_identity.email) `Usuario`
  , CASE
      WHEN MONTH(event_date) BETWEEN 1 AND 6 '1° Semestre'
      WHEN MONTH(event_date) BETWEEN 7 AND 12 '2° Semestre'
   END AS `Semestre`
  , YEAR(event_date) `Ano`
  FROM `system`.`access`.`audit`
  WHERE
    user_identity.email RLIKE '@'
  GROUP BY
    Usuarios
  , Semestre
  , Ano
  ORDER BY Ano DESC, Semestre DESC
  )
SELECT
  Usuario
, Semestre
, Ano;

-- 6. total de usuarios distintos por semestre
WITH active_users AS
  (
  SELECT
    COUNT(DISTINCT user_identity.email) `Total de Usuarios`
  , CASE
      WHEN MONTH(event_date) BETWEEN 1 AND 6 '1° Semestre'
      WHEN MONTH(event_date) BETWEEN 7 AND 12 '2° Semestre'
   END AS `Semestre`
  , YEAR(event_date) `Ano`
  FROM `system`.`access`.`audit`
  WHERE
    user_identity.email RLIKE '@'
  GROUP BY
    Semestre
  , Ano
  ORDER BY Ano DESC
  )
SELECT
  `Total de Usuarios`
, Semestre
, Ano
FROM active_users;

-- 7. usuarios distintos por trimestre
WITH active_users AS
  (
  SELECT
    (SELECT DISTINCT user_identity.email) `Usuario`
  , CASE
      WHEN MONTH(event_date) BETWEEN 1 AND 3 '1º Trimestre'
      WHEN MONTH(event_date) BETWEEN 4 AND 6 '2º Trimestre'
      WHEN MONTH(event_date) BETWEEN 7 AND 9 '3º Trimestre'
      WHEN MONTH(event_date) BETWEEN 10 AND 12 '4º Trimestre'
   END AS `Trimestre`  
  , YEAR(event_date) `Ano`
  FROM `system`.`access`.`audit`
  WHERE
    user_identity.email RLIKE '@'
  GROUP BY
    Usuario
  , Trimestre
  , Ano
  ORDER BY Ano DESC, Trimestre DESC
  )
SELECT
  Usuario
, Trimestre
, Ano
FROM active_users;

-- 8. total de usuários distintos por trimestre
  WITH active_users AS
  (
  SELECT
    COUNT(DISTINCT user_identity.email) `Total de Usuarios`
  , CASE
      WHEN MONTH(event_date) BETWEEN 1 AND 3 '1º Trimestre'
      WHEN MONTH(event_date) BETWEEN 4 AND 6 '2º Trimestre'
      WHEN MONTH(event_date) BETWEEN 7 AND 9 '3º Trimestre'
      WHEN MONTH(event_date) BETWEEN 10 AND 12 '4º Trimestre'
   END AS `Trimestre`  
  , YEAR(event_date) `Ano`
  FROM `system`.`access`.`audit`
  WHERE
    user_identity.email RLIKE '@'
  GROUP BY
    Usuario
  , Trimestre
  , Ano
  ORDER BY Ano DESC, Trimestre DESC
  )
SELECT
`Total de Usuarios`
, Trimestre
, Ano
FROM active_users;

-- 9. Usuarios distintos nos ultimos 90 dias
  WITH active_users AS
  (
  SELECT
    (SELECT DISTINCT user_identity.email) `Usuarios`
  FROM `system`.`access`.`audit`
  WHERE
    user_identity.email RLIKE '@'
    AND event_date >= DATE_SUB(DAY, -90,CURRENT_DATE)
  ORDER BY Usuarios ASC
  )
SELECT
  Usuarios
FROM active_users;

-- 10. Total de usuarios distintos nos ultimos 90 dias
WITH active_users AS
  (
  SELECT
    COUNT(DISTINCT user_identity.email) `Total de Usuarios`
  FROM `system`.`access`.`audit`
  WHERE
    user_identity.email RLIKE '@'
    AND event_date >= DATEADD(DAY, -90, GETDATE())
  ORDER BY user_identity.email ASC
  )
SELECT
  `Total de Usuarios`
FROM active_users;

-- 11. Usuarios distintos no bimestre
  WITH active_users AS
  (
  SELECT
    (SELECT DISTINCT user_identity.email) `Usuarios`
  , CASE
      WHEN MONTH(event_date) BETWEEN 1 AND 2 '1º Bimestre'
      WHEN MONTH(event_date) BETWEEN 3 AND 4 '2º Bimestre'
      WHEN MONTH(event_date) BETWEEN 5 AND 6 '3º Bimestre'
      WHEN MONTH(event_date) BETWEEN 7 AND 8 '4º Bimestre'
      WHEN MONTH(event_date) BETWEEN 9 AND 10 '5º Bimestre'
      WHEN MONTH(event_date) BETWEEN 11 AND 12 '6º Bimestre'
   END AS `Bimestre`  
  , YEAR(event_date) `Ano`
  FROM `system`.`access`.`audit`
  WHERE
    user_identity.email RLIKE '@'
  GROUP BY
    Usuario
  , Bimestre
  , Ano
  ORDER BY Ano DESC, Bimestre DESC
  )
SELECT
`Usuarios`
, Bimestre
, Ano
FROM active_users;

-- 12. Total de usuarios distintos no bimestre
  WITH active_users AS
  (
  SELECT
    COUNT(DISTINCT user_identity.email) `Total de Usuarios`
  , CASE
      WHEN MONTH(event_date) BETWEEN 1 AND 2 '1º Bimestre'
      WHEN MONTH(event_date) BETWEEN 3 AND 4 '2º Bimestre'
      WHEN MONTH(event_date) BETWEEN 5 AND 6 '3º Bimestre'
      WHEN MONTH(event_date) BETWEEN 7 AND 8 '4º Bimestre'
      WHEN MONTH(event_date) BETWEEN 9 AND 10 '5º Bimestre'
      WHEN MONTH(event_date) BETWEEN 11 AND 12 '6º Bimestre'
   END AS `Bimestre`  
  , YEAR(event_date) `Ano`
  FROM `system`.`access`.`audit`
  WHERE
    user_identity.email RLIKE '@'
  GROUP BY
   Bimestre
  , Ano
  ORDER BY Ano DESC, Bimestre DESC
  )
SELECT
`Total de Usuarios`
, Bimestre
, Ano
FROM active_users;

-- 13. Usuários distintos, por mês.
WITH active_users AS
(
  SELECT DISTINCT
    user_identity.email `Usuarios`
  , DATE_FORMAT(event_date, 'yyyy-MM') `Ano-Mes`
  FROM `system`.`access`.`audit`
  WHERE user_identity.email RLIKE '@'
  ORDER BY `Ano-Mes` DESC
)
SELECT
  `Usuarios`
, `Ano-Mes`
FROM active_users;

-- 14. Total de Usuários distintos, por mês.
WITH active_users AS
(
  SELECT 
    COUNT(DISTINCT user_identity.email) `Usuarios`
    , DATE_FORMAT(event_date, 'yyyy-MM') `Ano-Mes`
  FROM `system`.`access`.`audit`
  WHERE 
    user_identity.email RLIKE '@'
  GROUP BY
    `Ano-Mes
  ORDER BY Ano-Mes DESC
)
SELECT
  Usuarios AS `Total de Usuarios`
, `Ano-Mes
FROM active_users;

-- 15. Usuários distintos, por semana.
WITH active_users AS
(
  SELECT DISTINCT 
    user_identity.email) `Usuarios`
    , WEEKOFYEAR(event_date) `Semana`
    . DATE_FORMAT(event_date, 'yyyy-MM') `Ano-Mes`
  FROM `system`.`access`.`audit`
  WHERE 
    user_identity.email RLIKE '@'
  GROUP BY
    `Usuarios`
    , `Data`
    , `Ano-Mes`
  ORDER BY `Ano-Mes` DESC
)
SELECT
  Usuarios
  , `Data`
  , `Ano-Mes`
FROM active_users;

-- 16. Total usuários distintos, por semana.
WITH active_users AS
(
  SELECT 
    COUNT(DISTINCT user_identity.email) `Total de Usuarios`
    , WEEKOFYEAR(event_date) `Semana`
    . DATE_FORMAT(event_date, 'yyyy-MM') `Ano-Mes`
  FROM `system`.`access`.`audit`
  WHERE 
    user_identity.email RLIKE '@'
  GROUP BY
    `Data`
    , `Ano-Mes`
  ORDER BY `Ano-Mes` DESC
)
SELECT
  `Total de Usuarios`
  , `Data`
  , `Ano-Mes`
FROM active_users;

-- 17. Usuários, ultimos 7 dias
WITH active_users AS
  (
    SELECT DISTINCT
      user_identity.email `Usuarios`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email RLIKE '@'
      AND event_date>=DATE_SUB(CURRENT_DATE(),7)
    GROUP BY
      user_identity.email
      , event_date
    ORDER BY event_date DESC
  )
SELECT
  `Usuarios`
  , `Data`
FROM active_users;

-- 18. Total de usuários, ultimos 7 dias
WITH active_users AS
  (
    SELECT 
      COUNT(DISTINCT user_identity.email) `Usuarios`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email RLIKE '@'
      AND event_date>=DATE_SUB(CURRENT_DATE(),7)
    GROUP BY
       event_date
    ORDER BY event_date DESC
  )
SELECT
  `Usuarios` as `Total de Usuarios`
  , `Data`
FROM active_users;

-- 19. Usuários, dia anterior
WITH active_users AS
  (
    SELECT DISTINCT
      user_identity.email `Usuarios`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email RLIKE '@'
      AND event_date>=DATE_SUB(CURRENT_DATE(),1)
    GROUP BY
      user_identity.email
      , event_date
    ORDER BY event_date DESC
  )
SELECT
  `Usuarios`
  , `Data`
FROM active_users;

-- 20. Total de usuários, dia anterior
WITH active_users AS
  (
    SELECT 
      COUNT(DISTINCT user_identity.email) `Usuarios`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email RLIKE '@'
      AND event_date>=DATE_SUB(CURRENT_DATE(),1)
    GROUP BY
       event_date
    ORDER BY event_date DESC
  )
SELECT
  `Usuarios` as `Total de Usuarios`
  , `Data`
FROM active_users;

-- 21. Usuários, hoje.
WITH active_users AS
  (
    SELECT DISTINCT
      user_identity.email `Usuarios`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email RLIKE '@'
      AND event_date=(CURRENT_DATE())
    GROUP BY
      user_identity.email
      , event_date
    ORDER BY event_date DESC
  )
SELECT
  `Usuarios`
  , `Data`
FROM active_users;

-- 22. Total de usuários, hoje.
WITH active_users AS
  (
    SELECT 
      COUNT(DISTINCT user_identity.email) `Usuarios`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email RLIKE '@'
      AND event_date=CURRENT_DATE()
    GROUP BY
       event_date
    ORDER BY event_date DESC
  )
SELECT
  `Usuarios` as `Total de Usuarios`
  , `Data`
FROM active_users;

-- 23. Usuários, por dia.
WITH active_users AS
  (
  SELECT DISTINCT
    user_identity.email `Usuario`
    , event_date `Data`
  FROM `system`.`access`.`audit`
  WHERE
    user_identity.email RLIKE '@'
  GROUP BY
    `Usuario`
    , `Data`
  ORDER BY `Data`
  )
SELECT
  `Usuario`
  . `Data`
FROM active_users;

-- 24. Total de usuários,por dia.
WITH active_users AS
  (
  COUNT(DISTINCT user_identity.email) `Usuario`
    , event_date `Data`
  FROM `system`.`access`.`audit`
  WHERE
    user_identity.email RLIKE '@'
  GROUP BY
     `Data`
  ORDER BY `Data`
  )
SELECT
  `Usuario` AS `Total de Usuarios`
  . `Data`
FROM active_users;

---
/* Analise de atividades */
---

-- 25. Atividades realizadas, apenas de usuários.
WITH activities AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
    GROUP BY
      `Atividade`
    ORDER BY `Quantidade` DESC
  )
SELECT
  `Atividade`
  , `Quantidade`
FROM activities;

-- 26. Total de Atividades realizadas, apenas de usuários.
WITH activities AS
  (
    SELECT
      COUNT(action_name) `Quantidade`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
    GROUP BY
      `Atividade`
    ORDER BY `Quantidade` DESC
  )
SELECT
  `Quantidade` AS `Total de atividades`
FROM activities;

-- 27. Atividades realizadas, apenas de usuários, por ano.
WITH activities AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , YEAR(event_date) `Ano`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
    GROUP BY
      `Atividade`
      , `Ano`
    ORDER BY `Quantidade` DESC, `Ano` DESC
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Ano`
FROM activities;

-- 28. Total de atividades realizadas, apenas de usuários, por ano.
WITH activities AS
  (
    SELECT
       COUNT(action_name) `Quantidade`
      , YEAR(event_date) `Ano`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
    GROUP BY
      `Ano`
    ORDER BY `Ano` DESC
  )
SELECT
  `Quantidade` AS `Total de atividades`
  , `Ano`
FROM activities;

-- 29. Atividades realizadas, apenas de usuários, por semestre
WITH activities AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , IF(MONTH(event_date) BETWEEN 1 AND 6,'1º semestre', '2º semestre') `Semestre`
      , YEAR(event_date) `Ano`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
    GROUP BY
      `Atividade`
      , `Semestre`
      , `Ano`
    ORDER BY `Quantidade` DESC, `Semestre` DESC, `Ano` DESC
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Semestre`
  , `Ano`
FROM activities;

-- 30. Total de atividades realizadas, apenas de usuários, por semestre
WITH activities AS
  (
    SELECT
      COUNT(action_name) `Quantidade`
      , IF(MONTH(event_date) BETWEEN 1 AND 6,'1º semestre', '2º semestre') `Semestre`
      , YEAR(event_date) `Ano`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
    GROUP BY
     `Semestre`
      , `Ano`
    ORDER BY `Semestre` DESC, `Ano` DESC
  )
SELECT
  `Quantidade` AS `Total de atividades`
  , `Semestre`
  , `Ano`
FROM activities;

-- 31. Atividades realizadas, apenas de usuários, por trimestre.
WITH activities AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , CASE
          WHEN(MONTH(event_date) BETWEEN 1 AND 3) THEN '1º trimestre'
          WHEN(MONTH(event_date) BETWEEN 4 AND 6) THEN '2º trimestre'
          WHEN(MONTH(event_date) BETWEEM 7 AND 9) THEN '3º trimestre'
          ELSE '4º trimestre'
          END AS `Trimestre`          
      , YEAR(event_date) `Ano`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
    GROUP BY
      `Atividade`
      , `Trimestre`
      , `Ano`
    ORDER BY `Quantidade` DESC, `Trimestre` DESC, `Ano` DESC
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Trimestre`
  , `Ano`
FROM activities;

-- 32. Total de atividades realizadas, apenas de usuários, por trimestre.
WITH activities AS
  (
    SELECT
      COUNT(action_name) `Quantidade`
      , CASE
          WHEN(MONTH(event_date) BETWEEN 1 AND 3) THEN '1º trimestre'
          WHEN(MONTH(event_date) BETWEEN 4 AND 6) THEN '2º trimestre'
          WHEN(MONTH(event_date) BETWEEM 7 AND 9) THEN '3º trimestre'
          ELSE '4º trimestre'
          END AS `Trimestre`          
      , YEAR(event_date) `Ano`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
    GROUP BY
      `Trimestre`
      , `Ano`
    ORDER BY `Trimestre` DESC, `Ano` DESC
  )
SELECT
  `Quantidade` AS `Total de atividades`
  , `Trimestre`
  , `Ano`
FROM activities;

-- 33. Atividades realizadas, apenas de usuários, ultimos 90 dias.
WITH activities AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date >= DATE_SUB(CURRENT_DATE(),90)
    GROUP BY
      `Atividade`
      , `Data`
    ORDER BY `Quantidade` DESC, `Data` DESC
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Data`
FROM activities;

-- 34. Total de Atividades realizadas, apenas de usuários, ultimos 90 dias.
WITH activities AS
  (
    SELECT
      COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date >= DATE_SUB(CURRENT_DATE(),90)
    GROUP BY
      `Data`
    ORDER BY `Data` DESC
  )
SELECT
  `Quantidade` AS `Total de atividades`
  , `Data`
FROM activities;

 -- 35. Atividades realizadas, apenas de usuários, por mês
WITH activities AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , DATE_FORMAT(event_date, 'yyyy-MM') `Ano-Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
    GROUP BY
      `Atividade`
      , `Ano-Mes`
    ORDER BY `Quantidade` DESC, `Ano-Mes` DESC
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Ano-Mes`
FROM activities;

 -- 36. Total de Atividades realizadas, apenas de usuários, por mês
WITH activities AS
  (
    SELECT
      COUNT(action_name) `Quantidade`
      , DATE_FORMAT(event_date, 'yyyy-MM') `Ano-Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
    GROUP BY
      `Ano-Mes`
    ORDER BY `Ano-Mes` DESC
  )
SELECT
  `Quantidade` AS `Total de atividades`
  , `Ano-Mes`
FROM activities;

 -- 37. Atividades realizadas, apenas de usuários, por semana.
WITH activities AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , WEEKOFYEAR(event_date) `Semana`
      , DATE_FORMAT(event_date, 'yyyy-MM') `Ano-Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
    GROUP BY
      `Atividade`
      , `Semana`
      , `Ano-Mes`
    ORDER BY `Quantidade` DESC, `Semana` DESC, `Ano-Mes` DESC
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Semana`
  , `Ano-Mes`
FROM activities;

 -- 38. Total de Atividades realizadas, apenas de usuários, por semana.
WITH activities AS
  (
    SELECT
      COUNT(action_name) `Quantidade`
      , WEEKOFYEAR(event_date) `Semana`
      , DATE_FORMAT(event_date, 'yyyy-MM') `Ano-Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
    GROUP BY
      `Semana`
      , `Ano-Mes`
    ORDER BY `Semana` DESC, `Ano-Mes` DESC
  )
SELECT
  `Quantidade` AS `Total de atividades`
  , `Semana`
  , `Ano-Mes`
FROM activities;

 -- 39. Atividades realizadas, apenas de usuários, dia.
WITH activities AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , event_date `Data´
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
    GROUP BY
      `Atividade`
      , `Data`
    ORDER BY `Data` DESC
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Data
FROM activities;

 -- 40. Total de Atividades realizadas, apenas de usuários, dia.
WITH activities AS
  (
    SELECT
      COUNT(action_name) `Quantidade`
      , event_date `Data
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
    GROUP BY
      `Data`
    ORDER BY `Data` DESC
  )
SELECT
 `Quantidade` AS `Total de Atividades`
  , `Data
FROM activities;

-- 41. Atividades realizadas, apenas de usuários, ano atual.
WITH activities AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , YEAR(event_date) `Ano`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND YEAR(event_date) = YEAR(CURRENT_DATE())
    GROUP BY
      `Atividade`
      , `Ano`
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Ano`
FROM activities;

-- 42. Total de Atividades realizadas, apenas de usuários, ano atual.
WITH activities AS
  (
    SELECT
      COUNT(action_name) `Quantidade`
      , YEAR(event_date) `Ano`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND YEAR(event_date) = YEAR(CURRENT_DATE())
    GROUP BY
     `Ano`
  )
SELECT
   `Quantidade` AS `Total de Atividades`
  , `Ano-Mes`
FROM activities;

-- 43. Atividades realizadas, apenas de usuários, mês atual.
WITH activities AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , MONTH(event_date) `Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND MONTH(event_date) = MONTH(CURRENT_DATE())
    GROUP BY
      `Atividade`
      , `Mes`
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Mes`
FROM activities;

-- 44. Total de Atividades realizadas, apenas de usuários, mês atual.
WITH activities AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , MONTH(event_date) `Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND MONTH(event_date) = MONTH(CURRENT_DATE())
    GROUP BY
      `Atividade`
      , `Mes`
  )
SELECT
  `Quantidade` AS `Total de atividades`
  , `Mes`
FROM activities;

-- 45. Atividades realizadas, apenas de usuários, semana atual.
WITH activities AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , WEEKOFYEAR(event_date) `Semana`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND WEEKOFYEAR(event_date) = WEEKOFYEAR(CURRENT_DATE())
    GROUP BY
      `Atividade`
      , `Semana`
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Semana`
FROM activities;

-- 46. Total de Atividades realizadas, apenas de usuários, semana atual.
WITH activities AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , WEEKOFYEAR(event_date) `Semana`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND WEEKOFYEAR(event_date) = WEEKOFYEAR(CURRENT_DATE())
    GROUP BY
      `Atividade`
      , `Semana`
  )
SELECT
  `Quantidade` AS `Total de atividades`
  , `Semana`
FROM activities;

-- 47. Atividades realizadas, apenas de usuários, dia anterior.
WITH activities AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date = DATE_SUB(DAY(CURRENT_DATE(), 1)
    GROUP BY
      `Atividade`
      , `Data`
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Data`
FROM activities;

-- 48. Total de ocoreencia de atividades realizadas, apenas de usuários, dia anterior.
WITH activities AS
  (
    SELECT
      COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date = DATE_SUB(DAY(CURRENT_DATE(), 1)
    GROUP BY
      `Data`
  )
SELECT
   `Quantidade` AS `Total de atividades`
  , `Data`
FROM activities;

-- 49. Atividades realizadas, apenas de usuários, dia atual.
WITH activities AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date = CURRENT_DATE()
    GROUP BY
      `Atividade`
      , `Data`
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Data`
FROM activities;

-- 50. Total de ocoreencia de atividades realizadas, apenas de usuários, dia atual.
WITH activities AS
  (
    SELECT
      COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date = CURRENT_DATE()
    GROUP BY
      `Data`
  )
SELECT
   `Quantidade` AS `Total de atividades`
  , `Data`
FROM activities;

---
/* Atividades de Consulta */

---
-- 51. Consultas realizadas, apenas de usuários.
WITH queries AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN (
          'createTable',
          'commandSubmit',
          'getTable',
          'deleteTable')
    GROUP BY
      `Atividade`
    ORDER BY `Quantidade` DESC
  )
SELECT
  `Atividade`
  , `Quantidade`
FROM queries;


-- 52. Total de consultas realizadas, apenas de usuários.
WITH queries AS
  (
    SELECT
      COUNT(action_name) `Quantidade`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN (
        'createTable',
        'commandSubmit',
        'getTable',
        'deleteTable')
    GROUP BY
      `Atividade`
    ORDER BY `Quantidade` DESC
  )
SELECT
  `Quantidade` AS `Total de consultas`
FROM queries;

-- 53. Consultas realizadas, apenas de usuários, por ano.
WITH queries AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , YEAR(event_date) `Ano`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN (
        'createTable',
        'commandSubmit',
        'getTable',
        'deleteTable')
    GROUP BY
      `Atividade`
      , `Ano`
    ORDER BY `Quantidade` DESC, `Ano` DESC
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Ano`
FROM queries;

-- 54. Total de consultas realizadas, apenas de usuários, por ano.
WITH queries AS
  (
    SELECT
       COUNT(action_name) `Quantidade`
      , YEAR(event_date) `Ano`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN (
        'createTable',
        'commandSubmit',
        'getTable',
        'deleteTable')  
  GROUP BY
      `Ano`
    ORDER BY `Ano` DESC
  )
SELECT
  `Quantidade` AS `Total de consultas`
  , `Ano`
FROM queries;

-- 55. Consultas realizadas, apenas de usuários, por semestre
WITH queries AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , IF(MONTH(event_date) BETWEEN 1 AND 6,'1º semestre', '2º semestre') `Semestre`
      , YEAR(event_date) `Ano`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN (
        'createTable',
        'commandSubmit',
        'getTable',
        'deleteTable')  
  GROUP BY
      `Atividade`
      , `Semestre`
      , `Ano`
    ORDER BY `Quantidade` DESC, `Semestre` DESC, `Ano` DESC
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Semestre`
  , `Ano`
FROM queries;

-- 56. Total de consultas realizadas, apenas de usuários, por semestre
WITH queries AS
  (
    SELECT
      COUNT(action_name) `Quantidade`
      , IF(MONTH(event_date) BETWEEN 1 AND 6,'1º semestre', '2º semestre') `Semestre`
      , YEAR(event_date) `Ano`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN (
        'createTable',
        'commandSubmit',
        'getTable',
        'deleteTable')  
  GROUP BY
     `Semestre`
      , `Ano`
    ORDER BY `Semestre` DESC, `Ano` DESC
  )
SELECT
  `Quantidade` AS `Total de consultas`
  , `Semestre`
  , `Ano`
  FROM queries;

-- 57. Consultas realizadas, apenas de usuários, por trimestre.
WITH queries AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , CASE
          WHEN(MONTH(event_date) BETWEEN 1 AND 3) THEN '1º trimestre'
          WHEN(MONTH(event_date) BETWEEN 4 AND 6) THEN '2º trimestre'
          WHEN(MONTH(event_date) BETWEEM 7 AND 9) THEN '3º trimestre'
          ELSE '4º trimestre'
          END AS `Trimestre`          
      , YEAR(event_date) `Ano`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN (
            'createTable',
            'commandSubmit',
            'getTable',
            'deleteTable') 
    GROUP BY
      `Atividade`
      , `Trimestre`
      , `Ano`
    ORDER BY `Quantidade` DESC, `Trimestre` DESC, `Ano` DESC
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Trimestre`
  , `Ano`
FROM queries;

-- 58. Total de consultas realizadas, apenas de usuários, por trimestre.
WITH queries AS
  (
    SELECT
      COUNT(action_name) `Quantidade`
      , CASE
          WHEN(MONTH(event_date) BETWEEN 1 AND 3) THEN '1º trimestre'
          WHEN(MONTH(event_date) BETWEEN 4 AND 6) THEN '2º trimestre'
          WHEN(MONTH(event_date) BETWEEM 7 AND 9) THEN '3º trimestre'
          ELSE '4º trimestre'
          END AS `Trimestre`          
      , YEAR(event_date) `Ano`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN (
        'createTable',
        'commandSubmit',
        'getTable',
        'deleteTable')  
  GROUP BY
      `Trimestre`
      , `Ano`
    ORDER BY `Trimestre` DESC, `Ano` DESC
  )
SELECT
  `Quantidade` AS `Total de consultas`
  , `Trimestre`
  , `Ano`
FROM queries;

-- 59. Consultas realizadas, apenas de usuários, ultimos 90 dias.
WITH queries AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date >= DATE_SUB(CURRENT_DATE(),90)
      AND action_name IN (
            'createTable',
            'commandSubmit',
            'getTable',
            'deleteTable') 
    GROUP BY
      `Atividade`
      , `Data`
    ORDER BY `Quantidade` DESC, `Data` DESC
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Data`
FROM queries;

-- 60. Total de consultas realizadas, apenas de usuários, ultimos 90 dias.
WITH queries AS
  (
    SELECT
      COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date >= DATE_SUB(CURRENT_DATE(),90)
      AND action_name IN (
        'createTable',
        'commandSubmit',
        'getTable',
        'deleteTable')
    GROUP BY
      `Data`
    ORDER BY `Data` DESC
  )
SELECT
  `Quantidade` AS `Total de consultas`
  , `Data`
FROM activities;

 -- 61. Consultas realizadas, apenas de usuários, por mês
WITH queries AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , DATE_FORMAT(event_date, 'yyyy-MM') `Ano-Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN (
        'createTable',
        'commandSubmit',
        'getTable',
        'deleteTable')
    GROUP BY
      `Atividade`
      , `Ano-Mes`
    ORDER BY `Quantidade` DESC, `Ano-Mes` DESC
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Ano-Mes`
FROM queries;

 -- 62. Total de consultas realizadas, apenas de usuários, por mês
WITH queries AS
  (
    SELECT
      COUNT(action_name) `Quantidade`
      , DATE_FORMAT(event_date, 'yyyy-MM') `Ano-Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN (
        'createTable',
        'commandSubmit',
        'getTable',
        'deleteTable')
    GROUP BY
      `Ano-Mes`
    ORDER BY `Ano-Mes` DESC
  )
SELECT
  `Quantidade` AS `Total de consultas`
  , `Ano-Mes`
FROM queries;

 -- 63. Consultas realizadas, apenas de usuários, por semana.
WITH queries AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , WEEKOFYEAR(event_date) `Semana`
      , DATE_FORMAT(event_date, 'yyyy-MM') `Ano-Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN (
        'createTable',
        'commandSubmit',
        'getTable',
        'deleteTable')  
  GROUP BY
      `Atividade`
      , `Semana`
      , `Ano-Mes`
    ORDER BY `Quantidade` DESC, `Semana` DESC, `Ano-Mes` DESC
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Semana`
  , `Ano-Mes`
FROM queries;

-- 64. Total de consultas realizadas, apenas de usuários, por semana.
WITH queries AS
  (
    SELECT
      COUNT(action_name) `Quantidade`
      , WEEKOFYEAR(event_date) `Semana`
      , DATE_FORMAT(event_date, 'yyyy-MM') `Ano-Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN (
        'createTable',
        'commandSubmit',
        'getTable',
        'deleteTable')  
  GROUP BY
      `Semana`
      , `Ano-Mes`
    ORDER BY `Semana` DESC, `Ano-Mes` DESC
  )
SELECT
  `Quantidade` AS `Total de consultas`
  , `Semana`
  , `Ano-Mes`
FROM queries;

-- 65. Consultas realizadas, apenas de usuários, dia.
WITH queries AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , event_date `Data
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN (
        'createTable',
        'commandSubmit',
        'getTable',
        'deleteTable')
    GROUP BY
      `Atividade`
      , `Data
    ORDER BY `Data` DESC
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Data
FROM queries;

-- 66. Total de consultas realizadas, apenas de usuários, dia.
WITH queries AS
  (
    SELECT
      COUNT(action_name) `Quantidade`
      , event_date `Data
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN (
        'createTable',
        'commandSubmit',
        'getTable',
        'deleteTable')
    GROUP BY
      `Data
    ORDER BY `Data` DESC
  )
SELECT
 `Quantidade` AS `Total de consultas`
  , `Data
FROM queries;

-- 67. Consultas realizadas, apenas de usuários, ano atual.
WITH queries AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , YEAR(event_date) `Ano`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND YEAR(event_date) = YEAR(CURRENT_DATE())
      AND action_name IN (
        'createTable',
        'commandSubmit',
        'getTable',
        'deleteTable')
    GROUP BY
      `Atividade`
      , `Ano`
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Ano`
FROM queries;

-- 68. Total de consultas realizadas, apenas de usuários, ano atual.
WITH queries AS
  (
    SELECT
      COUNT(action_name) `Quantidade`
      , YEAR(event_date) `Ano`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND YEAR(event_date) = YEAR(CURRENT_DATE())
      AND action_name IN (
        'createTable',
        'commandSubmit',
        'getTable',
        'deleteTable')  
    GROUP BY
     `Ano`
  )
SELECT
   `Quantidade` AS `Total de consultas`
  , `Ano-Mes`
FROM queries;

-- 69. Consultas realizadas, apenas de usuários, mês atual.
WITH queries AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , MONTH(event_date) `Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND MONTH(event_date) = MONTH(CURRENT_DATE())
      AND action_name IN (
        'createTable',
        'commandSubmit',
        'getTable',
        'deleteTable')  
    GROUP BY
      `Atividade`
      , `Mes`
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Mes`
FROM queries;

-- 70. Total de consultas realizadas, apenas de usuários, mês atual.
WITH queries AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , MONTH(event_date) `Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND MONTH(event_date) = MONTH(CURRENT_DATE())
      AND action_name IN (
        'createTable',
        'commandSubmit',
        'getTable',
        'deleteTable')
    GROUP BY
      `Atividade`
      , `Mes`
  )
SELECT
  `Quantidade` AS `Total de consultas`
  , `Mes`
FROM queries;

-- 71. Consultas realizadas, apenas de usuários, semana atual.
WITH activities AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , WEEKOFYEAR(event_date) `Semana`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND WEEKOFYEAR(event_date) = WEEKOFYEAR(CURRENT_DATE())
      AND action_name IN (
        'createTable',
        'commandSubmit',
        'getTable',
        'deleteTable') 
   GROUP BY
      `Atividade`
      , `Semana`
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Semana`
FROM activities;

-- 72. Total de consultas realizadas, apenas de usuários, semana atual.
WITH queries AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , WEEKOFYEAR(event_date) `Semana`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND WEEKOFYEAR(event_date) = WEEKOFYEAR(CURRENT_DATE())
      AND action_name IN (
            'createTable',
            'commandSubmit',
            'getTable',
            'deleteTable')  
    GROUP BY
      `Atividade`
      , `Semana`
  )
SELECT
  `Quantidade` AS `Total de consultas`
  , `Semana`
FROM queries;

-- 73. Consultas realizadas, apenas de usuários, dia anterior.
WITH queries AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date = DATE_SUB(DAY(CURRENT_DATE(), 1)
      AND action_name IN (
            'createTable',
            'commandSubmit',
            'getTable',
            'deleteTable') 
    GROUP BY
      `Atividade`
      , `Data`
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Data`
FROM queries;

-- 74. Total de consultas realizadas, apenas de usuários, dia anterior.
WITH queries AS
  (
    SELECT
      COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date = DATE_SUB(DAY(CURRENT_DATE(), 1)
      AND action_name IN (
            'createTable',
            'commandSubmit',
            'getTable',
            'deleteTable') 
    GROUP BY
      `Data`
  )
SELECT
   `Quantidade` AS `Total de consultas`
  , `Data`
FROM queries;

-- 75. Consultas, apenas de usuários, dia atual.
WITH queries AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date = CURRENT_DATE()
      AND action_name IN (
            'createTable',
            'commandSubmit',
            'getTable',
            'deleteTable')   
    GROUP BY
      `Atividade`
      , `Data`
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Data`
FROM queries;

-- 76. Total de consultas, apenas de usuários, dia atual.
WITH queries AS
  (
    SELECT
      COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date = CURRENT_DATE()
      AND action_name IN (
            'createTable',
            'commandSubmit',
            'getTable',
            'deleteTable') 
    GROUP BY
      `Data`
  )
SELECT
   `Quantidade` AS `Total de consultas`
  , `Data`
FROM queries;

---
/* Análise de acesso */
---

-- 77. Acessos, apenas de usuários
WITH accessed AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
    GROUP BY
      `Atividade`
    ORDER BY `Quantidade` DESC
  )
SELECT
  `Atividade`
  , `Quantidade`
FROM accessed;

-- 78. Total de acessos, apenas de usuários.
WITH accessed AS
  (
    SELECT
      COUNT(action_name) `Quantidade`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
    GROUP BY
      `Atividade`
    ORDER BY `Quantidade` DESC
  )
SELECT
  `Quantidade` AS `Total de acessos`
FROM accessed;

-- 79. acessos, apenas de usuários, por ano.
WITH accessed AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , YEAR(event_date) `Ano`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
    GROUP BY
      `Atividade`
      , `Ano`
    ORDER BY `Quantidade` DESC, `Ano` DESC
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Ano`
FROM accessed;

-- 80. Total de acessos, apenas de usuários, por ano.
WITH accessed AS
  (
    SELECT
       COUNT(action_name) `Quantidade`
      , YEAR(event_date) `Ano`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode') 
  GROUP BY
      `Ano`
    ORDER BY `Ano` DESC
  )
SELECT
  `Quantidade` AS `Total de acessos`
  , `Ano`
FROM accessed;

-- 81. acessos, apenas de usuários, por semestre
WITH accessed AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , IF(MONTH(event_date) BETWEEN 1 AND 6,'1º semestre', '2º semestre') `Semestre`
      , YEAR(event_date) `Ano`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode') 
  GROUP BY
      `Atividade`
      , `Semestre`
      , `Ano`
    ORDER BY `Quantidade` DESC, `Semestre` DESC, `Ano` DESC
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Semestre`
  , `Ano`
FROM accessed;

-- 82. Total de acessos, apenas de usuários, por semestre
WITH accessed AS
  (
    SELECT
      COUNT(action_name) `Quantidade`
      , IF(MONTH(event_date) BETWEEN 1 AND 6,'1º semestre', '2º semestre') `Semestre`
      , YEAR(event_date) `Ano`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')  
  GROUP BY
     `Semestre`
      , `Ano`
    ORDER BY `Semestre` DESC, `Ano` DESC
  )
SELECT
  `Quantidade` AS `Total de acessos`
  , `Semestre`
  , `Ano`
  FROM accessed;

-- 83. acessos, apenas de usuários, por trimestre.
WITH accessed AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , CASE
          WHEN(MONTH(event_date) BETWEEN 1 AND 3) THEN '1º trimestre'
          WHEN(MONTH(event_date) BETWEEN 4 AND 6) THEN '2º trimestre'
          WHEN(MONTH(event_date) BETWEEM 7 AND 9) THEN '3º trimestre'
          ELSE '4º trimestre'
          END AS `Trimestre`          
      , YEAR(event_date) `Ano`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
    GROUP BY
      `Atividade`
      , `Trimestre`
      , `Ano`
    ORDER BY `Quantidade` DESC, `Trimestre` DESC, `Ano` DESC
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Trimestre`
  , `Ano`
FROM accessed;


-- 84. Total de acessos, apenas de usuários, por trimestre.
WITH accessed AS
  (
    SELECT
      COUNT(action_name) `Quantidade`
      , CASE
          WHEN(MONTH(event_date) BETWEEN 1 AND 3) THEN '1º trimestre'
          WHEN(MONTH(event_date) BETWEEN 4 AND 6) THEN '2º trimestre'
          WHEN(MONTH(event_date) BETWEEM 7 AND 9) THEN '3º trimestre'
          ELSE '4º trimestre'
          END AS `Trimestre`          
      , YEAR(event_date) `Ano`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
  GROUP BY
      `Trimestre`
      , `Ano`
    ORDER BY `Trimestre` DESC, `Ano` DESC
  )
SELECT
  `Quantidade` AS `Total de acessos`
  , `Trimestre`
  , `Ano`
FROM accessed;

-- 85. acessos, apenas de usuários, ultimos 90 dias.
WITH accessed AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date >= DATE_SUB(CURRENT_DATE(),90)
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
    GROUP BY
      `Atividade`
      , `Data`
    ORDER BY `Quantidade` DESC, `Data` DESC
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Data`
FROM accessed;

-- 86. Total de acessos, apenas de usuários, ultimos 90 dias.
WITH accessed AS
  (
    SELECT
      COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date >= DATE_SUB(CURRENT_DATE(),90)
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
    GROUP BY
      `Data`
    ORDER BY `Data` DESC
  )
SELECT
  `Quantidade` AS `Total de acessos`
  , `Data`
FROM activities;

-- 87. acessos, apenas de usuários, por mês
WITH accessed AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , DATE_FORMAT(event_date, 'yyyy-MM') `Ano-Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
    GROUP BY
      `Atividade`
      , `Ano-Mes`
    ORDER BY `Quantidade` DESC, `Ano-Mes` DESC
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Ano-Mes`
FROM accessed;

-- 88. Total de acessos, apenas de usuários, por mês
WITH accessed AS
  (
    SELECT
      COUNT(action_name) `Quantidade`
      , DATE_FORMAT(event_date, 'yyyy-MM') `Ano-Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
    GROUP BY
      `Ano-Mes`
    ORDER BY `Ano-Mes` DESC
  )
SELECT
  `Quantidade` AS `Total de acessos`
  , `Ano-Mes`
FROM accessed;

-- 89. acessos, apenas de usuários, por semana.
WITH accessed AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , WEEKOFYEAR(event_date) `Semana`
      , DATE_FORMAT(event_date, 'yyyy-MM') `Ano-Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')  
  GROUP BY
      `Atividade`
      , `Semana`
      , `Ano-Mes`
    ORDER BY `Quantidade` DESC, `Semana` DESC, `Ano-Mes` DESC
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Semana`
  , `Ano-Mes`
FROM accessed;

-- 90. Total de acessos, apenas de usuários, por semana.
WITH accessed AS
  (
    SELECT
      COUNT(action_name) `Quantidade`
      , WEEKOFYEAR(event_date) `Semana`
      , DATE_FORMAT(event_date, 'yyyy-MM') `Ano-Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')  
  GROUP BY
      `Semana`
      , `Ano-Mes`
    ORDER BY `Semana` DESC, `Ano-Mes` DESC
  )
SELECT
  `Quantidade` AS `Total de acessos`
  , `Semana`
  , `Ano-Mes`
FROM accessed;

-- 91. acessos, apenas de usuários, dia.
WITH accessed AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , event_date `Data
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
    GROUP BY
      `Atividade`
      , `Data`
    ORDER BY `Data` DESC
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Data
FROM accessed;

-- 92. Total de acessos, apenas de usuários, dia.
WITH accessed AS
  (
    SELECT
      COUNT(action_name) `Quantidade`
      , event_date `Data
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
    GROUP BY
      `Data`
    ORDER BY `Data` DESC
  )
SELECT
 `Quantidade` AS `Total de acessos`
  , `Data
FROM accessed;

-- 93. acessos, apenas de usuários, ano atual.
WITH accessed AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , YEAR(event_date) `Ano`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND YEAR(event_date) = YEAR(CURRENT_DATE())
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
    GROUP BY
      `Atividade`
      , `Ano`
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Ano`
FROM accessed;

-- 94. Total de acessos, apenas de usuários, ano atual.
WITH accessed AS
  (
    SELECT
      COUNT(action_name) `Quantidade`
      , YEAR(event_date) `Ano`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND YEAR(event_date) = YEAR(CURRENT_DATE())
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
    GROUP BY
     `Ano`
  )
SELECT
   `Quantidade` AS `Total de acessos`
  , `Ano-Mes`
FROM accessed;

-- 95. acessos, apenas de usuários, mês atual.
WITH accessed AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , MONTH(event_date) `Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND MONTH(event_date) = MONTH(CURRENT_DATE())
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')  
    GROUP BY
      `Atividade`
      , `Mes`
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Mes`
FROM accessed;

-- 96. Total de acessos, apenas de usuários, mês atual.
WITH accessed AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , MONTH(event_date) `Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND MONTH(event_date) = MONTH(CURRENT_DATE())
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
    GROUP BY
      `Atividade`
      , `Mes`
  )
SELECT
  `Quantidade` AS `Total de acessos`
  , `Mes`
FROM accessed;

-- 97. acessos, apenas de usuários, semana atual.
WITH activities AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , WEEKOFYEAR(event_date) `Semana`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND WEEKOFYEAR(event_date) = WEEKOFYEAR(CURRENT_DATE())
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode') 
   GROUP BY
      `Atividade`
      , `Semana`
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Semana`
FROM activities;

-- 98. Total de acessos, apenas de usuários, semana atual.
WITH accessed AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , WEEKOFYEAR(event_date) `Semana`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND WEEKOFYEAR(event_date) = WEEKOFYEAR(CURRENT_DATE())
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
    GROUP BY
      `Atividade`
      , `Semana`
  )
SELECT
  `Quantidade` AS `Total de acessos`
  , `Semana`
FROM accessed;

-- 99. acessos, apenas de usuários, dia anterior.
WITH accessed AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date = DATE_SUB(DAY(CURRENT_DATE(), 1)
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
    GROUP BY
      `Atividade`
      , `Data`
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Data`
FROM accessed;

-- 100. Total de acessos, apenas de usuários, dia anterior.
WITH accessed AS
  (
    SELECT
      COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date = DATE_SUB(DAY(CURRENT_DATE(), 1)
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode') 
    GROUP BY
      `Data`
  )
SELECT
   `Quantidade` AS `Total de acessos`
  , `Data`
FROM accessed;

-- 101. Acessos, apenas de usuários, dia atual.
WITH accessed AS
  (
    SELECT
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date = CURRENT_DATE()
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')   
    GROUP BY
      `Atividade`
      , `Data`
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Data`
FROM accessed;

-- 102. Total de acessos, apenas de usuários, dia atual.
WITH accessed AS
  (
    SELECT
      COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date = CURRENT_DATE()
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
    GROUP BY
      `Data`
  )
SELECT
   `Quantidade` AS `Total de acessos`
  , `Data`
FROM accessed;

---
/* Análise de Atividades x Usuários */
---

-- 103. Atividades, por usuário.
WITH users_activities AS
  (
  SELECT
    user_identity.email `Usuario`
    , action_name `Atividade`
    , COUNT(action_name) `Quantidade`
  FROM `system`.`access`.`audit`
  WHERE 
    user_identity.email RLIKE '@'
  GROUP BY
    Usuario
    , Atividade
  ORDER BY `Quantidade` DESC
  )
SELECT
  `Usuario`
  , `Atividade`
  , `Quantidade`
FROM users_activities;

-- 104. Total de Atividades, por usuário.
WITH users_activities AS
  (
  SELECT
    user_identity.email `Usuario`
    , COUNT(action_name) `Quantidade`
  FROM `system`.`access`.`audit`
  WHERE 
    user_identity.email RLIKE '@'
  GROUP BY
    `Usuario`
  ORDER BY `Quantidade` DESC
  )
SELECT
  `Usuario`
  , `Quantidade` AS `Total de atividades por usuario`
FROM users_activities;

-- 105. Atividades, por usuário, por ano
WITH users_activities AS
  (
  SELECT
    user_identity.email `Usuario`
    , action_name `Atividade`
    , COUNT(action_name) `Quantidade`
    , YEAR(event_date) `Ano`
  FROM `system`.`access`.`audit`
  WHERE 
    user_identity.email RLIKE '@'
  GROUP BY
    Usuario
    , Atividade
    , `Ano`
  ORDER BY `Ano` DESC
  )
SELECT
  `Usuario`
  , `Atividade`
  , `Quantidade`
  , `Ano`
FROM users_activities;

-- 106. Total de Atividades, por usuário, por ano
WITH users_activities AS
  (
  SELECT
    user_identity.email `Usuario`
    , COUNT(action_name) `Quantidade`
    , YEAR(event_date) `Ano`
  FROM `system`.`access`.`audit`
  WHERE 
    user_identity.email RLIKE '@'
  GROUP BY
    Usuario
    , `Ano`
  ORDER BY `Ano` DESC
  )
SELECT
  `Usuario`
  , `Quantidade` AS `Total de atividades por usuário`
  , `Ano`
FROM users_activities;

-- 107. Atividades, por usuário, por semestre
WITH users_activities AS
  (
  SELECT
    user_identity.email `Usuario`
    , action_name `Atividade`
    , COUNT(action_name) `Quantidade`
    , IF(MONTH(event_date) BETWEEN 1 AND 6, '1º Semestre', '2º Semestre') `Semestre`
    , YEAR(event_date) `Ano`
  FROM `system`.`access`.`audit`
  WHERE 
    user_identity.email RLIKE '@'
  GROUP BY
    `Usuario`
    , `Atividade`
    , `Semestre`
    , `Ano`
  ORDER BY `Ano` DESC, `Semestre` DESC
  )
SELECT
  `Usuario`
  , `Atividade`
  , `Quantidade`
  , `Semestre`
  , `Ano`
FROM users_activities;

-- 108. Total de Atividades, por usuário, por semestre
WITH users_activities AS
  (
  SELECT
    user_identity.email `Usuario`
    , COUNT(action_name) `Quantidade`
    , IF(MONTH(event_date) BETWEEN 1 AND 6, '1º Semestre', '2º Semestre') `Semestre`
    , YEAR(event_date) `Ano`
  FROM `system`.`access`.`audit`
  WHERE 
    user_identity.email RLIKE '@'
  GROUP BY
    `Usuario`
    , `Semestre`
    , `Ano`
  ORDER BY `Ano` DESC, `Semestre` DESC
  )
SELECT
  `Usuario`
  , `Quantidade` AS `Total de atividades por usuário`
  , `Semestre`
  , `Ano`
FROM users_activities;


-- 109. Atividades, por usuário, por trimestre.
WITH users_activities AS
  (
  SELECT
    user_identity.email `Usuario`
    , action_name `Atividade`
    , COUNT(action_name) `Quantidade`
    , CASE
        WHEN MONTH(event_date) BETWEEN 1 AND 3 THEN '1º Trimestre'
        WHEN MONTH(event_date) BETWEEN 4 AND 6 THEN '2º Trimestre'
        WHEN MONTH(event_date) BETWEEN 7 AND 9 THEN '3° Trimestre'
        ELSE '4º Trimestre'
        END AS `Trimestre`
    , YEAR(event_date) `Ano`
  FROM `system`.`access`.`audit`
  WHERE 
    user_identity.email RLIKE '@'
  GROUP BY
    `Usuario`
    , `Atividade`
    , `Trimestre`
    , `Ano`
  ORDER BY `Ano` DESC, `Semestre` DESC
  )
SELECT
  `Usuario`
  , `Atividade`
  , `Quantidade`
  , `Trimestre`
  , `Ano`
FROM users_activities;

-- 110. Total de Atividades, por usuário, por trimestre.
WITH users_activities AS
  (
  SELECT
    user_identity.email `Usuario`
    , COUNT(action_name) `Quantidade`
    , CASE
        WHEN MONTH(event_date) BETWEEN 1 AND 3 THEN '1º Trimestre'
        WHEN MONTH(event_date) BETWEEN 4 AND 6 THEN '2º Trimestre'
        WHEN MONTH(event_date) BETWEEN 7 AND 9 THEN '3° Trimestre'
        ELSE '4º Trimestre'
        END AS `Trimestre`
    , YEAR(event_date) `Ano`
  FROM `system`.`access`.`audit`
  WHERE 
    user_identity.email RLIKE '@'
  GROUP BY
    `Usuario`
    , `Trimestre`
    , `Ano`
  ORDER BY `Ano` DESC, `Semestre` DESC
  )
SELECT
  `Usuario`
  , `Quantidade` AS `Total de atividades por usuario`
  , `Trimestre`
  , `Ano`
FROM users_activities;

-- 111. Atividades, por usuário, nos ultimos 90 dias.
WITH users_activities AS
  (
    SELECT
      user_identity.email `Usuario`
      , action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date >= DATE_SUB(CURRENT_DATE(),90)
    GROUP BY
      `Usuario`
      , `Atividade`
      , `Data`
    ORDER BY `Data` DESC
  )
SELECT
  `Usuario`
  , `Atividade`
  ,`Quantidade`
  , `Data`
FROM user_activities;

-- 112. Total Atividades, por usuário, nos ultimos 90 dias.
WITH users_activities AS
  (
    SELECT
      user_identity.email `Usuario`
      , COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date >= DATE_SUB(CURRENT_DATE(),90)
    GROUP BY
      `Usuario`
      , `Data`
    ORDER BY `Data` DESC
  )
SELECT
  `Usuario`
  ,`Quantidade` AS `Total de atividades por usuario`
  , `Data`
FROM user_activities;


-- 113. Atividades,por usuário, por mês.
WITH user_activities AS
  (
    SELECT
      user_identity.email `Usuário`
      , action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , DATE_FORMAT(event_date, 'yyyy-MM') `Ano-Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
    GROUP BY
      `Usuário`
      ,`Atividade`
      , `Ano-Mes`
    ORDER BY `Quantidade` DESC, `Ano-Mes` DESC
  )
SELECT
  `Usuario`
  , `Atividade`
  , `Quantidade`
  , `Ano-Mes`
FROM user_activities;

-- 114. Total de atividades, por usuario, por mês
WITH user_activities AS
  (
    SELECT
      user_identity.email `Usuario`
      ,COUNT(action_name) `Quantidade`
      , DATE_FORMAT(event_date, 'yyyy-MM') `Ano-Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
    GROUP BY
     `Usuario`
      ,`Ano-Mes`
    ORDER BY `Ano-Mes` DESC
  )
SELECT
  `Usuario`
  ,`Quantidade` AS `Total de Atividades por usuario`
  , `Ano-Mes`
FROM user_activities;

-- 115. Atividades, por usuário, por semana.
WITH user_activities AS
  (
    SELECT
      user_identity.email `Usuario`
      , action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , WEEKOFYEAR(event_date) `Semana`
      , DATE_FORMAT(event_date, 'yyyy-MM') `Ano-Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
  GROUP BY
      `Usuario`
      ,`Atividade`
      , `Semana`
      , `Ano-Mes`
    ORDER BY `Quantidade` DESC, `Semana` DESC, `Ano-Mes` DESC
  )
SELECT
  `Usuario`
  ,`Atividade`
  , `Quantidade`
  , `Semana`
  , `Ano-Mes`
FROM user_activities;

-- 116. Total de atividades, por usuário, por semana.
WITH user_activities AS
  (
    SELECT
      user_identity.email `Usuario`
      , COUNT(action_name) `Quantidade`
      , WEEKOFYEAR(event_date) `Semana`
      , DATE_FORMAT(event_date, 'yyyy-MM') `Ano-Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
    GROUP BY
      `Usuario`
      ,`Semana`
      , `Ano-Mes`
    ORDER BY `Semana` DESC, `Ano-Mes` DESC
  )
SELECT
  `Usuario`
  ,`Quantidade` AS `Total de atividades por usuario`
  , `Semana`
  , `Ano-Mes`
FROM user_activities;

-- 117. Atividades, por usuário, dia.
WITH user_activities AS
  (
    SELECT
      user_identity.email `Usuario`
      , action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , event_date `Data
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
    GROUP BY
      user_identity.email `Usuario`
      ,`Atividade`
      , `Data`
    ORDER BY `Data` DESC
  )
SELECT
  `Usuario`
  ,`Atividade`
  , `Quantidade`
  , `Data
FROM user_activities;

-- 118. Total de atividades, por usuario, dia.
WITH user_activities AS
  (
    SELECT
      user_identity.email `Usuario`
      , COUNT(action_name) `Quantidade`
      , event_date `Data
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
    GROUP BY
      `Usuario`
      ,`Data`
    ORDER BY `Data` DESC
  )
SELECT
 `Quantidade` AS `Total de acessos`
  , `Data
FROM user_activities;

-- 119. Atividades, por usuário, ano atual.
WITH user_activities AS
  (
    SELECT
      user_identity.email `Usuario`
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , YEAR(event_date) `Ano`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND YEAR(event_date) = YEAR(CURRENT_DATE())
    GROUP BY
      `Usuario`
      ,`Atividade`
      , `Ano`
  )
SELECT
  `Usuario`
  , `Atividade`
  , `Quantidade`
  , `Ano`
FROM user_activities;

-- 120. Total de atividades, por usuário, ano atual.
WITH user_activities AS
  (
    SELECT
      user_identity.email `Usuario`
      , COUNT(action_name) `Quantidade`
      , YEAR(event_date) `Ano`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND YEAR(event_date) = YEAR(CURRENT_DATE())
    GROUP BY
      `Usuario`
      ,`Ano`
  )
SELECT
   `Quantidade` AS `Total de atividades por usuario`
  , `Ano`
FROM user_activities;

-- 121. Atividades, por usuário, mês atual.
WITH user_activities AS
  (
    SELECT
      user_identity.email `Usuario`
      , action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , MONTH(event_date) `Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND MONTH(event_date) = MONTH(CURRENT_DATE())
    GROUP BY
      `Usuario`  
      ,`Atividade`
      , `Mes`
  )
SELECT
  `Usuario`
  , `Atividade`
  , `Quantidade`
  , `Mes`
FROM user_activities;

-- 122. Total de atividades, por usuario, mês atual.
WITH user_activities AS
  (
    SELECT
      user_identity.email `Usuario`
      , COUNT(action_name) `Quantidade`
      , MONTH(event_date) `Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND MONTH(event_date) = MONTH(CURRENT_DATE())
    GROUP BY
      `Usuario`
      , `Mes`
  )
SELECT
  `Quantidade` AS `Total de atividades por usuario`
  , `Mes`
FROM user_activities;

-- 123. Atividades, por usuario, semana atual.
WITH activities AS
  (
    SELECT
      user_identity.email `Usuario`
      , action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , WEEKOFYEAR(event_date) `Semana`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND WEEKOFYEAR(event_date) = WEEKOFYEAR(CURRENT_DATE())
   GROUP BY
      `Usuario`
      ,`Atividade`
      , `Semana`
  )
SELECT
  `Usuario`
  ,`Atividade`
  , `Quantidade`
  , `Semana`
FROM activities;

-- 124. Total de atividades, por usuario, semana atual.
WITH user_activities AS
  (
    SELECT
      `user_identity.email `Usuario`
      , COUNT(action_name) `Quantidade`
      , WEEKOFYEAR(event_date) `Semana`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND WEEKOFYEAR(event_date) = WEEKOFYEAR(CURRENT_DATE())
   GROUP BY
      `Usuario`
      , `Semana`
  )
SELECT
  `Usuario`
  ,`Quantidade` AS `Total de atividades por usuario`
  , `Semana`
FROM user_activities;

-- 125. Atividades, por usuário, dia anterior.
WITH user_activities AS
  (
    SELECT
      user_identity.email `Usuario`
      , action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date = DATE_SUB(DAY(CURRENT_DATE(), 1)
   GROUP BY
      `Usuario`
      ,`Atividade`
      , `Data`
  )
SELECT
  `Usuario`
  , `Atividade`
  , `Quantidade`
  , `Data`
FROM user_activities;

-- 126. Total de atividades, por usuario, dia anterior.
WITH user_activities AS
  (
    SELECT
      user_identity.email `Usuario`
      , COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date = DATE_SUB(DAY(CURRENT_DATE(), 1)
     GROUP BY
      user_identity.email `Usuario`
      ,`Data`
  )
SELECT
  `Usuario`
  ,  `Quantidade` AS `Total de atividades por usuario`
  , `Data`
FROM user_activities;

-- 127. Atividades, por usuario, dia atual.
WITH user_activities AS
  (
    SELECT
      user_identity.email `Usuario`
      , action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date = CURRENT_DATE()
    GROUP BY
      `Atividade`
      , `Data`
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Data`
FROM user_activities;

-- 128. Total de atividades, por usuario, dia atual.
WITH user_activities AS
  (
    SELECT
      user_identity.email `Usuario`
      , COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date = CURRENT_DATE()
    GROUP BY
      `Usuario`
      , `Data`
  )
SELECT
  `Usuario` 
  , `Quantidade` AS `Total de atividades por usuario`
  , `Data`
FROM user_activities;

---
/* Analise de consultas realizadas, por usuário */
---

-- 129. Consultas, por usuário.
WITH users_queries AS
  (
  SELECT
    user_identity.email `Usuario`
    , action_name `Atividade`
    , COUNT(action_name) `Quantidade`
  FROM `system`.`access`.`audit`
  WHERE 
    user_identity.email RLIKE '@'
    AND action_name IN (
            'createTable',
            'commandSubmit',
            'getTable',
            'deleteTable') 
  GROUP BY
    Usuario
    , Atividade
  ORDER BY `Quantidade` DESC
  )
SELECT
  `Usuario`
  , `Atividade`
  , `Quantidade`
FROM users_queries;

-- 130. Total de Consultas, por usuário.
WITH users_queries AS
  (
  SELECT
    user_identity.email `Usuario`
    , COUNT(action_name) `Quantidade`
  FROM `system`.`access`.`audit`
  WHERE 
    user_identity.email RLIKE '@'
    AND action_name IN (
            'createTable',
            'commandSubmit',
            'getTable',
            'deleteTable') 
  GROUP BY
    `Usuario`
  ORDER BY `Quantidade` DESC
  )
SELECT
  `Usuario`
  , `Quantidade` AS `Total de consultas por usuario`
FROM users_queries;

-- 131. Consultas, por usuário, por ano
WITH users_queries AS
  (
  SELECT
    user_identity.email `Usuario`
    , action_name `Atividade`
    , COUNT(action_name) `Quantidade`
    , YEAR(event_date) `Ano`
  FROM `system`.`access`.`audit`
  WHERE 
    user_identity.email RLIKE '@'
    AND action_name IN (
            'createTable',
            'commandSubmit',
            'getTable',
            'deleteTable') 
  GROUP BY
    Usuario
    , Atividade
    , `Ano`
  ORDER BY `Ano` DESC
  )
SELECT
  `Usuario`
  , `Atividade`
  , `Quantidade`
  , `Ano`
FROM users_queries;

-- 132. Total de Consultas, por usuário, por ano
WITH users_queries AS
  (
  SELECT
    user_identity.email `Usuario`
    , COUNT(action_name) `Quantidade`
    , YEAR(event_date) `Ano`
  FROM `system`.`access`.`audit`
  WHERE 
    user_identity.email RLIKE '@'
    AND action_name IN (
            'createTable',
            'commandSubmit',
            'getTable',
            'deleteTable') 
  GROUP BY
    Usuario
    , `Ano`
  ORDER BY `Ano` DESC
  )
SELECT
  `Usuario`
  , `Quantidade` AS `Total de consultas por usuário`
  , `Ano`
FROM users_queries;

-- 133. Consultas, por usuário, por semestre
WITH users_queries AS
  (
  SELECT
    user_identity.email `Usuario`
    , action_name `Atividade`
    , COUNT(action_name) `Quantidade`
    , IF(MONTH(event_date) BETWEEN 1 AND 6, '1º Semestre', '2º Semestre') `Semestre`
    , YEAR(event_date) `Ano`
  FROM `system`.`access`.`audit`
  WHERE 
    user_identity.email RLIKE '@'
    AND action_name IN (
            'createTable',
            'commandSubmit',
            'getTable',
            'deleteTable') 
  GROUP BY
    `Usuario`
    , `Atividade`
    , `Semestre`
    , `Ano`
  ORDER BY `Ano` DESC, `Semestre` DESC
  )
SELECT
  `Usuario`
  , `Atividade`
  , `Quantidade`
  , `Semestre`
  , `Ano`
FROM users_queries;

-- 134. Total de Consultas, por usuário, por semestre
WITH users_queries AS
  (
  SELECT
    user_identity.email `Usuario`
    , COUNT(action_name) `Quantidade`
    , IF(MONTH(event_date) BETWEEN 1 AND 6, '1º Semestre', '2º Semestre') `Semestre`
    , YEAR(event_date) `Ano`
  FROM `system`.`access`.`audit`
  WHERE 
    user_identity.email RLIKE '@'
    AND action_name IN (
            'createTable',
            'commandSubmit',
            'getTable',
            'deleteTable') 
  GROUP BY
    `Usuario`
    , `Semestre`
    , `Ano`
  ORDER BY `Ano` DESC, `Semestre` DESC
  )
SELECT
  `Usuario`
  , `Quantidade` AS `Total de consultas por usuário`
  , `Semestre`
  , `Ano`
FROM users_queries;


-- 135. Consultas, por usuário, por trimestre.
WITH users_queries AS
  (
  SELECT
    user_identity.email `Usuario`
    , action_name `Atividade`
    , COUNT(action_name) `Quantidade`
    , CASE
        WHEN MONTH(event_date) BETWEEN 1 AND 3 THEN '1º Trimestre'
        WHEN MONTH(event_date) BETWEEN 4 AND 6 THEN '2º Trimestre'
        WHEN MONTH(event_date) BETWEEN 7 AND 9 THEN '3° Trimestre'
        ELSE '4º Trimestre'
        END AS `Trimestre`
    , YEAR(event_date) `Ano`
  FROM `system`.`access`.`audit`
  WHERE 
    user_identity.email RLIKE '@'
    AND action_name IN (
            'createTable',
            'commandSubmit',
            'getTable',
            'deleteTable') 
  GROUP BY
    `Usuario`
    , `Atividade`
    , `Trimestre`
    , `Ano`
  ORDER BY `Ano` DESC, `Semestre` DESC
  )
SELECT
  `Usuario`
  , `Atividade`
  , `Quantidade`
  , `Trimestre`
  , `Ano`
FROM users_queries;

-- 136. Total de Consultas, por usuário, por trimestre.
WITH users_queries AS
  (
  SELECT
    user_identity.email `Usuario`
    , COUNT(action_name) `Quantidade`
    , CASE
        WHEN MONTH(event_date) BETWEEN 1 AND 3 THEN '1º Trimestre'
        WHEN MONTH(event_date) BETWEEN 4 AND 6 THEN '2º Trimestre'
        WHEN MONTH(event_date) BETWEEN 7 AND 9 THEN '3° Trimestre'
        ELSE '4º Trimestre'
        END AS `Trimestre`
    , YEAR(event_date) `Ano`
  FROM `system`.`access`.`audit`
  WHERE 
    user_identity.email RLIKE '@'
    AND action_name IN (
            'createTable',
            'commandSubmit',
            'getTable',
            'deleteTable') 
  GROUP BY
    `Usuario`
    , `Trimestre`
    , `Ano`
  ORDER BY `Ano` DESC, `Semestre` DESC
  )
SELECT
  `Usuario`
  , `Quantidade` AS `Total de consultas por usuario`
  , `Trimestre`
  , `Ano`
FROM users_queries;

-- 137. Consultas, por usuário, nos ultimos 90 dias.
WITH users_queries AS
  (
    SELECT
      user_identity.email `Usuario`
      , action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date >= DATE_SUB(CURRENT_DATE(),90)
      AND action_name IN (
            'createTable',
            'commandSubmit',
            'getTable',
            'deleteTable') 
    GROUP BY
      `Usuario`
      , `Atividade`
      , `Data`
    ORDER BY `Data` DESC
  )
SELECT
  `Usuario`
  , `Atividade`
  ,`Quantidade`
  , `Data`
FROM user_queries;

-- 138. Total Consultas, por usuário, nos ultimos 90 dias.
WITH users_queries AS
  (
    SELECT
      user_identity.email `Usuario`
      , COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date >= DATE_SUB(CURRENT_DATE(),90)
      AND action_name IN (
            'createTable',
            'commandSubmit',
            'getTable',
            'deleteTable') 
    GROUP BY
      `Usuario`
      , `Data`
    ORDER BY `Data` DESC
  )
SELECT
  `Usuario`
  ,`Quantidade` AS `Total de consultas por usuario`
  , `Data`
FROM user_queries;


-- 139. Consultas,por usuário, por mês.
WITH user_queries AS
  (
    SELECT
      user_identity.email `Usuário`
      , action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , DATE_FORMAT(event_date, 'yyyy-MM') `Ano-Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN (
            'createTable',
            'commandSubmit',
            'getTable',
            'deleteTable') 
    GROUP BY
      `Usuário`
      ,`Atividade`
      , `Ano-Mes`
    ORDER BY `Quantidade` DESC, `Ano-Mes` DESC
  )
SELECT
  `Usuario`
  , `Atividade`
  , `Quantidade`
  , `Ano-Mes`
FROM user_queries;

-- 140. Total de consultas, por usuario, por mês
WITH user_queries AS
  (
    SELECT
      user_identity.email `Usuario`
      ,COUNT(action_name) `Quantidade`
      , DATE_FORMAT(event_date, 'yyyy-MM') `Ano-Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN (
            'createTable',
            'commandSubmit',
            'getTable',
            'deleteTable') 
    GROUP BY
     `Usuario`
      ,`Ano-Mes`
    ORDER BY `Ano-Mes` DESC
  )
SELECT
  `Usuario`
  ,`Quantidade` AS `Total de Consultas por usuario`
  , `Ano-Mes`
FROM user_queries;

-- 141. Consultas, por usuário, por semana.
WITH user_queries AS
  (
    SELECT
      user_identity.email `Usuario`
      , action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , WEEKOFYEAR(event_date) `Semana`
      , DATE_FORMAT(event_date, 'yyyy-MM') `Ano-Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN (
            'createTable',
            'commandSubmit',
            'getTable',
            'deleteTable') 
  GROUP BY
      `Usuario`
      ,`Atividade`
      , `Semana`
      , `Ano-Mes`
    ORDER BY `Quantidade` DESC, `Semana` DESC, `Ano-Mes` DESC
  )
SELECT
  `Usuario`
  ,`Atividade`
  , `Quantidade`
  , `Semana`
  , `Ano-Mes`
FROM user_queries;

-- 142. Total de consultas, por usuário, por semana.
WITH user_queries AS
  (
    SELECT
      user_identity.email `Usuario`
      , COUNT(action_name) `Quantidade`
      , WEEKOFYEAR(event_date) `Semana`
      , DATE_FORMAT(event_date, 'yyyy-MM') `Ano-Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN (
            'createTable',
            'commandSubmit',
            'getTable',
            'deleteTable') 
    GROUP BY
      `Usuario`
      ,`Semana`
      , `Ano-Mes`
    ORDER BY `Semana` DESC, `Ano-Mes` DESC
  )
SELECT
  `Usuario`
  ,`Quantidade` AS `Total de consultas por usuario`
  , `Semana`
  , `Ano-Mes`
FROM user_queries;

-- 143. Consultas, por usuário, dia.
WITH user_queries AS
  (
    SELECT
      user_identity.email `Usuario`
      , action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , event_date `Data
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN (
            'createTable',
            'commandSubmit',
            'getTable',
            'deleteTable') 
    GROUP BY
      user_identity.email `Usuario`
      ,`Atividade`
      , `Data`
    ORDER BY `Data` DESC
  )
SELECT
  `Usuario`
  ,`Atividade`
  , `Quantidade`
  , `Data
FROM user_queries;

-- 144. Total de consultas, por usuario, dia.
WITH user_queries AS
  (
    SELECT
      user_identity.email `Usuario`
      , COUNT(action_name) `Quantidade`
      , event_date `Data
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN (
            'createTable',
            'commandSubmit',
            'getTable',
            'deleteTable') 
    GROUP BY
      `Usuario`
      ,`Data`
    ORDER BY `Data` DESC
  )
SELECT
 `Quantidade` AS `Total de acessos`
  , `Data
FROM user_queries;

-- 145. Consultas, por usuário, ano atual.
WITH user_queries AS
  (
    SELECT
      user_identity.email `Usuario`
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , YEAR(event_date) `Ano`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND YEAR(event_date) = YEAR(CURRENT_DATE())
      AND action_name IN (
            'createTable',
            'commandSubmit',
            'getTable',
            'deleteTable') 
    GROUP BY
      `Usuario`
      ,`Atividade`
      , `Ano`
  )
SELECT
  `Usuario`
  , `Atividade`
  , `Quantidade`
  , `Ano`
FROM user_queries;

-- 146. Total de consultas, por usuário, ano atual.
WITH user_queries AS
  (
    SELECT
      user_identity.email `Usuario`
      , COUNT(action_name) `Quantidade`
      , YEAR(event_date) `Ano`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND YEAR(event_date) = YEAR(CURRENT_DATE())
      AND action_name IN (
            'createTable',
            'commandSubmit',
            'getTable',
            'deleteTable') 
    GROUP BY
      `Usuario`
      ,`Ano`
  )
SELECT
   `Quantidade` AS `Total de consultas por usuario`
  , `Ano`
FROM user_queries;

-- 147. Consultas, por usuário, mês atual.
WITH user_queries AS
  (
    SELECT
      user_identity.email `Usuario`
      , action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , MONTH(event_date) `Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND MONTH(event_date) = MONTH(CURRENT_DATE())
      AND action_name IN (
            'createTable',
            'commandSubmit',
            'getTable',
            'deleteTable') 
    GROUP BY
      `Usuario`  
      ,`Atividade`
      , `Mes`
  )
SELECT
  `Usuario`
  , `Atividade`
  , `Quantidade`
  , `Mes`
FROM user_queries;

-- 148. Total de consultas, por usuario, mês atual.
WITH user_queries AS
  (
    SELECT
      user_identity.email `Usuario`
      , COUNT(action_name) `Quantidade`
      , MONTH(event_date) `Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND MONTH(event_date) = MONTH(CURRENT_DATE())
      AND action_name IN (
            'createTable',
            'commandSubmit',
            'getTable',
            'deleteTable') 
    GROUP BY
      `Usuario`
      , `Mes`
  )
SELECT
  `Quantidade` AS `Total de consultas por usuario`
  , `Mes`
FROM user_queries;

-- 149. Consultas, por usuario, semana atual.
WITH queries AS
  (
    SELECT
      user_identity.email `Usuario`
      , action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , WEEKOFYEAR(event_date) `Semana`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND WEEKOFYEAR(event_date) = WEEKOFYEAR(CURRENT_DATE())
      AND action_name IN (
            'createTable',
            'commandSubmit',
            'getTable',
            'deleteTable') 
   GROUP BY
      `Usuario`
      ,`Atividade`
      , `Semana`
  )
SELECT
  `Usuario`
  ,`Atividade`
  , `Quantidade`
  , `Semana`
FROM queries;

-- 150. Total de consultas, por usuario, semana atual.
WITH user_queries AS
  (
    SELECT
      `user_identity.email `Usuario`
      , COUNT(action_name) `Quantidade`
      , WEEKOFYEAR(event_date) `Semana`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND WEEKOFYEAR(event_date) = WEEKOFYEAR(CURRENT_DATE())
      AND action_name IN (
            'createTable',
            'commandSubmit',
            'getTable',
            'deleteTable') 
   GROUP BY
      `Usuario`
      , `Semana`
  )
SELECT
  `Usuario`
  ,`Quantidade` AS `Total de consultas por usuario`
  , `Semana`
FROM user_queries;

-- 151. Consultas, por usuário, dia anterior.
WITH user_queries AS
  (
    SELECT
      user_identity.email `Usuario`
      , action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date = DATE_SUB(DAY(CURRENT_DATE(), 1)
      AND action_name IN (
            'createTable',
            'commandSubmit',
            'getTable',
            'deleteTable') 
   GROUP BY
      `Usuario`
      ,`Atividade`
      , `Data`
  )
SELECT
  `Usuario`
  , `Atividade`
  , `Quantidade`
  , `Data`
FROM user_queries;

-- 152. Total de consultas, por usuario, dia anterior.
WITH user_queries AS
  (
    SELECT
      user_identity.email `Usuario`
      , COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date = DATE_SUB(DAY(CURRENT_DATE(), 1)
      AND action_name IN (
            'createTable',
            'commandSubmit',
            'getTable',
            'deleteTable') 
     GROUP BY
      user_identity.email `Usuario`
      ,`Data`
  )
SELECT
  `Usuario`
  ,  `Quantidade` AS `Total de consultas por usuario`
  , `Data`
FROM user_queries;

-- 153. Consultas, por usuario, dia atual.
WITH user_queries AS
  (
    SELECT
      user_identity.email `Usuario`
      , action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date = CURRENT_DATE()
      AND action_name IN (
            'createTable',
            'commandSubmit',
            'getTable',
            'deleteTable') 
    GROUP BY
      `Atividade`
      , `Data`
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Data`
FROM user_queries;

-- 154. Total de consultas, por usuario, dia atual.
WITH user_queries AS
  (
    SELECT
      user_identity.email `Usuario`
      , COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date = CURRENT_DATE()
      AND action_name IN (
            'createTable',
            'commandSubmit',
            'getTable',
            'deleteTable') 
    GROUP BY
      `Usuario`
      , `Data`
  )
SELECT
  `Usuario` 
  , `Quantidade` AS `Total de consultas por usuario`
  , `Data`
FROM user_queries;

---
/* Analise de acessos, por usuário */
---

-- 155. Acessos, por usuário.
WITH users_access AS
  (
  SELECT
    user_identity.email `Usuario`
    , action_name `Atividade`
    , COUNT(action_name) `Quantidade`
  FROM `system`.`access`.`audit`
  WHERE 
    user_identity.email RLIKE '@'
    AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
  GROUP BY
    Usuario
    , Atividade
  ORDER BY `Quantidade` DESC
  )
SELECT
  `Usuario`
  , `Atividade`
  , `Quantidade`
FROM users_access;

-- 156. Total de Acessos, por usuário.
WITH users_access AS
  (
  SELECT
    user_identity.email `Usuario`
    , COUNT(action_name) `Quantidade`
  FROM `system`.`access`.`audit`
  WHERE 
    user_identity.email RLIKE '@'
    AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
  GROUP BY
    `Usuario`
  ORDER BY `Quantidade` DESC
  )
SELECT
  `Usuario`
  , `Quantidade` AS `Total de acessos por usuario`
FROM users_access;

-- 157. Acessos, por usuário, por ano
WITH users_access AS
  (
  SELECT
    user_identity.email `Usuario`
    , action_name `Atividade`
    , COUNT(action_name) `Quantidade`
    , YEAR(event_date) `Ano`
  FROM `system`.`access`.`audit`
  WHERE 
    user_identity.email RLIKE '@'
    AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
  GROUP BY
    Usuario
    , Atividade
    , `Ano`
  ORDER BY `Ano` DESC
  )
SELECT
  `Usuario`
  , `Atividade`
  , `Quantidade`
  , `Ano`
FROM users_access;

-- 158. Total de Acessos, por usuário, por ano
WITH users_access AS
  (
  SELECT
    user_identity.email `Usuario`
    , COUNT(action_name) `Quantidade`
    , YEAR(event_date) `Ano`
  FROM `system`.`access`.`audit`
  WHERE 
    user_identity.email RLIKE '@'
    AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
  GROUP BY
    Usuario
    , `Ano`
  ORDER BY `Ano` DESC
  )
SELECT
  `Usuario`
  , `Quantidade` AS `Total de acessos por usuário`
  , `Ano`
FROM users_access;

-- 159. Acessos, por usuário, por semestre
WITH users_access AS
  (
  SELECT
    user_identity.email `Usuario`
    , action_name `Atividade`
    , COUNT(action_name) `Quantidade`
    , IF(MONTH(event_date) BETWEEN 1 AND 6, '1º Semestre', '2º Semestre') `Semestre`
    , YEAR(event_date) `Ano`
  FROM `system`.`access`.`audit`
  WHERE 
    user_identity.email RLIKE '@'
    AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
  GROUP BY
    `Usuario`
    , `Atividade`
    , `Semestre`
    , `Ano`
  ORDER BY `Ano` DESC, `Semestre` DESC
  )
SELECT
  `Usuario`
  , `Atividade`
  , `Quantidade`
  , `Semestre`
  , `Ano`
FROM users_access;

-- 160. Total de Acessos, por usuário, por semestre
WITH users_access AS
  (
  SELECT
    user_identity.email `Usuario`
    , COUNT(action_name) `Quantidade`
    , IF(MONTH(event_date) BETWEEN 1 AND 6, '1º Semestre', '2º Semestre') `Semestre`
    , YEAR(event_date) `Ano`
  FROM `system`.`access`.`audit`
  WHERE 
    user_identity.email RLIKE '@'
    AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode') 
  GROUP BY
    `Usuario`
    , `Semestre`
    , `Ano`
  ORDER BY `Ano` DESC, `Semestre` DESC
  )
SELECT
  `Usuario`
  , `Quantidade` AS `Total de acessos por usuário`
  , `Semestre`
  , `Ano`
FROM users_access;

-- 161. Acessos, por usuário, por trimestre.
WITH users_access AS
  (
  SELECT
    user_identity.email `Usuario`
    , action_name `Atividade`
    , COUNT(action_name) `Quantidade`
    , CASE
        WHEN MONTH(event_date) BETWEEN 1 AND 3 THEN '1º Trimestre'
        WHEN MONTH(event_date) BETWEEN 4 AND 6 THEN '2º Trimestre'
        WHEN MONTH(event_date) BETWEEN 7 AND 9 THEN '3° Trimestre'
        ELSE '4º Trimestre'
        END AS `Trimestre`
    , YEAR(event_date) `Ano`
  FROM `system`.`access`.`audit`
  WHERE 
    user_identity.email RLIKE '@'
    AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
  GROUP BY
    `Usuario`
    , `Atividade`
    , `Trimestre`
    , `Ano`
  ORDER BY `Ano` DESC, `Semestre` DESC
  )
SELECT
  `Usuario`
  , `Atividade`
  , `Quantidade`
  , `Trimestre`
  , `Ano`
FROM users_access;

-- 162. Total de Acessos, por usuário, por trimestre.
WITH users_access AS
  (
  SELECT
    user_identity.email `Usuario`
    , COUNT(action_name) `Quantidade`
    , CASE
        WHEN MONTH(event_date) BETWEEN 1 AND 3 THEN '1º Trimestre'
        WHEN MONTH(event_date) BETWEEN 4 AND 6 THEN '2º Trimestre'
        WHEN MONTH(event_date) BETWEEN 7 AND 9 THEN '3° Trimestre'
        ELSE '4º Trimestre'
        END AS `Trimestre`
    , YEAR(event_date) `Ano`
  FROM `system`.`access`.`audit`
  WHERE 
    user_identity.email RLIKE '@'
    AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
  GROUP BY
    `Usuario`
    , `Trimestre`
    , `Ano`
  ORDER BY `Ano` DESC, `Semestre` DESC
  )
SELECT
  `Usuario`
  , `Quantidade` AS `Total de acessos por usuario`
  , `Trimestre`
  , `Ano`
FROM users_access;

-- 163. Acessos, por usuário, nos ultimos 90 dias.
WITH users_access AS
  (
    SELECT
      user_identity.email `Usuario`
      , action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date >= DATE_SUB(CURRENT_DATE(),90)
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
    GROUP BY
      `Usuario`
      , `Atividade`
      , `Data`
    ORDER BY `Data` DESC
  )
SELECT
  `Usuario`
  , `Atividade`
  ,`Quantidade`
  , `Data`
FROM user_access;

-- 164. Total Acessos, por usuário, nos ultimos 90 dias.
WITH users_access AS
  (
    SELECT
      user_identity.email `Usuario`
      , COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date >= DATE_SUB(CURRENT_DATE(),90)
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
    GROUP BY
      `Usuario`
      , `Data`
    ORDER BY `Data` DESC
  )
SELECT
  `Usuario`
  ,`Quantidade` AS `Total de acessos por usuario`
  , `Data`
FROM user_access;

-- 165. Acessos,por usuário, por mês.
WITH user_access AS
  (
    SELECT
      user_identity.email `Usuário`
      , action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , DATE_FORMAT(event_date, 'yyyy-MM') `Ano-Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
    GROUP BY
      `Usuário`
      ,`Atividade`
      , `Ano-Mes`
    ORDER BY `Quantidade` DESC, `Ano-Mes` DESC
  )
SELECT
  `Usuario`
  , `Atividade`
  , `Quantidade`
  , `Ano-Mes`
FROM user_access;

-- 166. Total de acessos, por usuario, por mês
WITH user_access AS
  (
    SELECT
      user_identity.email `Usuario`
      ,COUNT(action_name) `Quantidade`
      , DATE_FORMAT(event_date, 'yyyy-MM') `Ano-Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
    GROUP BY
     `Usuario`
      ,`Ano-Mes`
    ORDER BY `Ano-Mes` DESC
  )
SELECT
  `Usuario`
  ,`Quantidade` AS `Total de Acessos por usuario`
  , `Ano-Mes`
FROM user_access;

-- 167. Acessos, por usuário, por semana.
WITH user_access AS
  (
    SELECT
      user_identity.email `Usuario`
      , action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , WEEKOFYEAR(event_date) `Semana`
      , DATE_FORMAT(event_date, 'yyyy-MM') `Ano-Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
  GROUP BY
      `Usuario`
      ,`Atividade`
      , `Semana`
      , `Ano-Mes`
    ORDER BY `Quantidade` DESC, `Semana` DESC, `Ano-Mes` DESC
  )
SELECT
  `Usuario`
  ,`Atividade`
  , `Quantidade`
  , `Semana`
  , `Ano-Mes`
FROM user_access;

-- 168. Total de acessos, por usuário, por semana.
WITH user_access AS
  (
    SELECT
      user_identity.email `Usuario`
      , COUNT(action_name) `Quantidade`
      , WEEKOFYEAR(event_date) `Semana`
      , DATE_FORMAT(event_date, 'yyyy-MM') `Ano-Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
    GROUP BY
      `Usuario`
      ,`Semana`
      , `Ano-Mes`
    ORDER BY `Semana` DESC, `Ano-Mes` DESC
  )
SELECT
  `Usuario`
  ,`Quantidade` AS `Total de acessos por usuario`
  , `Semana`
  , `Ano-Mes`
FROM user_access;

-- 169. Acessos, por usuário, dia.
WITH user_access AS
  (
    SELECT
      user_identity.email `Usuario`
      , action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , event_date `Data
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
    GROUP BY
      user_identity.email `Usuario`
      ,`Atividade`
      , `Data`
    ORDER BY `Data` DESC
  )
SELECT
  `Usuario`
  ,`Atividade`
  , `Quantidade`
  , `Data
FROM user_access;

-- 170. Total de acessos, por usuario, dia.
WITH user_access AS
  (
    SELECT
      user_identity.email `Usuario`
      , COUNT(action_name) `Quantidade`
      , event_date `Data
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
    GROUP BY
      `Usuario`
      ,`Data`
    ORDER BY `Data` DESC
  )
SELECT
 `Quantidade` AS `Total de acessos`
  , `Data
FROM user_access;

-- 171. Acessos, por usuário, ano atual.
WITH user_access AS
  (
    SELECT
      user_identity.email `Usuario`
      action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , YEAR(event_date) `Ano`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND YEAR(event_date) = YEAR(CURRENT_DATE())
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
    GROUP BY
      `Usuario`
      ,`Atividade`
      , `Ano`
  )
SELECT
  `Usuario`
  , `Atividade`
  , `Quantidade`
  , `Ano`
FROM user_access;

-- 172. Total de acessos, por usuário, ano atual.
WITH user_access AS
  (
    SELECT
      user_identity.email `Usuario`
      , COUNT(action_name) `Quantidade`
      , YEAR(event_date) `Ano`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AAND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
    GROUP BY
      `Usuario`
      ,`Ano`
  )
SELECT
   `Quantidade` AS `Total de acessos por usuario`
  , `Ano`
FROM user_access;

-- 173. Acessos, por usuário, mês atual.
WITH user_access AS
  (
    SELECT
      user_identity.email `Usuario`
      , action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , MONTH(event_date) `Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND MONTH(event_date) = MONTH(CURRENT_DATE())
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
    GROUP BY
      `Usuario`  
      ,`Atividade`
      , `Mes`
  )
SELECT
  `Usuario`
  , `Atividade`
  , `Quantidade`
  , `Mes`
FROM user_access;

-- 174. Total de acessos, por usuario, mês atual.
WITH user_access AS
  (
    SELECT
      user_identity.email `Usuario`
      , COUNT(action_name) `Quantidade`
      , MONTH(event_date) `Mes`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND MONTH(event_date) = MONTH(CURRENT_DATE())
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
    GROUP BY
      `Usuario`
      , `Mes`
  )
SELECT
  `Quantidade` AS `Total de acessos por usuario`
  , `Mes`
FROM user_access;

-- 175. Acessos, por usuario, semana atual.
WITH access AS
  (
    SELECT
      user_identity.email `Usuario`
      , action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , WEEKOFYEAR(event_date) `Semana`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND WEEKOFYEAR(event_date) = WEEKOFYEAR(CURRENT_DATE())
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
   GROUP BY
      `Usuario`
      ,`Atividade`
      , `Semana`
  )
SELECT
  `Usuario`
  ,`Atividade`
  , `Quantidade`
  , `Semana`
FROM access;

-- 176. Total de acessos, por usuario, semana atual.
WITH user_access AS
  (
    SELECT
      `user_identity.email `Usuario`
      , COUNT(action_name) `Quantidade`
      , WEEKOFYEAR(event_date) `Semana`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND WEEKOFYEAR(event_date) = WEEKOFYEAR(CURRENT_DATE())
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
   GROUP BY
      `Usuario`
      , `Semana`
  )
SELECT
  `Usuario`
  ,`Quantidade` AS `Total de acessos por usuario`
  , `Semana`
FROM user_access;

-- 177. Acessos, por usuário, dia anterior.
WITH user_access AS
  (
    SELECT
      user_identity.email `Usuario`
      , action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date = DATE_SUB(DAY(CURRENT_DATE(), 1)
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
   GROUP BY
      `Usuario`
      ,`Atividade`
      , `Data`
  )
SELECT
  `Usuario`
  , `Atividade`
  , `Quantidade`
  , `Data`
FROM user_access;

-- 178. Total de acessos, por usuario, dia anterior.
WITH user_access AS
  (
    SELECT
      user_identity.email `Usuario`
      , COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date = DATE_SUB(DAY(CURRENT_DATE(), 1)
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
     GROUP BY
      user_identity.email `Usuario`
      ,`Data`
  )
SELECT
  `Usuario`
  ,  `Quantidade` AS `Total de acessos por usuario`
  , `Data`
FROM user_access;

-- 179. Acessos, por usuario, dia atual.
WITH user_access AS
  (
    SELECT
      user_identity.email `Usuario`
      , action_name `Atividade`
      , COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date = CURRENT_DATE()
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
    GROUP BY
      `Atividade`
      , `Data`
  )
SELECT
  `Atividade`
  , `Quantidade`
  , `Data`
FROM user_access;

-- 180. Total de acessos, por usuario, dia atual.
WITH user_access AS
  (
    SELECT
      user_identity.email `Usuario`
      , COUNT(action_name) `Quantidade`
      , event_date `Data`
    FROM `system`.`access`.`audit`
    WHERE
      user_identity.email  RLIKE '@'
      AND event_date = CURRENT_DATE()
      AND action_name IN(
          'workspaceInHouseOAuthClientAuthentication'
          , 'mintOAuthToken'
          , 'mintOAuthAuthorizationCode')
    GROUP BY
      `Usuario`
      , `Data`
  )
SELECT
  `Usuario` 
  , `Quantidade` AS `Total de acessos por usuario`
  , `Data`
FROM user_access;



---
/*
Analise de grupos de usuários por período 
Analise de grupos de usuários x atividade
Analise de grupos de usuário x consulta
Analise de grupos de usuário x acessos

Análise de objetos (uso)
Análise de custos - por usuário, atividade
Analise de DBU
Análise de objetos (conformidade)
  WHERE sua_coluna RLIKE '[A-Z]' -- campos com letras maiusculas (Descrição de schemas, tabelas e colunas)
*/

/* filtros
ano
s - MAX(event_date)
g - YEAR(event_date)
--
semestre
s - case when month(event_date) between 1 and 6 them '1º semestre'
  -      when month (event_date) between 7 and 12 then 2º semestre'
g - usuario, semestre e ano
ob - ano desc
--
trimestre repete
-- 
ultimos 3 meses
f - event_date >= SUB_MONTHS(Current_date(), -3)
--
Ativos por mês
s - DATE_FORMAT(event_date, 'yyyy-MM') `Ano_mes`
--
Semana repete
--

Analise de usuarios
1. usuarios distintos
2. total de usuarios distintos
3. usuarios distintos por ano
4. total de usuarios distintos por ano
5. usuarios distintos por semestre
6. total de usuarios distintos por semestre
7. usuarios distintos por trimestre
8. total de usuarios distintos por trimestre
9. usuarios distintos nos ultimos 90 dias
10. total de usuarios distintos nos ultimos 90 dias
11. usuarios distintos por bimestre **
12. total de usuarios distintos por bimestre **
13. usuarios distintos por mes
14. total de usuarios distintos por mes
15. usuarios distintos por semana, por mês
16. total de usuarios distintos por semana, por mês
17. usuarios distintos nos ultimos 7 dias
18. total de usuarios distintos nos ultimos 7 dias
19. usuarios distintos por semana, no mês atual
20. total de usuarios distintos por semana, no mês atual
21. usuarios distintos ontem.
22. total de usuarios distintos ontem.
23. usuarios distintos hoje.
24. total de usuarios distintos hoje;

: equipes de usuario, distribuição unindo todos os grupos, depois perguntas individuais
: analise de atividades, particionar por usuarios, por periodo e por tempo
: analise de atividades x usuario
: analise de atividades x equipes de usuario
: '' consultas, repetir as 3 anteriores
*/
