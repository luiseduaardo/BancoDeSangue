mudanças realizadas

1. em Triagem, pressão sistólica e diastólica foram separados em dois NUMBER (3)
2. em Pessoa, data de nascimento virou um atributo de tipo DATE (dia, mês e ano aglutinados)
3. em Tria, data da triagem virou um atributo de tipo DATE (dia, mês e ano aglutinados)
4. para garantir a consistência, em Doador o ABO e RH foram aglutinados no atributo tipo_sanguineo (já havíamos considerado em Hemocomponente o tipo sanguíneo junto)
5. em Hemocomponente, data_processamento foi aglutinado em um atributo de tipo DATE
6. em Doação, data_coleta foi aglutinado em um atributo de tipo DATE

mudança a se analisar:
* para respeitar a regra de negócio e facilitar o uso prático do BD, em Medicações_Triagem, dose vira um atributo composto por quantidade (inteiro), unidade (varchar) e frequência (varchar)
* problema: provavelmente gera um problema na BCFN que precisa ser verificado anteriormente