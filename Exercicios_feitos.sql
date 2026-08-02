# 1)Uma lista com o nome de todas as gafanhotas.

select * from gafanhotos where sexo = "F";

# 2)Uma lista com os dados de todos que nasceram entre 01/01/2000 e 31/12/2015.

select * from gafanhotos where nascimento between "2000-01-01" and "2015-12-31";

# 3)Uma lista com o nome de todos os homens que são programadores.

select * from gafanhotos where sexo = "M" AND profissao = "Programador";

# 4)Uma lista com os dados de todas as mulheres que nasceram no Brasil e o nome começa com "J".

select * from gafanhotos where sexo = "F" and nacionalidade = "Brasil" and nome like "J%";

# 5)Uma lista com o nome e a nacionalidade de todos os homens que tem "Silva" no nome, não nasceram no Brasil e pesam menos de 100kg.

select nome, nacionalidade, peso from gafanhotos where sexo = "M" and nome like "%Silva%" and nacionalidade <> "Brasil" and peso < "100";

# 6)Qual é a maior altura de homens que moram no Brasil?

select max(altura) from gafanhotos where sexo = "M" and nacionalidade = "Brasil";

# 7)Qual é a média de peso dos gafanhotos cadastrados?

select avg(peso) from gafanhotos;

# 8)Qual é o menor peso entre mulheres que nasceram fora do Brasil e entre 01/01/1990 e 31/12/2000?

select min(peso) from gafanhotos where sexo = "F" and nacionalidade <> "Brasil" and nascimento between "1990-01-01" and "2000-12-31";

# 9)Quantas mulheres têm mais de 1,90m de altura?

select count(altura) from gafanhotos where sexo = "F" and altura > "1.90";

# 10) Uma lista com as profissões dos gafanhotos e seus respectivos quantitativos.

select profissao, count(*) from gafanhotos group by profissao order by profissao;

# 11) Quantos gafanhotos homens e quantas mulheres nasceram após 01/01/2005 ?

select sexo, count(*) from gafanhotos where nascimento > "2005-01-01" group by sexo;

# 12) Uma lista com os gafanhotos que nasceram fora do Brasil, mostrando o país de
# origem e o total de pessoas nascidas lá. Só nos interessam os países que tiveram
# mais de 3 gafanhotos com essa nacionalidade.

select nacionalidade, count(*) from gafanhotos where nacionalidade <> "Brasil" group by nacionalidade having count(nacionalidade) >= "3";

# 13)Uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas pesam
# mais de 100Kg e que estão acima da média de altura de todos os cadastrados.

select altura, count(*) from gafanhotos where peso > "100" group by altura having altura > (select avg(altura) from gafanhotos);

