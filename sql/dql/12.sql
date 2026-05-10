/*
Realize uma consulta que junte em uma única exibição todos os CPFs 
de doadores e todos os CNPJs de hemocentros.
*/

(SELECT cpf AS cpf_cnpj FROM DOADOR)
    UNION
(SELECT cnpj FROM HEMOCENTRO)