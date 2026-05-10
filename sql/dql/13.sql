/*
Crie uma View que mostre o código do hemocomponente, o tipo sanguíneo e a 
data de validade, ordenados da validade mais recente para a mais antiga. 

Por fim, escreva as linhas de comando para conceder e revogar todas algumas 
nesta view e sob outras tabelas.
*/

CREATE VIEW hemocomponente_validade AS
    SELECT codigo, tipo_sanguineo, validade
    FROM HEMOCOMPONENTE
    ORDER BY validade DESC

/*

Comandos de GRANT e REVOKE comentados para o script rodar no Oracle Live SQL

GRANT ALL PRIVILEGES ON hemocomponente_validade TO user2
    - libera todos os privilégios (INSERT, SELECT, UPDATE, DELETE, etc.) da
    view criada para o usuário user2

REVOKE INSERT ON PESSOA TO PUBLIC
    - cancela a permissão de INSERT sobre a tabela de PESSOA para todos os
    usuários de um sistema (PUBLIC)

*/