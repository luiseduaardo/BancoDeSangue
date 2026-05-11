/*
 * UNION, INTERSECT, MINUS
 *
 * Usos:
 * 1. Realize uma consulta que junte em uma única exibição todos
 *    os CPFs de doadores e todos os CNPJs de hemocentros.
 * 2. Identifique as pessoas que estão cadastradas simultaneamente como 
 *    funcionários do banco de sangue e como doadores ativos.
 * 3. Identifique as pessoas que são doadoras, mas ainda não realizaram doação.
 */

(SELECT cpf AS cpf_cnpj FROM DOADOR)
    UNION
(SELECT cnpj FROM HEMOCENTRO);

(SELECT cpf FROM FUNCIONARIO)
    INTERSECT
(SELECT cpf FROM DOADOR);

(SELECT cpf FROM DOADOR)
    MINUS
(SELECT cpf_doador FROM DOACAO);