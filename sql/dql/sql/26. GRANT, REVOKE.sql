/*
 * GRANT, REVOKE
 *
 * Usos:
 * 1. Concede todos os privilégios de acesso na view "Hemocomponente_validade".
 * 2. Revoga a permissão de inserção na tabela Pessoa para usuários gerais.
 */

/*
Comandos de GRANT e REVOKE comentados para o script rodar no Oracle Live SQL

GRANT ALL PRIVILEGES ON hemocomponente_validade TO user2
    - libera todos os privilégios (INSERT, SELECT, UPDATE, DELETE, etc.) da
    view criada para o usuário user2

REVOKE INSERT ON PESSOA TO PUBLIC
    - cancela a permissão de INSERT sobre a tabela de PESSOA para todos os
    usuários de um sistema (PUBLIC)
*/