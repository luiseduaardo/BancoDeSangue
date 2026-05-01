mudanças ao passar pro sql:
em triagem, pressão sistólica e diastólica foram separados

possíveis mudanças (ponderar em grupo):
- em doador, juntar abo e rh em doador como varchar2 (3)
- em medicacoes_triagem, separar dose em quantidade, medida e frequência
- em tria, juntar dia mês e ano da triagem como um só date (mesma coisa pra Doação)

outras observações
- em funcionário, verificar se status é uma keyword que não pode ser nomeada como atributo
- adicionar constraints (verificar regras de negócio)
ex: em doador, verificar o peso específico
