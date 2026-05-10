/*
 * CREATE VIEW
 *
 * Usos:
 * 1. Cria uma View que mostre o código do hemocomponente, o tipo sanguíneo e a 
 *    data de validade, ordenados da validade mais recente para a mais antiga. 
 */

CREATE VIEW hemocomponente_validade AS
    SELECT codigo, tipo_sanguineo, validade FROM HEMOCOMPONENTE
    ORDER BY validade DESC;
