/*
 * CREATE INDEX
 *
 * Usos:
 * 1. Cria um índice para otimizar as buscas feitas pela coluna "tipo_sanguineo" na tabela Hemocomponente.
 */

CREATE INDEX indice_tipo_sanguineo ON
Hemocomponente(tipo_sanguineo);