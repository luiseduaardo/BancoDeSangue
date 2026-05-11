/*
 * GROUP BY
 *
 * Usos:
 * 1. Agrupa os registros de hemocomponentes pelo tipo sanguíneo e calcule a 
 *    soma total do volume disponível para cada tipo.
 * 2. Calcula quantas triagens cada colaborador realizou no total.
 */
 
 SELECT tipo_sanguineo, SUM(volume) AS volume_total
 FROM HEMOCOMPONENTE
 GROUP BY tipo_sanguineo
 ORDER BY volume_total DESC;
 
 SELECT cpf_funcionario, COUNT(*) AS qtd_triagem
 FROM TRIA
 GROUP BY cpf_funcionario;