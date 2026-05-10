/*
 * SELECT-FROM-WHERE
 *
 * Usos:
 * 1. Selecione o nome e salário de todos os cargos registrados.
 * 2. Selecione o cargo e o turno de todo funcionário ativo.
 * 3. Selecione o componente, tipo sanguíneo e validade de 
 *    todos os hemocomponentes com volume maior que 200.
 */

SELECT nome_cargo, salario FROM Cargo;

SELECT cargo, turno FROM Funcionario WHERE status = 'Ativo';

SELECT componente, tipo_sanguineo, validade FROM HEMOCOMPONENTE WHERE volume > 200;