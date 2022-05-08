SELECT 
  	MIN(P.plan_value) AS faturamento_minimo,
    MAX(P.plan_value) AS faturamento_maximo,
    ROUND(AVG(P.plan_value), 2) AS faturamento_medio,
    ROUND(SUM(P.plan_value), 2) AS faturamento_total
FROM SpotifyClone.plans AS P, SpotifyClone.users_plans AS UP
WHERE P.plan_id = UP.plan_id;