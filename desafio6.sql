SELECT 
    MIN(valor_plano) AS faturamento_minimo,
    MAX(valor_plano) AS faturamento_maximo,
	ROUND(AVG(valor_plano), 2) AS faturamento_medio,
    SUM(valor_plano) AS faturamento_total
FROM
    SpotifyClone.planos
INNER JOIN SpotifyClone.dados_usuario ON planos.id_plano = dados_usuario.id_plano;