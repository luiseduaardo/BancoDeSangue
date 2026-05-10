/*
 * MIN
 *
 * Usos:
 * 1. Imprima a data da doação mais antiga registrada.
 * 2. Imprima a menor capacidade de armazenamento dos hemocentros registrados.
 * 3. Imprima a menor altura entre os doadores que nasceram em Pernambuco.
 */

SELECT MIN(data_coleta) FROM Doacao;

SELECT MIN(capacidade) FROM Hemocentro;

SELECT MIN(altura) FROM Doador WHERE naturalidade_estado = 'PE';