create table PontoTuristico(
idPontoTuristico int primary key,
nomePonto varchar(100) not null,
descricao varchar(8000) not null,
coordenada varchar(50) not null,
isMaravilha int not null,
anoInicioConstrucao int null,
anoFimConstrucao int null,
urlFoto varchar(2083) not null,
urlFonte varchar(2083) not null,
idPais int not null,
constraint idPais foreign key(idPais) references Pais(idPais)
)

/*
isMaravilha values
0 = não
1 = maravilhas mundo moderno
2 = maravilhas naturais
3 = maravilhas mundo antigo
*/

create table Pais_PontoTuristico(
idPais_PontoTuristico int primary key,
idPontoTuristico int not null,
constraint idPontoTuristico foreign key(idPontoTuristico) references PontoTuristico(idPontoTuristico),
idPaises int not null,
constraint idPaises foreign key(idPaises) references Pais(idPais),
continente varchar(50) not null
)

create table Pais(
idPais int primary key,
nomePais varchar(60) not null,
numHabitantes varchar(30) not null,
area int not null
)

--sp_help PontoTuristico
select * from PontoTuristico

insert into Pais values(1,  'Rússia',           '145 milhões',   17100000)
insert into Pais values(2,  'Japão',            '127 milhões',   377915)
insert into Pais values(3,  'Itália',           '60,40 milhões', 301338)
insert into Pais values(4,  'San Marino',       '34 mil',        61.2)
insert into Pais values(5,  'Suécia',           '10 milhões',    450295)
insert into Pais values(6,  'Noruega',          '5,5 milhões',   385207)
insert into Pais values(7,  'Coréia do Sul',    '52 milhões',    100210)
insert into Pais values(8,  'Mongólia',         '3,2 milhões',   1564000)
insert into Pais values(9,  'Cazaquistão',      '18,5 milhões',  2725000)
insert into Pais values(10, 'Afeganistão',      '37 milhões',    652860)
insert into Pais values(11, 'Congo',            '5,2 milhões',   2345000)
insert into Pais values(12, 'Nigéria',          '196 milhões',   923768)
insert into Pais values(13, 'Angola',           '30,8 milhões',  1247000)
insert into Pais values(14, 'Marrocos',         '36 milhões',    446550)
insert into Pais values(15, 'Líbia',            '6,7 milhões',   1760000)
insert into Pais values(16, 'Egito',            '98,5 milhões',  1010000)
insert into Pais values(17, 'Etiópia',          '110 milhões',   1104000)
insert into Pais values(18, 'Somália',          '15,01 milhões', 637655)
insert into Pais values(19, 'Ruanda',           '12,3 milhões',  26338)
insert into Pais values(20, 'Cuba',             '11,34 milhões', 109884)
insert into Pais values(21, 'França',           '66,99 milhões', 643801
insert into Pais values(22, 'Holanda',          '17,28 milhões', 41543)
insert into Pais values(23, 'Suíça',            '8,57 milhões',  41285)
insert into Pais values(24, 'Bélgica',          '11,46 milhões', 30689)
insert into Pais values(25, 'México',           '126,2 milhões', 1973000)
insert into Pais values(26, 'Canadá',           '40 milhões',    9985000)
insert into Pais values(27, 'Estado Unidos',    '328,2 milhões', 9834000)
insert into Pais values(28, 'Panamá',           '4,177 milhões', 75517)
insert into Pais values(29, 'Caribe',           '44,42 milhões', 2754000)
insert into Pais values(30, 'Guiana',           '779 mil',       214969)
insert into Pais values(31, 'Colômbia',         '49,65 milhões', 1143000)
insert into Pais values(32, 'Bolívia',          '11,35 milhões', 1099000)
insert into Pais values(33, 'Venezuela',        '28,87 milhões', 916445)
insert into Pais values(34, 'Chile',            '18,73 milhões', 756950)
insert into Pais values(35, 'Peru',             '31,99 milhões', 1285000)
insert into Pais values(36, 'Argentina',        '44,5 milhões',  2780000)
insert into Pais values(37, 'Brasil',           '209,5 milhões', 8516000)
insert into Pais values(38, 'Inglaterra',       '56 milhões',    130395)
insert into Pais values(39, 'Escócia',          '5,5 milhões',   77910)
insert into Pais values(40, 'País de Gales',    '3 milhões',     20735)
insert into Pais values(41, 'Irlanda do Norte', '2 milhões',     14130)
insert into Pais values(42, 'Vietnã',           '95,5 milhões',  331212)
insert into Pais values(43, 'Laos',             '7 milhões',     237995)
insert into Pais values(44, 'Camboja',          '16 milhões',    181035)
insert into Pais values(45, 'Tailândia',        '69,5 milhões',  513120)
insert into Pais values(46, 'Mayanmar',         '58 milhões',    676575)
insert into Pais values(47, 'Arábia Saudita',   '34 milhões',    2150000)
insert into Pais values(48, 'Bahrein',          '1,5 milhões',   765.3)
insert into Pais values(49, 'Emirados Árabes',  '10 milhões',    83600)
insert into Pais values(50, 'Iêmen',            '28,5 milhões',  527968)
insert into Pais values(51, 'Kuwait',           '4 milhões',     17818)
insert into Pais values(52, 'Omã',              '5 milhões',     309501)
insert into Pais values(53, 'Catar',            '3 milhões',     11571)
insert into Pais values(54, 'Espanha',          '47 milhões',    505990)
insert into Pais values(55, 'Portugal',         '10 milhões',    92212)
insert into Pais values(56, 'Iraque',           '38,5 milhões',  437072)
insert into Pais values(57, 'Turquia',          '82 milhões',    783562)
insert into Pais values(58, 'Austrália',        '25 milhões',    7692000)
insert into Pais values(59, 'Nova Zelândia',    '4,8 milhões',   2680212)
insert into Pais values(60, 'Grécia',           '10,7 milhões',  131957)
insert into Pais values(61, 'África do Sul',    '57,8 milhões',  1220000)
insert into Pais values(62, 'Equador',          '17,1 milhões',  283560)
insert into Pais values(63, 'China',            '1,393 bilhão',  9597000)
insert into Pais values(64, 'Alemanha',         '83 milhões',    357386)

insert into PontoTuristico values(
1, 
'Ópera de Sydney', 
'Construção iniciada por Jørn Utzon, em 1959 e está localizada na baía de Sydney. O arquiteto da construção abandonou-a em 1966 e a obra foi inaugurada em 20 de outubro de 1973.',
'33° 51′ 24″ S, 151° 12′ 55″ L',
0, 
1959, 
1973, 
'https://upload.wikimedia.org/wikipedia/commons/8/8a/Sydney_Opera_House_from_the_east.jpg', 
'https://pt.wikipedia.org/wiki/%C3%93pera_de_Sydney',
58
)

insert into PontoTuristico values(
2, 
'Praia Whitehaven',
'Localizada na ilha de Whitsunday, é uma praia de 7 Km de extensão, conhecida pelas areias brancas e águas azuis claras. A praia foi descoberta e nomeada em 1879 pelo comandante EP Bedwell. Ganhou prêmio de praia mais limpa, não são permitidos cigarros e nem cachorros no local. A areia é 98% dióxido de silício(presente no quartzo e em alguns seres vivos), as pedras do local não são compostas de dióxido de silício então sugere-se que a areia tenha sido trazida pela água ao longo do tempo. A areia não retém tanto calor sendo fácil de andar descalço de dia, mas a área é tão fina que pode danificar eletrônicos, e também é ótima para polir jóias.',
'20° 16′ 43″ S, 149° 02′ 11″ L',
0,
null,
null,
'https://www.escolhaviajar.com/wp-content/uploads/2015/01/DSCN2972.jpg',
'https://en.wikipedia.org/wiki/Whitehaven_Beach',
58
)

insert into PontoTuristico values(
3,
'Lago Hillier',
'A cor do lago é rosa, mesmo após inserida em um copo a água ainda fica rosa, tem cerca de 600 m de comprimento e é cercado por uma borda de sal branco e uma floresta densa. Foi descoberto em 1802, pelo capitão inglês Matthew Flinders, após observar a ilha no ponto mais alto dela. A razão pela coloração ainda é desconhecida, mas suspeita-se que seja pela falta de nutrientes e o crescimento de algumas espécies específicas de algas e bactérias. A água do lago é potável. Existem outros lagos espalhados pelo mundo, apenas na Austrália existem 5.',
'34° 5′ 45″ S, 123° 12′ 10″ E',
0,
null,
null,
'https://upload.wikimedia.org/wikipedia/commons/a/a7/Lake_Hillier_2_Middle_Island_Recherche_Archipelago_NR_IV-2011.JPG',
'https://pt.wikipedia.org/wiki/Lago_Hillier',
58
)

insert into PontoTuristico values(
4,
'Sky Tower',
'Torre de comunicação e observação, inaugurado na década de 1990, possui 328 metros. Período de construção: 1994 - 1997. A torre teve q ser projetada para aguentar os fortes ventos na altitude em que se encontra, podendo chegar até 200 Km/h e também a resistir a terremotos que ocorrem ocasionalmente.',
'36° 50′ 54″ S, 174° 45′ 44″ E',
0,
1994,
1997,
'https://upload.wikimedia.org/wikipedia/commons/f/f8/01_Auckland_New_Zealand-1000137.jpg',
'https://pt.wikipedia.org/wiki/Sky_Tower',
59
)

insert into PontoTuristico values(
5,
'Waoitapu',
'São fontes termais ativas ao sul do vulcão Okataina. Possui cores bem chamativas. A área geotermal possui aproximadamente 18 Km². Antes da ocupação europeia quem morava na região era a tribo Ngati Whaoa. É protegida desde 1931 como reserva natural.',
'38° 21′ 34″ S, 176° 22′ 11″ E',
0,
null,
null,
'https://media-cdn.tripadvisor.com/media/photo-s/15/ca/a6/ea/wai-o-tapu-thermal-wonderland.jpg',
'https://en.wikipedia.org/wiki/Waiotapu',
59
)

insert into PontoTuristico values(
6,
'Instituto de Artes e Cultura Maori da Nova Zelândia',
'Aberto em 1963 em Rotorua, devido a ameaça da perda da arte tradicional Maori. Em 1926 a Escola de artes e cultura maori foi estabelecida em Rotorua por Sir Āpirana Ngata, a localização facilitou o acesso para lucrar em um mercado para turistas, vendendo aos montes. Em 1963 o local foi fundado como uma entidade legal, em 1967 passou a ser considerado um instituto nacional.',
'38° 09′ 50.1″ S 176° 15′ 01.4″ E',
0,
1926,
1963,
'https://media-cdn.tripadvisor.com/media/photo-s/0f/2c/a6/33/new-zealand-maori-arts.jpg',
'https://en.wikipedia.org/wiki/New_Zealand_M%C4%81ori_Arts_and_Crafts_Institute',
59
)

insert into PontoTuristico values(
7,
'Teatro Bolshoi',
'Foi desenhado pelo arquiteto Joseph Bové (Osip Ivanovich Bové) para abrigar espetáculos de ópera e balé. É sede da Academia Estatal de Coreografia de Moscou, também conhecida como Academia de Balé Bolshoi, Companhia de Balé Bolshoi ou simplesmente Balé Bolshoi, sendo uma das mais antigas e prestigiosas companhias de dança do mundo. Além de é possível fazer um tour guiado pelo local, para conhecer toda sua lindíssima história.',
'55° 45′ 37″ N, 37° 37′ 7″ O',
0,
null,
1776,
'https://ogimg.infoglobo.com.br/cultura/24334034-a2d-e77/FT1086A/652/bolshoi.jpg',
'https://pt.wikipedia.org/wiki/Teatro_Bolshoi',
1
)

insert into PontoTuristico values(
8,
'Museu da Guerra Fria',
'Conhecido como Bunker 42, o museu leva o visitante ao antigo bunker de Stalin,que fica cerca de 20 andares abaixo da superfície.O Bunker 42 é uma reconstituição fiel dos ambientes usados durante a guerra, fazendo com que o visitante tenha uma visão de como eram feitas as operações na época.',
'55.741735°N, 37.649277°E',
0,
1951,
1956,
'https://cdn.getyourguide.com/img/location/5b3ca45475392.jpeg/92.jpg',
'https://vontadedeviajar.com/bunker-42-em-moscou/',
1
)

insert into PontoTuristico values(
9,
'Museu Estatal Hermitage',
'É um dos maiores museus de arte do mundo e sua vasta coleção possui itens de praticamente todas as épocas, estilos e culturas da história russa, européia, oriental e do norte da África, e está distribuída em dez prédios, situados ao longo do rio Neva, dos quais sete constituem por si mesmos monumentos artísticos e históricos de grande importância.',
'59° 56′ 26″ N, 30° 18′ 49″ O',
0,
1710,
1851,
'https://upload.wikimedia.org/wikipedia/commons/1/17/Spb_06-2012_Palace_Embankment_various_14.jpg',
'https://pt.wikipedia.org/wiki/Hermitage',
1
)

insert into PontoTuristico values(
10,
'Museu Memorial da Paz de Hiroshima',
'Este local foi construído primeiramente com o intuito de ser a sede da Exposição Comercial da Prefeitura de Hiroshima. Entretanto em 6 de Agosto de 1945 com o lançamento da bomba atômica na cidade, que provocou o evento mais trágico já vivenciado pela Humanidade permaneceu ileso e foi declarado Patrimônio Mundial da Unesco, com base na Convenção sobre a Proteção do Patrimônio Cultural e Natural. Conserva um grande acervo com fotografias, objetos, roupas, vídeos etc., são mostradas as terríveis consequências dos bombardeios nucleares para o Japão e o mundo.',
'34° 23′ 44″ N 132° 27′ 13″ E',
0,
null,
1996,
'https://upload.wikimedia.org/wikipedia/commons/8/8f/A-bomb_dome.jpg',
'https://pt.wikipedia.org/wiki/Memorial_da_Paz_de_Hiroshima',
2
)

insert into PontoTuristico values(
11,
'Parque de Nara',
'O Parque Nara ocupa uma imensa área aos pés do Monte Wakakusa e é cheio de cervos muito dóceis e amistosos. O local é imenso, abrigando templos, museus, santuários, jardins, barraquinhas de comida etc. Os turistas que visitam esse lindo recanto em Nara garantem que o ideal é reservar um dia inteiro para passear pelo parque, sobretudo no caso de quem viaja com crianças.',
'34.6847, 135.8393'
0,
null,
1880,
'https://upload.wikimedia.org/wikipedia/commons/b/b4/Nara_Park_-_panoramio_%282%29.jpg',
'https://www.japan.travel/pt/destinations/kansai/nara/nara-park-and-around/',
2
)

insert into PontoTuristico values(
12,
'Tokyo Skytree',
'Com 634 metros de altura, a Tokyo Skytree é a maior torre do mundo. Ela foi projetada com o objetivo de realmente ser a maior torre já construída e se destaca no skyline de Tokyo. Ela funciona como uma torre de radiodifusão e tem observatórios panorâmicos que oferecem uma vista fenomenal de Tokyo. De seus mirantes, é possível observar toda a cidade e diversos pontos de interesse. Há na base da torre um shopping com diversas lojas, restaurantes e lanchonetes pois há pisos do lugar dedicados apenas à comida.',
'35° 42′ 36″ N, 139° 48′ 39″ L',
0,
2008,
2012,
'https://upload.wikimedia.org/wikipedia/commons/8/84/Tokyo_Skytree_2014_%E2%85%A2.jpg',
'https://guia.melhoresdestinos.com.br/tokyo-skytree-199-5542-l.html',
2
)

insert into PontoTuristico values(
13,
'Sanjusangendo Temple',
'Sanjusangendo (三十 三 間 堂, Sanjūsangendō) é o nome popular de Rengeo-in, um templo no leste de Kyoto, famoso por suas 1001 estátuas de Kannon , a deusa da misericórdia. O templo foi fundado em 1164 e reconstruído um século depois, após a estrutura original ter sido destruída em um incêndio. O  nome Sanjusangendo (literalmente ″33 intervalos″) deriva do número de intervalos entre as colunas de suporte do edifício, um método tradicional de medir o tamanho de um edifício. No centro do salão principal está uma grande estátua de madeira de um Kannon de 1000 braços (Senju Kannon) que é flanqueada em cada lado por 500 estátuas de Kannon de 1000 braços de tamanho humano em dez fileiras.',
'34° 59′ 16″ N, 135° 46′ 18″ L',
0,
null,
1164,
'https://upload.wikimedia.org/wikipedia/commons/f/f0/Sanjusangendo_temple01s1408.jpg',
'https://www.japan-guide.com/e/e3900.html',
2
)

insert into PontoTuristico values(
14,
'Lotte World',
'O parque temático Lotte World é dividido em pequenos parques:  “Lotte World Adventure”, “Water Park” e o “Lotte World Aquarium”. Ele conta com diversas atrações, entre elas  um parque de diversões ao ar livre chamado “Magic Island”, uma ilha artificial dentro de um lago ligado por monotrilho, shopping centers, um hotel de luxo, um museu folclórico, instalações desportivas e cinemas. No Lotte World Adventure, o visitante pode passear por áreas que representam diferentes países. É possível assistir a desfiles, inúmeros filmes, shows e provar uma variedade de pratos internacionais. ',
'37.51°N 127.10°E',
0,
1984,
1989,
'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-674x446/09/28/00/2f.jpg',
'https://www.brazilkorea.com.br/conheca-um-dos-maiores-parques-tematicos-do-mundo-lotte-world-2/#',
7
)

insert into PontoTuristico values(
15,
'Complexo de Palácios de Ch′angdokkgung',
'Esta atração é um grande conjunto de palácios, fazendo parte dos grandes palácios construídos na era Chonson. Foi declarado como patrimônio da humanidade pela UNESCO em 1997.',
'37° 33′ 00″ N, 126° 59′ 00″ L',
0,
1405,
1412,
'https://upload.wikimedia.org/wikipedia/commons/b/b9/Juhamnu%2C_Changdeokgung_-_Seoul%2C_Korea.JPG',
'https://pt.wikipedia.org/wiki/Complexo_de_Pal%C3%A1cios_de_Ch%27angdokkgung',
7
)

insert into PontoTuristico values(
16,
'Songwol-dong Fairy Tale Village',
'Inicialmente a vila foi fundada após a inauguração de um porto próximo a região da vila, entretanto após algum tempo foi degradando e os moradores jovens restauraram a vila dando uma decoração mais jovem e lúdica. Não há nenhuma taxa de entrada e limite de tempo, por isso atrai muitos coreanos e turistas que vão para a Fairy Tale Village com sua família e amigos. E é próximo à China Town.',
'37.477878, 126.620561',
0,
2013,
2013,
'https://tong.visitkorea.or.kr/cms/resource/12/1936512_image2_1.jpg',
'https://blog.mykoreatrip.com/incheonsongwol-dong-fairy-tale-village-%ec%86%a1%ec%9b%94%eb%8f%99-%eb%8f%99%ed%99%94%eb%a7%88%ec%9d%84/',
7
)

insert into PontoTuristico values(
17,
'The Museum of The Bogd Khan',
'Também conhecido como WInter Palace é atualmente um museu, mas no passado foi o palácio do oitavo Jebtsundamba Khutughtu, que depois foi proclamado Bogd Khan, rei da Mongólia. Construído entre 1893 e 1903, uma dos poucas atrações históricas que não foi destruída pelos soviéticos ou pelas forças comunistas. Ao longo do complexo contém obras artísticas budistas, escrituras e thangka, além dos pertences de Bogd Khan, como seu trono, camas, sua coleção de arte e animais de pelúcia.',
'47.897361°N, 106.907°E',
0,
1893,
1903,
'https://upload.wikimedia.org/wikipedia/commons/7/7a/Winter_Palace_Bogd_Khan_149185394_bfcc8db25b_b.jpg'
'https://en.wikipedia.org/wiki/Winter_Palace_of_the_Bogd_Khan',
8
)

insert into PontoTuristico values(
18,
'Glaciar Potanin',
'É um glaciar do oeste da Mongólia com 14 km de comprimento, o maior do país. Situado na montanha Altai Tavan Bogd, recua cerca de 15 metros por ano e a sua espessura diminui cerca de 2,6 m a cada 5 anos. O glaciar tem seu nome em homenagem ao explorador russo Grigory Potanin.',
'49° 8′ N, 87° 55′ E',
0,
null,
null,
'https://upload.wikimedia.org/wikipedia/commons/e/ea/Potanin%C5%AFv_ledovec.jpg',
'https://pt.wikipedia.org/wiki/Glaciar_Potanin',
8
)

insert into PontoTuristico values(
19,
'Mosteiro de Gandantegchinlen',
'É um mosteiro budista mongol localizado na capital do país. O nome do local, traduzido do tibetano significa “Ótimo Lugar de Completa Alegria”. Conta com aproximadamente 150 monges em residência atualmente. Está sob proteção do estado desde 1994. Construído a mando do 5º jebtsundamba khutuktu em 1809, após essa data mais templos foram construídos a partir do primeiro, sendo finalizada em 1925, com o 8º templo construído para manter os restos mortais de jebtsundamba khutuktu. Em 1930 os soviéticos destruíram o local. Alguns locais conseguiram serem salvos da destruição, sendo reaberto em 1944.',
'47 ° 55′ 23″ N, 106 ° 53′ 42″ E',
0,
1809,
1925,
'https://upload.wikimedia.org/wikipedia/commons/4/4c/Zesp%C3%B3%C5%82_klasztoru_Gandan_%2812%29.jpg'
'https://pt.qaz.wiki/wiki/Gandantegchinlen_Monastery',
8
)

insert into PontoTuristico values(
20,
'Bayterek',
'Bastante conhecida entre estrangeiros e locais, representa a aquisição de status de Astana como nova capital do Cazaquistão. A estrutura é baseada em um conto folclórico entre uma árvore mítica e um pássaro mágico da felicidade e seu ovo. A construção possui 105 metros de altura, a estrutura cilíndrica se alarga para simular os ramos da árvore conforme vai-se chegando ao topo da construção, onde fica uma esfera dourada espelhada de 22 metros, que simboliza o ovo. O mirante possui 97 metros, referência ao ano de transferência da capital para Astana (1997). Também há uma estrutura com a mão do primeiro presidente independente do Cazaquistão e, se fizer um pedido enquanto encosta sua mão na do presidente, o hino do Cazaquistão começa a tocar.',
'51° 07′ 41.71″ N, 71°25′ 49.71″ E',
0,
1996,
2002,
'https://media-cdn.tripadvisor.com/media/photo-s/0f/56/dc/98/photo0jpg.jpg',
'https://pt.wikipedia.org/wiki/Bayterek',
9
)

insert into PontoTuristico values(
21,
'Palace of Peace and Reconciliation',
'É uma pirâmide de 62 metros de altura, desenvolvida pela empresa Foster and Partners, feita de vidro colorido e janelas feitas pelo artista arquiteto Brian Clarke. Finalizada em 2006, foi feita com a intenção de sediar o Congresso de Líderes Mundiais e Religiões Tradicionais. O congresso ocorre a cada 3 anos no topo da pirâmide em uma mesa redonda.',
'51° 7′ 23″ N, 71° 27′ 49″ E',
0,
2004,
2006,
'https://upload.wikimedia.org/wikipedia/commons/b/b5/Astana_Architecture_01.jpg',
'https://en.wikipedia.org/wiki/Palace_of_Peace_and_Reconciliation',
9
)

insert into PontoTuristico values(
22,
'Cânion de Charyn',
'É um cânion de 80 km de extensão no rio Sharyn, a 200 km a leste de Almaty, perto da fronteira da China. Faz parte do Parque Nacional Sharyn, estabelecido em 23 de fevereiro de 2004.',
'43° 21′ 29″ N, 79° 5′ 33″ E',
0,
null,
null,
'https://upload.wikimedia.org/wikipedia/commons/7/74/IMG_7431-Sharyn_canyon.jpg',
'https://pt.wikipedia.org/wiki/C%C3%A2nion_de_Charyn',
9
)

insert into PontoTuristico values(
23,
'Budas de Bamiyan',
'O local apresenta diversos testemunhos culturais do Reino de Báctria, dos séculos I a XIII. Os Budas de Bamiyan estão localizados no Vale do Bamiyan, na antiga Rota da Seda. Um peregrino chinês budista chamado Hsüan-tsang viajou ao local por volta do ano 630 e descreveu o local como um florescente centro budista “com mais de dez mosteiros e mais de mil monges”, destacando também que as estátuas estavam decoradas com ouro e pedras preciosas. Em março de 2001 por ordem do governo fundamentalista Talibã as estátuas foram destruídas, uma delas, com 53 metros de altura, era a maior estátua do buda no mundo. Embora estejam destruídas, ainda é possível reconhecer algumas de suas feições. O Japão se comprometeu em reconstruí-las.',
'34° 50′ 49″ N, 67° 49′ 30″ E',
0,
544,
644,
'https://upload.wikimedia.org/wikipedia/commons/4/46/Buddha_of_Bamiyan.jpg',
'https://pt.wikipedia.org/wiki/Budas_de_Bami%C3%A3',
10
)

insert into PontoTuristico values(
24,
'The Afghanistan national museum',
'Também conhecido como Museu de Kabul, em 2014 começou a ser expandido e atualmente é tido como um dos melhores museus do mundo. A coleção presente no museu é uma das mais importantes da Ásia Central, com cerca de 100 mil itens datando de milênios atrás, incluindo itens das dinastias persa, budista e islâmica. Durante a guerra civil em 1992, o museu foi saqueado e alvo de explosivos, resultando em uma perda de cerca de 70% da coleção de 100 mil itens. Desde 2007, um grande número de organizações mundiais ajudaram a restaurar cerca de 8 mil itens.',
'34° 28′ 03″ N, 69° 07′ 12″ E',
0,
null,
1919,
'https://upload.wikimedia.org/wikipedia/commons/7/72/National_museum_of_Afghanistan.jpg',
'https://en.wikipedia.org/wiki/National_Museum_of_Afghanistan',
10
)

insert into PontoTuristico values(
25,
'Minarete de Jam',
'Também conhecido como Minarete e Ruínas Arqueológicas se localiza no distrito de Shahrak, província de Ghor. O Minarete de Jam é uma torre cilíndrica erguida de tijolos com 65 metros de altura e 9 de diâmetro com uma base octogonal. Foi erguida em 1194 pelo Sudão Ghiyas-od-din da Dinastia Ghurid. Em 2002 foi declarado como patrimônio mundial e está na lista de patrimônios mundiais em perigo.',
'34° 23′ 47,6″ N, 64° 30′ 57,8″ E',
0,
null,
1194,
'https://upload.wikimedia.org/wikipedia/commons/2/23/Jam_afghan_architecture_harirud_brick.jpg',
'https://pt.wikipedia.org/wiki/Minarete_de_Jam',
10
)

insert into PontoTuristico values(
26,
'Caaba',
'A Caaba é um templo sagrado em atual forma de cubo, construído por Abraão e seu filho Ismael, feito para a adoração de Deus único. O local de sua construção foi indicado por Deus. É o local mais sagrado para os muçulmanos. Ela está dentro da Mesquita al-Haram, na cidade de Meca, na atual Arábia Saudita. Esta construção é conhecida pelos muçulmanos como a Casa Sagrada, e é o local mais importante do mundo para os seguidores do Islam. Ela também é a qibla, ou seja, a direção para onde os fiéis devem fazer as suas orações obrigatórias. Seu nome traduzido para o português significa “cubo”, o que se deve ao formato de sua arquitetura. A Caaba foi construída pelo Profeta Abraão e seu filho Ismael. Na ocasião, a cidade de Meca era apenas um deserto árido, e não havia naquela região um local de adoração monoteísta.',
'21° 25′ 21.17″ N, 39° 49′ 34.24″ E',
0, 
null,
null,
'https://iqaraislam.com/static/9e1fad67d903b72df2b8c7ea32f12f79/ed516/Caaba-em-Meca.jpg',
'https://iqaraislam.com/caaba',
47
)

insert into PontoTuristico values(
27,
'Forte Masmak',
'O Forte Masmak, Castelo de Al Masmak ou Palácio Musmak ( em Árabe:Qaṣr al-Maṣmak قصر المصمك ‎) é um complexo de fortificação que fica localizado no centro da cidade de Riade,no bairro antigo da capital,na Arábia Saudita. Foi construído por volta de 1865,constituído de argila, tijolos de barro,fundada em blocos de pedra e possui quatro torres de vigia.Este edifício teve um papel importante na História da cidade,onde ocorreu a recaptura de Riade, liderada por Ibn Saud em 14 de janeiro 1902.',
'24° 37′ 52″ N, 46° 42′ 48″ E',
0,
null,
1865,
'https://upload.wikimedia.org/wikipedia/commons/e/e1/Masmak_castle.jpg',
'https://pt.wikipedia.org/wiki/Forte_Masmak',
47
)

insert into PontoTuristico values(
28,
'Madinat Jumeirah',
'O Madinat Jumeirah está localizado ao longo de dois quilômetros de praia privativa ao lado do Jumeirah Beach Hotel , do Burj Al Arab e do Wild Wadi Water Park . Fica a 1,6 km da estação Mall of Emirates da linha vermelha do metrô. Os cursos de água de Madinat Jumeirah abrigam um santuário de tartarugas que visa abrigar tartarugas feridas antes de serem devolvidas à natureza. O curral da tartaruga está localizado em Mina a′Salam e fica entre os restaurantes Al Muna e Zheng He.',
'25° 7′ 58″ N, 55° 11′ 5″ E',
0,
2018,
null,
'https://lp-cms-production.imgix.net/2019-06/9b26bcd772a85afdbc9d6a3f4cd4180d-madinat-jumeirah.jpg',
'https://en.wikipedia.org/wiki/Madinat_Jumeirah',
49
)

insert into PontoTuristico values(
29,
'Legoland',
'Legoland Dubai (estilizado como LEGOLAND Dubai ) é um parque temático familiar em Dubai. Foi inaugurado em 31 de outubro de 2016. É o primeiro parque da Legoland no Oriente Médio e foi o sétimo no mundo. O parque foi projetado para famílias com crianças de dois a 12 anos. O parque também oferece uma variedade de passeios e atividades. Como muitos outros parques temáticos da Legoland, Dubai inclui uma Miniland onde mais de 20 milhões de peças de Lego são usadas para criar 15.000 modelos em miniatura de diferentes marcos e estruturas ao redor do mundo.',
'24° 55′ 0.4″ N, 55° 0′ 41″ E',
0,
null,
2016,
'https://www.dubai-online.com/wp-content/uploads/2019/10/ss_698094457.jpg',
'https://en.wikipedia.org/wiki/Legoland_Dubai',
49
)

insert into PontoTuristico values(
30,
'Louvre Abu Dhabi',
'O Louvre Abu Dhabi é um museu de Abu Dhabi, a capital dos Emirados Árabes Unidos. É um dos componentes de um gigantesco bairro cultural que se está a erguer na ilha de Saadiyat, junto a outros três museus e a um centro de entretenimento. Está previsto que o espaço exiba obras de arte de todo o mundo, focando principalmente as pontes entre a arte ocidental e a arte oriental. O museu, desenhado pelo arquiteto francês Jean Nouvel, tem uma área total de 24 000 m² (sendo 8 000 m² de espaços internos) e o custo da construção está estimado entre 83[6] e 108 milhões de euros.',
'24° 17′ 1″ N, 54° 13′ 17″ E',
0,
2007,
2017,
'https://media-cdn.tripadvisor.com/media/photo-s/16/31/ba/7c/louvre-abu-dhabi.jpg',
'https://pt.wikipedia.org/wiki/Louvre_Abu_Dhabi',
49
)

insert into PontoTuristico values(
31,
'Dal Hajar',
'O Dar al-Hajar (em árabe : دار الحجر , ″Stone House″ ou ″Rock Palace″) é um antigo palácio real localizado em Wadi Dhar a cerca de 15 quilômetros (9,3 milhas) de Sana′a , no Iêmen . Construído na década de 1920 como o retiro de verão de Yahya Muhammad Hamid ed-Din , governante do Iêmen de 1904 a 1948, fica no topo de uma estrutura construída em 1786 para o estudioso al-Imam Mansour. O palácio permaneceu na família real até a revolução do Iêmen de 1962 e agora é um museu.',
'15° 26′ 28″ N, 44° 07′ 31″ E',
0,
1920,
1929,
'https://upload.wikimedia.org/wikipedia/commons/0/0a/Dar_al_hajar_edit.jpg',
'https://en.wikipedia.org/wiki/Dar_al-Hajar',
50
)

insert into PontoTuristico values(
32,
'Templo Barran',
'O templo está localizado a oeste do templo Awwam , também dedicado ao deus Almaqah . As principais características da estrutura são as seis colunas e o poço sagrado no meio do pátio. Anteriormente, apenas cinco colunas eram conhecidas, até as escavações de 1988, quando os restos de outro pilar foram descobertos. O templo é considerado o maior templo pré-islâmico do Iêmen . Foi parcialmente escavado pela expedição de Wendell Phillips de 1951–1952. Além de suas funções religiosas, o complexo também pode ter servido como um centro de documentação, pois as inscrições descrevendo os eventos que cercaram o estado de Sabá foram encontradas nas paredes.',
'15.403227°N, 45.343112°E',
0,
null,
null,
'https://photos.wikimapia.org/p/00/00/64/98/94_big.jpg',
'https://en.wikipedia.org/wiki/Barran_Temple',
50
)

insert into PontoTuristico values(
33,
'Cidade Imperial de Huê´',
'A Cidade Imperial de Huế é uma fortaleza muralhada e palácio situada na antiga capital do Vietname. Foi idealizada como uma cópia da Cidade Proibida dos imperadores chineses em Pequim. Em 1993, a Cidade Imperial de Huế foi classificada pela UNESCO como Património da Humanidade com a designação de Conjunto de Monumentos de Huê. Os edifícios que ainda restavam foram restaurados e preservados. Infelizmente, a maior parte do lugar foi destruída pela Guerra do Vietname, encontrando-se, por isso, coberta por arrozais.',
'16.469727, 107.577815',
0,
1804,
null,
'https://www.timetravelturtle.com/wp-content/uploads/2016/03/Vietnam-2016-540_feat.jpg',
'https://pt.wikipedia.org/wiki/Cidade_Imperial_de_Hu%E1%BA%BF',
42
)

insert into PontoTuristico values(
34,
'Ban Gioc',
'Quedas de Detian ou Ban Gioc é um nome coletivo para duas cachoeiras no rio Quây Sơn, situadas na fronteira internacional entre China e Vietnã; mais especificamente localizado entre as colinas cársticas do condado de Daxin, Guangxi e o distrito de Trùng Khánh, província de Cao Bằng.',
'22° 51′ 23″ N, 106° 43′ 19″ E',
0,
null,
null,
'https://i.redd.it/4j24ajfeyb721.png',
'https://en.wikipedia.org/wiki/Ban_Gioc%E2%80%93Detian_Falls',
42
)

insert into PontoTuristico values(
35,
'Pha That Luang',
'Pha That Luang (em laociano: ພຣະ ທາດ ຫຼວງ) é uma grande cobertura de ouro budista no centro de Vientiane, capital do Laos. Desde a sua criação inicial, sugerido para ser no III século, a estupa sofreu várias reconstruções, sendo a mais recente em 1930, devido a invasões estrangeiras na área. É geralmente considerada como o mais importante monumento nacional no Laos e um símbolo nacional do país.',
'17° 58′ 34.20″ N, 102° 38′ 03.30″ E',
0,
1566,
null,
'https://upload.wikimedia.org/wikipedia/commons/b/b6/Pha_That_Luang%2C_Vientiane%2C_Laos.jpg',
'https://pt.wikipedia.org/wiki/Pha_That_Luang',
43
)

insert into PontoTuristico values(
36,
'Bayon',
'O Bayon ( Khmer : ប្រាសាទបាយ័ន, Prasat Bayon ) é um templo Khmer ricamente decorado em Angkor, no Camboja . Construído no final do século 12 ou início do século 13 como o templo estatal do rei budista Mahayana Jayavarman VII ( Khmer : ព្រះបាទ ជ័យវរ្ម័ន ទី ៧ ), o Bayon fica no centro da capital de Jayavarman, Angkor Thom ( Khmer : អង្គរធំ ). Após a morte de Jayavarman, ele foi modificado e ampliado pelo Theravada posteriorReis budistas de acordo com suas próprias preferências religiosas. A característica mais distintiva do Bayon é a multidão de rostos de pedra serenos e sorridentes nas muitas torres que se projetam do terraço superior e se agrupam em torno de seu pico central. O templo tem dois conjuntos de baixos-relevos , que apresentam uma combinação de cenas mitológicas , históricas e mundanas. O principal órgão do conservatório, a Equipe do Governo Japonês para a Salvaguarda de Angkor (a JSA) descreveu o templo como ″a expressão mais marcante do estilo barroco″ da arquitetura Khmer , em contraste com o estilo clássico de Angkor Wat ( Khmer : ប្រាសាទ អង្គរវត្ត ).',
'13° 26′ 28″ N, 103° 51′ 31″ E',
0,
null,
null,
'https://lp-cms-production.imgix.net/2019-06/bac74c7535fc9079461678dd8737d5d1-bayon.jpg',
'https://en.wikipedia.org/wiki/Bayon',
44
)

insert into PontoTuristico values(
37,
'Jardins Suspensos da Babilônia',
'Os Jardins Suspensos é talvez uma das maravilhas relatadas sobre a qual menos se sabe. Muito se especula sobre suas possíveis formas e dimensões, mas nenhuma descrição detalhada ou vestígio arqueológico foi encontrado, exceto um poço fora do comum que parece ter sido usado para bombear água. Acredita-se que tenha sido construído na antiga cidade da Babilônia, próximo de onde atualmente se localiza a cidade de Hillah, no Iraque. Nas obras de Josefo, encontram-se citações ao sacerdote babilônico Beroso, que teria escrito em aproximadamente 290 a.C. que os jardins suspensos eram obra do rei neobabilônico Nabucodonosor II, que governou entre 605 e 562 a.C.. Não há textos babilônicos existentes que mencionem os jardins e tampouco foram encontradas evidências arqueológicas na Babilônia que comprovem sua existência.',
'32° 32′ 08″ N, 44° 25′ 39″ L',
3,
null,
null,
'https://upload.wikimedia.org/wikipedia/commons/a/ae/Hanging_Gardens_of_Babylon.jpg',
'https://pt.wikipedia.org/wiki/Jardins_Suspensos_da_Babil%C3%B3nia',
56
)

insert into PontoTuristico values(
38,
'Templo de Ártemis',
'O Templo de Ártemis ou Templo de Diana foi uma das sete maravilhas do Mundo Antigo, localizado em Éfeso. Era o maior templo do mundo antigo, e durante muito tempo o mais significativo feito da civilização grega e do helenismo, construído para a deusa grega Ártemis, da caça e dos animais selvagens. Foi construído no século VI a.C. no porto mais rico da Ásia Menor pelo arquiteto cretense Quersifrão e por seu filho, Metágenes.',
'37° 56′ 59″ N 27° 21′ 50″ E',
3,
null,
-550,
'https://upload.wikimedia.org/wikipedia/commons/1/1d/Miniaturk_009.jpg',
'https://pt.wikipedia.org/wiki/Templo_de_%C3%81rtemis',
57
)

insert into PontoTuristico values(
39,
'Mausoléu de Halicarnasso',
'O mausoléu de Halicarnasso ou mausoléu de Mausolo (em grego antigo: Μαυσωλεῖον τῆς Ἁλικαρνασσοῦ; em turco: Halikarnas Mozolesi) foi uma tumba construída entre 353 e 350 a.C. em Halicarnasso (atual Bodrum, Turquia) para Mausolo (em grego, Μαύσωλος), um sátrapa do Império Aquemênida, e Artemísia II de Cária, sua irmã e esposa. A estrutura foi desenhada pelos arquitetos gregos Sátiro e Pítis. Ela tinha aproximadamente 45 metros de altura, e cada um de seus quatro lados foi adornado com relevos criados por cada um dos quatro escultores gregos — Briáxis, Escopas de Paros, Leocarés e Timóteo. A estrutura finalizada foi considerada como sendo um triunfo estético por Antípatro de Sídon, que a identificou como uma de suas sete maravilhas do mundo antigo. O termo mausoléu veio a ser usado genericamente para qualquer grande tumba, embora ″Mausol-eion″ originalmente significasse ″associado com Mausolo″. A construção foi destruída por sismos sucessivos do século XII ao século XV.',
'37° 02′ 16.6″ N, 27° 25′ 26.6″ E',
3,
null,
-321,
'https://upload.wikimedia.org/wikipedia/commons/4/4f/Mausoleum_at_Halicarnassus_by_Ferdinand_Knab_%281886%29_cropped.png',
'https://pt.wikipedia.org/wiki/Mausol%C3%A9u_de_Halicarnasso',
57
)

insert into PontoTuristico values(
40,
'Hagaparken',
'Um parque perfeito para relaxar e passear, tendo atrações como as tendas de cobre, o Haga Superior(um ateliê) e a Casa de Borboletas.',
'59° 21′ 40″ N, 18° 02′ 00″ E',
0,
1780,
1797,
'https://upload.wikimedia.org/wikipedia/commons/e/e2/Haga_lawn.jpg',
'https://en.wikipedia.org/wiki/Hagaparken',
5
)

insert into PontoTuristico values(
41,
'Stadshuset - Stockholm City Hall',
'Câmara municipal: Prédio mais famoso de Estocolmo, com visitas guiadas.',
'59.3275°N, 18.055°E',
0,
1911,
1923,
'https://media.timeout.com/images/105146408/630/472/image.jpg',
'https://en.wikipedia.org/wiki/Stockholm_City_Hall',
5
)

insert into PontoTuristico values(
42,
'Castelo Gripsholm',
'Localizado em um dos bairros mais badalados de Estocolmo, o Castelo é um museu que conta com mais de 65 salas, uma delas está a Galeria Nacional de Retratos(uma das mais antigas do mundo).',
'59° 15′ N, 17° 13′ E',
0,
null,
1377,
'https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/Gripsholms_slott_view2.jpg/420px-Gripsholms_slott_view2.jpg',
'https://pt.wikipedia.org/wiki/Castelo_de_Gripsholm',
5
)

insert into PontoTuristico values(
43,
'Sergels Torg',
'Uma praça que fica bem no centro de Estocolmo, ela tem dois andares: o piso superior é um obelisco de vidro de 37 metros de altura, que de noite recebe uma iluminação especial; o piso inferior dá acesso a um shopping center.',
'59° 19′ 57″ N, 18° 3′ 52″ E',
0,
1927,
1967,
'https://upload.wikimedia.org/wikipedia/commons/e/e9/Sergels_torg_mot_v%C3%A4st_2009.jpg',
'https://en.wikipedia.org/wiki/Sergels_torg',
5
)

insert into PontoTuristico values(
44,
'Oslo Opera House',
'A Oslo Opera House é o maior centro de artes-cênicas de toda a Noruega, mas o que realmente desperta o interesse dos turistas é a sua arquitetura Snøhetta. O centro foi criado em 2008. Sendo também um ótimo espaço para caminhar.',
'59° 54′ 25″ N 10° 45′ 13″ E',
0,
2003,
2007,
'https://lp-cms-production.imgix.net/2019-06/de0dd036841a7ac875d551ed01607b84-oslo-opera-house.jpg',
'https://pt.wikipedia.org/wiki/%C3%93pera_de_Oslo',
6
)

insert into PontoTuristico values(
45,
'Palácio Real da Noruega',
'O Palácio Real da Noruega foi construído entre 1824 e 1849, demorando 25 anos para ser finalizado, tem a finalidade de abrigar a família real norueguesa, que o habita desde o fim da obra. Foi arquitetado pelo norueguês Hans Linstow. O palácio possuí vários monumentos, com o mais famoso sendo a estátua do Rei Carlos III, que faleceu antes de ver o fim da obra. Hoje em dia algumas partes do edifício são um parque que é parcialmente aberto ao público para visitações.',
'59° 55′ 0.88″ N, 10° 43′ 39.24″ L',
0,
1824,
1849,
'https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/Slottsplassen.jpg/300px-Slottsplassen.jpg',
'https://pt.wikipedia.org/wiki/Pal%C3%A1cio_Real_de_Oslo',
6
)

insert into PontoTuristico values(
46,
'Tromsø',
'Tromsø não tem muitos pontos turísticos, mas é um dos principais lugares de visita de turistas, ela é uma das cidades que se consegue ver bem a aurora boreal, dos meses de setembro a março, então tem várias viagens de acampamento na neve para testemunhar tal fenômeno.',
'69° 39′ 07″ N, 18° 57′ 12″ E',
0,
null,
null,
'https://upload.wikimedia.org/wikipedia/commons/c/ce/Tromso_Troms%C3%B8_Norway_tunliweb_02.jpg',
'https://pt.wikipedia.org/wiki/Troms%C3%B8_(cidade)',
6
)

insert into PontoTuristico values(
47,
'The Polar Bear Society',
'Hammerfest, uma cidade portuária no extremo norte norueguês, é lá onde a Polar Bear Society está localizada. Ela é uma exibição que está na cidade há anos, ela contribui com verba para causas que envolvam ursos polares, o motivo: proteger o animal que mascote da cidade. Contando com várias visitas no ano, a caprichosa exibição é admirada pelo mundo todo.',
'70° 39′ 52.75″ N, 23° 40′ 52.25″ E',
0,
null,
1963,
'https://upload.wikimedia.org/wikipedia/commons/0/0f/Royal_and_Ancient_Polar_Bear_Society_in_Hammerfest_2013.jpg',
'https://en.wikipedia.org/wiki/Royal_and_Ancient_Polar_Bear_Society',
6
)

insert into PontoTuristico values(
48,
'Vesúvio',
'O famoso vulcão italiano Vesúvio quando entrou em erupção destruiu Pompéia e Herculano, no ano de 79 d.C. A localização das cidades foi eventualmente esquecida, até serem acidentalmente redescobertas no final do século XVIII. A erupção de 79 também mudou o curso do rio Sarno e aumentou a área litorânea do entorno. Atualmente, abriga as ruínas que sobraram deste trágico acidente, recebendo diversos turistas que visitam as cidade e a cratera do vulcão.',
'40° 49′ 17″ N 14° 25′ 32″ E',
0,
null,
null,
'https://cozinha-italiana.net/wp-content/uploads/2018/11/vesuvio-673x381.jpg',
'https://planetaeuropa.com/italia/como-ir-de-pompeia-ao-vesuvio-como-subir-o-vulcao-passeio-vesuvio/',
3
)

insert into PontoTuristico values(
49,
'Catedral de Milão',
'A catedral é imensa, com 157 m de comprimento e 109 m de largura. O interior tem cinco naves com uma altura que chega aos 45 metros, divididas por 40 pilares. É uma catedral católica romana situada na praça central da cidade de Milão, na Lombardia, no norte da Itália.',
'45° 27′ 51″ N, 9° 11′ 27″ O',
0,
1386,
1965,
'https://upload.wikimedia.org/wikipedia/commons/7/70/Milan_Cathedral_from_Piazza_del_Duomo.jpg',
'https://pt.wikipedia.org/wiki/Catedral_de_Mil%C3%A3o',
3
)

insert into PontoTuristico values(
50,
'Coliseu',
'Maior e mais famoso símbolo do Império Romano, o Coliseu era um enorme anfiteatro reservado para combates entre gladiadores ou opondo esses guerreiros contra animais selvagens. As obras levaram oito anos para serem concluídas e, quando tudo ficou pronto, Roma já era governada por Tito, filho de Vespasiano. Para homenagear seu pai, Tito batizou a construção de ″Anfiteatro Flaviano″.',
'41° 53′ 24.61″ N, 12° 29′ 32.17″ E',
1,
68,
79,
'https://static.jojowiki.com/images/a/a1/latest/20200130220947/Colosseum_manga.png',
'https://super.abril.com.br/mundo-estranho/o-que-foi-o-coliseu-de-roma/',
3
)

insert into PontoTuristico values(
51,
'Guaita Tower',
'A fortaleza Guaita é a mais antiga das três torres construídas no Monte Titano , e a mais famosa. Foi construído no século 11 e serviu brevemente como prisão. É uma das três torres representadas na bandeira nacional e no brasão de armas. Foi registrado como um dos Sítios do Patrimônio Mundial em 2008.',
'43.9354°N, 12.4496°E',
0,
null,
null,
'https://upload.wikimedia.org/wikipedia/commons/a/ac/Fortress_of_Guaita_2013-09-19.jpg',
'https://en.wikipedia.org/wiki/Guaita',
4
)

insert into PontoTuristico values(
52,
'Palazzo Pubblico',
'O Palazzo Pubblico (″Palácio Público″) é a prefeitura da cidade de San Marino, bem como seu prédio oficial do governo. Localizado no local de um edifício antigo chamado Domus Magna Comunis, o edifício atual foi projetado pelo arquiteto romano Francesco Azzurri e foi construído entre 1884 e 1894.',
'43.9369°N, 12.4466°E',
0,
1884,
1894,
'https://upload.wikimedia.org/wikipedia/commons/0/00/Piazza_del_Campo%2C_Siena%2C_Tuscany_%285772001588%29.jpg',
'https://en.wikipedia.org/wiki/Palazzo_Pubblico_(San_Marino)',
4
)

insert into PontoTuristico values(
53,
'LEGOLAND Windsor',
'A LEGOLAND Windsor é um parque infantil temático de LEGO, uma linha de brinquedos montáveis, localizado na cidade de Windsor, sendo o segundo parque LEGO inaugurado no mundo, abrindo as portas ao público em 1999. O parque ficou em construção durante 4 anos, sendo inaugurado em 29 de março de 1996. O parque atualmente é dirigido pela Merlin Entertainments.',
'51.463936, -0.648844',
0,
1992,
1996,
'https://upload.wikimedia.org/wikipedia/commons/8/81/Entrance_to_Legoland_Windsor.jpg',
'https://pt.wikipedia.org/wiki/LEGOLAND_Windsor',
38
)

insert into PontoTuristico values(
54,
'London Eye',
'Também conhecida como Millennium Wheel, é uma roda-gigante inaugurada na virada do ano de 1999-2000, localizada em Londres, Inglaterra. Possuía o título de maior roda-gigante do mundo até 2006. Seu desenvolvimento foi incentivado para comemorar o fim do milênio, por isso várias ideias foram propostas ao longo da década de 90. O projeto da roda-gigante foi desenvolvida por dois arquitetos: David Marks e Julia Barfield, que criaram a empresa Marks Barfield após a ideia ter sido rejeitada, que teve apoio financeiro da British Airways. A roda-gigante ficou pronta após 6 meses de trabalho. No dia de sua inauguração não foram permitidos pessoas nas cabines, por elas não terem passado no teste de segurança.',
'51° 30′ 12″ N, 0° 07′ 11″ O',
0,
1999,
2000,
'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-674x446/0a/91/40/1e.jpg',
'https://pt.wikipedia.org/wiki/London_Eye',
38
)

insert into PontoTuristico values(
55,
'Big Ben',
'Big Ben é o nome do sino instalado na torre, que seu nome original (da torre) é Elizabeth Tower, mas popularmente o ponto é conhecido como Big Ben. O nome Elizabeth Tower é uma homenagem à Rainha Isabel II do Reino Unido, antes disso era apenas conhecida como Clock Tower(“Torre do Relógio” na tradução literal). É o segundo maior relógio do mundo. Desde 31 de dezembro de 1923 a BBC reproduz as badaladas do sino. Em 21 de agosto de 2017 o relógio foi desativado para uma manutenção dos mecanismos, sinos e estrutura da torre que deve durar até 2021.',
'51° 30′ 03″ N, 0° 07′ 29″ O',
0,
1843,
1858,
'https://upload.wikimedia.org/wikipedia/commons/b/b2/Clock_Tower_-_Palace_of_Westminster%2C_London_-_September_2006-2.jpg',
'https://pt.wikipedia.org/wiki/Big_Ben',
38
)

insert into PontoTuristico values(
56,
'Stonehenge',
'É uma estrutura feita de pedras formando círculos concêntricos, com quase 5 metros e 50 toneladas cada pedra. Estima-se que a construção total do local durou cerca de 3 mil anos e meio de trabalho (30 milhões de horas de trabalho aprox.). A estrutura foi designada para determinar o ciclo agrícola, observações astronômicas e rituais religiosos. Seu uso aparenta ser improvável após 1100 a.C. No dia 21 de junho o Sol nasce em perfeita exatidão em relação à pedra principal. Segundo historiadores, o Stonehenge pertencia ao povoado Durrington. Sua construção gerou diversos mitos e lendas em povos antigos, algumas acreditando que foram gigantes que construíram o monumento. O povo druida é suspeito de ter usado o local com fins religiosos e por isso alguns historiadores crêem que a presença deles no local foi um indício que foram eles que construíram o local. Foram encontradas resquícios de pedras azuis, indicando que o local poderia ter sido um centro de cura. Outras teorias afirmam que o Stonehenge era um cemitério dedicado aos membros da elite. A verdade é que nunca saberemos com 100% de certeza tudo sobre o local.',
'51° 10′ 43,91″ N, 001° 49′ 34,37″ W',
0,
-3100,
-1100,
'https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Stonehenge_back_wide.jpg/1200px-Stonehenge_back_wide.jpg',
'https://pt.wikipedia.org/wiki/Stonehenge',
38
)

insert into PontoTuristico values(
57,
'Lago Ness',
'O Lago Ness é um lago fundo, grande e de água doce localizado nas Terras Altas da Escócia. A superfície do lago está a 16 metros do nível do mar. O lago ganhou sua fama devido aos supostos avistamentos da criatura nomeada como Monstro do Lago Ness, apelidado de “Nessie”. A visibilidade da água é bem baixa devido ao alto teor de turfa no solo ao redor do lago.',
'57° 18′ 36″ N, 4° 26′ 24″ W',
0,
null,
null,
'https://s2.glbimg.com/Acaxv4SCtzdr2F2C4kcscXI49eI=/e.glbimg.com/og/ed/f/original/2019/07/22/800px-lochneska_poboba_museumofnessie.jpg'.
'https://pt.wikipedia.org/wiki/Lago_Ness',
39
)

insert into PontoTuristico values(
58,
'Casa Batló',
'A Casa Batlló é um edifício modernista, mais precisamente modernista catalão, concebido pelo arquiteto Antoni Gaudi, auxiliado pelos arquitetos Josep Maria Jujol e Joan Rubió i Bellversituado, e que se situa no n.º 43 do Passeig de Grácia, na chamada Ilha da Discórdia, um bairro modernista da cidade de Barcelona.',
'41° 23′ 30″ N, 2° 09′ 54″ E',
0,
null,
null,
'https://upload.wikimedia.org/wikipedia/commons/2/26/Gaudi-Batllo-0279ret.jpg',
'https://pt.wikipedia.org/wiki/Casa_Batll%C3%B3',
54
)

insert into PontoTuristico values(
59,
'Cidade das Artes e da Ciência',
'A Cidade das Artes e das Ciências é um complexo arquitetónico, cultural e de entretenimento existente na cidade de Valência, em Espanha. Desenhado por Santiago Calatrava e Félix Candela, o projeto começou a ser executado em Julho de 1996 e inaugurado em 16 de Abril de 1998.',
'39° 27′ 16″ N, 0° 21′ 1″ O'
0,
1996,
1998,
'https://viajantecomum.com/wp-content/uploads/2016/04/valencia-espanha-1073x715.jpg',
'https://pt.wikipedia.org/wiki/Cidade_das_Artes_e_das_Ci%C3%AAncias',
54
)

insert into PontoTuristico values(
60,
'Puerto Banú',
'O Puerto José Banús, ou Porto Banús, é um porto desportivo de grande luxo, situado na urbanização Nova Andaluzia, entre Marbella e San Pedro Alcántara, na província de Málaga, Espanha.',
'36° 29′ 15″ N, 4° 57′ 09″ O',
0,
1966,
1970,
'https://www.nevadomarbella.com/cms/wp-content/uploads/2018/07/puerto-banus-barcos-920x489.jpg',
'https://pt.wikipedia.org/wiki/Puerto_Ban%C3%BAs',
54
)

insert into PontoTuristico values(
61,
'Cabo da Roca',
'O Cabo da Roca é o ponto mais ocidental de Portugal Continental e da Europa continental. Situa-se na freguesia de Colares, concelho de Sintra e distrito de Lisboa. O local é visitável, não até ao extremo mas até uma zona à altitude de 140 m. O cabo forma o extremo ocidental da Serra de Sintra, precipitando-se sobre o Oceano Atlântico. Luís Vaz de Camões descreveu-o como o local “Onde a terra se acaba e o mar começa” (in Os Lusíadas, Canto III).',
'38° 46′ 51″ N, 9° 30′ 2″ W',
0,
null,
null,
'https://upload.wikimedia.org/wikipedia/commons/5/54/Cabo_da_Roca.JPG',
'https://pt.wikipedia.org/wiki/Cabo_da_Roca',
55
)

insert into PontoTuristico values(
62,
'Pico Ruivo',
'O Pico Ruivo, no concelho de Santana na ilha da Madeira, é, com os seus 1862 metros de altitude, a terceira montanha mais alta de Portugal, e a mais alta do arquipélago da Madeira.',
'32° 45′ 50″ N, 16° 55′ 33″ O',
0,
null,
null,
'https://portugalinews.eu/wp-content/uploads/2019/02/pico-ruivo-17.jpg',
'https://pt.wikipedia.org/wiki/Pico_Ruivo',
55
)

insert into PontoTuristico values(
63,
'Capela dos Ossos',
'A Capela dos Ossos está situada na Igreja de São Francisco. Foi construída no século XVII por iniciativa de três monges franciscanos que pretendiam transmitir a mensagem da transitoriedade da vida, tal como se depreende do célebre aviso à entrada: ″Nós ossos que aqui estamos pelos vossos esperamos″. Além da questão espiritual, também havia uma questão física, qual seja; existiam, na região de Évora, quarenta e dois cemitérios monásticos que estavam a ocupar demasiado espaço e locais estratégicos que muitos pretendiam utilizar para outros fins. Assim, decidiram retirar os esqueletos da terra e usá-los para construir e decorar a capela.',
'38° 34′ 08″ N, 7° 54′ 32″ O',
0,
null,
null,
'https://portaldeportugal.com/wp-content/uploads/2019/01/capela-dos-ossos.jpg',
'https://pt.wikipedia.org/wiki/Capela_dos_Ossos',
55
)

insert into PontoTuristico values(
64,
'Torre Eiffel',
'A Torre Eiffel é uma torre treliça de ferro do século XIX localizada no Champ de Mars, em Paris, a qual se tornou um ícone mundial da França. A torre, que é o edifício mais alto da cidade, é o monumento pago mais visitado do mundo, com milhões de pessoas frequentando-o anualmente.',
'48° 51′ 30″ N, 2° 17′ 40″ L',
0,
1986,
1987,
'https://jpimg.com.br/uploads/2018/11/torre-eiffel-paris-franca-1024x678.jpg',
'https://pt.wikipedia.org/wiki/Torre_Eiffel',
21
)

insert into PontoTuristico values(
65,
'Museu do Louvre',
'O Museu do Louvre, é o maior museu de arte do mundo e um monumento histórico em Paris, França. Um marco central da cidade, está localizado na margem direita do rio Sena, no 1.º arrondissement. Aproximadamente 38 mil objetos, da pré-história ao século XXI, são exibidos em uma área de 72 735 metros quadrados.',
'48° 51′ 41″ N, 2° 20′ 6″ E',
0,
null,
1793,
'https://cdn.civitatis.com/francia/paris/galeria/louvre-museum-night.jpg',
'https://pt.wikipedia.org/wiki/Museu_do_Louvre',
21
)

insert into PontoTuristico values(
66,
'Les Deux Alpes',
'Les Deux Alpes é um estação de esqui situada no departamento francês de Isère, 71 km ao sudoeste de Grenoble. A população encontra-se a uma altitude de 1650 m e a cota máxima da estação é de 3600 m. Possui o glaciar esquiavél maior da Europa e é a segunda estação mais antiga da França após Chamonix.',
'45° 0′ 26″ N, 6° 26′ 18″ E',
0,
null,
null,
'https://media-cdn.tripadvisor.com/media/photo-s/1a/70/da/5d/hiver-2020.jpg',
'https://pt.wikipedia.org/wiki/Les_Deux_Alpes',
21
)

insert into PontoTuristico values(
67,
'Abadia do Monte Saint-Michel',
'A abadia do Monte Saint-Michel, na comuna francesa de Le Mont-Saint-Michel, na Normandia, no departamento da Mancha, é um notável complexo abacial e histórico, além de centro de peregrinação. A abadia foi classificada como monumento histórico pela lista de 1862.',
'48° 38′ 09″ N, 1° 30′ 41″ O',
0,
null,
1523,
'https://f.i.uol.com.br/fotografia/2019/04/03/15543286845ca52c6c785a1_1554328684_3x2_rt.jpg',
'https://pt.wikipedia.org/wiki/Abadia_do_Monte_Saint-Michel',
21
)

insert into PontoTuristico values(
68,
'Rijksmuseum',
'″Museu do Estado″ traduzindo literalmente do holândes, é o museu nacional da Holanda, localizado em Amsterdã. Possui uma larga coleção de pinturas neerlandesa e asiáticas. Fundado em 1800 na cidade de Haia para exibir a coleção do Primeiro-Ministro da época, em 1808 se mudou para a cidade de Amsterdã por ordem do Rei, irmão de Napoleão Bonaparte. Apenas em 1885 o museu se mudou para sua localização atual, combinando elementos góticos e renascentistas.',
'52° 21′ 36.000″ N, 4° 53′ 7.001″ E',
0,
null,
1800,
'https://upload.wikimedia.org/wikipedia/commons/1/1b/Rijksmuseum_in_Amsterdam.jpg',
'https://pt.wikipedia.org/wiki/Rijksmuseum',
22
)

insert into PontoTuristico values(
69,
'Cube House',
'As ″casas cúbicas″ são uma série de casas inovadoras, construídas nas cidades holandesas Rotterdam e Helmond. Desenvolvidas pelo arquiteto Piet Blom e inspirado pelo conceito de “viver em um telhado urbano”. As casas tem formato cúbico, cada uma representando uma árvore, em conjunto representando uma floresta. A ideia principal é otimizar o espaço necessário para vivermos.',
'51° 55′ 13″ N, 4° 29′ 26″ E',
0,
null,
1974,
'https://upload.wikimedia.org/wikipedia/commons/9/9a/Rotterdam_Cube_House_street_view.jpg',
'https://en.wikipedia.org/wiki/Cube_house',
22
)

insert into PontoTuristico values(
70,
'Market Hall',
'Um escritório residencial construído com um mercado em baixo. Aberto em primeiro de outubro em 2014, possui um complexo de 228 apartamentos. A construção foi realizada pela empresa MRVDV, a estrutura acinzentada foi construída inspirada em uma ferradura de cavalo. Dentro da estrutura, as paredes são pintadas com artes dos artistas Arno Coenen e Iris Roskam.',
'51° 55′ 12″ N, 4° 29′ 13″ E',
0,
2009,
2014,
'https://upload.wikimedia.org/wikipedia/commons/1/1a/Markthal-Rotterdam.jpg',
'https://en.wikipedia.org/wiki/Market_Hall_(Rotterdam)',
22
)

insert into PontoTuristico values(
71,
'Palácio das Nações',
'Construído entre 1929 e 1937, foi a sede da Ligas das Nações (SDN), da Organização Mundial das Nações (ONU) e atualmente é sede da Sede Europeia das Nações Unidas (ONUG). Localizado na Rua da Paz, na mesma rua da sede do CICR.',
'46° 13′ 35,63″ N, 6° 08′ 25,72″ L',
0,
1929,
1937,
'https://upload.wikimedia.org/wikipedia/commons/5/5b/UN_Building_A_Southern_Lawn.jpg',
'https://pt.wikipedia.org/wiki/Pal%C3%A1cio_das_Na%C3%A7%C3%B5es',
23
)

insert into PontoTuristico values(
72,
'International Red Cross and Red Crescent Museum',
'Aberto em 1988, apresentou uma exposição chamada “Uma Aventura Humanitária”, exibindo 3 sessões representando 3 problemas contemporâneos humanitários, sendo realizados por 3 arquitetos diferentes. As obras procuram fazer o espectador sentir emoções, para que todos lembrem que as relações humanas são o coração de todas as ações humanitárias.',
'46° 13′ 38″ N, 6° 8′ 13″ E',
0,
null,
1988,
'https://media-cdn.tripadvisor.com/media/photo-s/08/4e/1e/af/international-red-cross.jpg',
'https://en.wikipedia.org/wiki/International_Red_Cross_and_Red_Crescent_Museum',
23
)

insert into PontoTuristico values(
73,
'Grand-Place de Bruxelas',
'É a praça central de Bruxelas, alguns autores a consideram a mais bela do mundo. É um grande centro histórico, geográfico e comercial, é o melhor exemplo da arquitetura belga do século XVII. Em 1695, o centro sofreu uma intensa onda de bombardeamentos franceses por 2 dias, destruindo tudo menos a Câmara Municipal. Os comerciantes reconstruíram o local com a arquitetura renascentista flamenga.',
'50° 50′ 48″ N, 4° 21′ 8″ E',
0,
1402,
1873,
'https://www.viajoteca.com/wp-content/uploads/2018/09/Grand-Place-de-Bruxelas-Maison3_opt.jpg',
'https://pt.wikipedia.org/wiki/Grand-Place_de_Bruxelas',
24
)

insert into PontoTuristico values(
74,
'Het Zinneke',
'Algumas vezes chamado de Zinneke Pis, é uma estátua de bronze erguida em 1998. Criada pelo artista Tom Frantzen, representa um cão urinando. É um exemplo do humor folclórico popular em Bruxelas.',
'50° 50′ 56″ N, 4° 20′ 44″ E',
0,
1998,
1998,
'https://upload.wikimedia.org/wikipedia/commons/c/c5/Het_Zinneke_%28DSCF5238%29_Brussels%2C_BE.jpg',
'https://en.wikipedia.org/wiki/Het_Zinneke',
24
)

insert into PontoTuristico values(
75,
'A Estátua de Zeus',
'Estátua de Zeus em Olímpia era uma figura sentada gigante, com cerca de 13 metros de altura, feita pelo escultor grego Fídias por volta de 435 a.C. no santuário de Olímpia, Grécia, e erigido no Templo de Zeus. A escultura tinha placas de marfim e painéis de ouro sobre uma estrutura de madeira, que representava o deus Zeus sentado em um trono de madeira de cedro elaborado ornamentado com ébano, marfim, ouro e pedras preciosas. Uma das Sete Maravilhas do Mundo Antigo, ela foi perdida e destruída durante o século V sem nenhuma cópia, sendo que seus detalhes e forma são conhecidos apenas através de antigas descrições e representações gregas em moedas.',
'37° 38′ 16″ N, 21° 37′ 48″ L',
3,
null,
-435,
'https://www.sitedecuriosidades.com/im/g/4D9E8.jpg',
'https://pt.wikipedia.org/wiki/Est%C3%A1tua_de_Zeus_em_Ol%C3%ADmpia',
60
)

insert into PontoTuristico values(
76,
'Colosso de Rodes',
'O Colosso de Rodes (em grego clássico: ὁ Κολοσσὸς Ῥόδιος) foi uma estátua do titã-deus do Sol da mitologia grega, Hélios, erguida na cidade de Rodes, na ilha homônima, por Carés de Lindos em 280 a.C.. Uma das sete maravilhas do mundo, foi construído para comemorar a vitória de Rodes contra o governante macedônio Antígono Monoftalmo, cujo filho, Demétrio I, sem sucesso, sitiou Rodes em 305 a.C.. De acordo com a maioria das descrições contemporâneas, o Colosso tinha aproximadamente 70 côvados, ou 33 metros, altura aproximada da Estátua da Liberdade (dos pés à coroa), o que o tornava uma das mais altas estátuas do mundo antigo. O monumento foi destruído durante um terremoto de 226 a.C. e nunca foi reconstruído.',
'36° 27′ 04″ N, 28° 13′ 40″ L',
3,
-292,
-280,
'https://umabrasileiranagrecia.com/wp-content/uploads/2010/07/19294_841517265908669_1720205027636756427_n.jpg',
'https://pt.wikipedia.org/wiki/Colosso_de_Rodes',
60
)

insert into PontoTuristico values(
77,
'Portão de Brandenburgo',
'O Brandenburger Tor foi construído entre 1789 e 1793 e é um dos portões em estilo romano que restaram na Europa, é a principal atração de Berlim e um dos símbolos do país.',
'52° 30′ 59″ N, 13° 22′ 44″ E',
0,
1788,
1791,
'https://upload.wikimedia.org/wikipedia/commons/2/2b/Berlin_Brandenburger_Tor_Abend.jpg',
'https://pt.wikipedia.org/wiki/Port%C3%A3o_de_Brandemburgo',
64
)

insert into PontoTuristico values(
78,
'Castelo de Neuschwanstein',
'O Castelo Neuschwanstein é outro cartão postal da Alemanha e o ponto turístico mais famoso da Baviera. O Castelo fica no sopé dos Alpes e começou a ser construído em 1869 por ordem do rei da Baviera Ludwig II.',
' 47° 33′ 34″ N, 10° 44′ 58″ E',
0,
1869,
1892,
'https://upload.wikimedia.org/wikipedia/commons/3/37/Neuschwanstein_castle.jpg',
'https://pt.wikipedia.org/wiki/Castelo_de_Neuschwanstein',
64
)

insert into PontoTuristico values(
79,
'Catedral de Colônia',
'A Catedral de Colônia é uma verdadeira obra-prima da arquitetura gótica. No entanto, devido ao seu longo período de construção, que durou quase seis séculos (entre 1248 e 1880), engloba e une vários estilos arquitetônicos. Ela foi nomeada Patrimônio da Humanidade pela UNESCO em 1996.',
'50° 56′ 29″ N, 6° 57′ 30″ E',
0,
1248,
1880,
'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/K%C3%B6lner_Dom_abends.jpg/300px-K%C3%B6lner_Dom_abends.jpg',
'https://pt.wikipedia.org/wiki/Catedral_de_Col%C3%B4nia',
64
)

insert into PontoTuristico values(
80,
'Reserva Natural de Gorilas de Lésio-Louna-Léfini',
'Reserva Naturelle de Gorilles de Lesio-Louna-Lefini abriga gorilas, macacos, hipopótamos e muitas espécies de pássaros. Você pode observar a vida selvagem variada da região em uma viagem de barco de uma hora nos rios Louna e Lifini, ou em uma caminhada de duas horas até o topo de uma montanha de onde se pode desfrutar de vistas panorâmicas sobre a reserva.',
'-3.276368, 15.477084',
0,
null,
1993,
'https://media-cdn.tripadvisor.com/media/photo-s/07/4e/7e/27/reserve-de-lesio-louna.jpg',
'https://www.tripadvisor.com.br/Attraction_Review-g294189-d3827163-Reviews-Reserve_Naturelle_de_Gorilles_de_Lesio_Louna_Lefini-Brazzaville.html',
11
)

insert into PontoTuristico values(
81,
'Monte Nyiragongo',
'O Monte Nyiragongo é um estratovulcão ainda ativo que permite que turistas façam caminhadas por trilhas para conhecer o maior lago de lava do mundo.',
'1° 31′ S, 29° 15′ E',
0,
null,
null,
'https://upload.wikimedia.org/wikipedia/commons/1/13/An_aerial_view_of_the_towering_volcanic_peak_of_Mt._Nyiragongo.jpg',
'https://pt.wikipedia.org/wiki/Monte_Nyiragongo',
11
)

insert into PontoTuristico values(
82,
'Zongo Falls',
'Localizada a 130 quilômetros (cerca de 90 milhas) de Kinshasa, Zongo Park oferece um cenário encantador. A atração vai fundo na floresta tropical, além de apresentar a força da água em uma belíssima queda.',
'-4.777682, 14.906430',
0,
null,
null,
'https://media.tacdn.com/media/attractions-splice-spp-674x446/07/02/af/1a.jpg',
'https://www.tripadvisor.com.br/Attraction_Review-g8801731-d1065596-Reviews-Zongo_Falls-Zongo_Equateur_Province.html',
11
)

insert into PontoTuristico values(
83,
'Centro de Conservação Lekki',
'Fundada em 1990 para  ícone da conservação da biodiversidade e centro de educação ambiental. Hoje abriga grande extensão de pântanos, e diversos animais como pássaros, macacos, crocodilos, entre outros répteis. Incluem atividades como observação de pássaros, trilhas e um auditório que apresentam seminários, palestras e eventos.',
'6.5121937, 3.4946896',
0,
null,
1990,
'https://media-cdn.tripadvisor.com/media/photo-s/0f/1a/52/40/scene.jpg',
'https://www.tripadvisor.com.br/AttractionProductReview-g304026-d19076488-Lekki_Conservation_Centre-Lagos_Lagos_State.html',
12
)

insert into PontoTuristico values(
84,
'Mesquita Nacional de Abuja',
'A mesquita foi construída em 1984 e não está aberto aos não-muçulmanos durante orações, foi a primeira mesquita da Nigéria. A mesquita aceita visitas.',
'9.0599944, 7.4876671',
0,
null,
1984,
'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b0/Abuja_National_Mosque.jpg/300px-Abuja_National_Mosque.jpg',
'https://pt.wikipedia.org/wiki/Mesquita_Nacional_de_Abuja',
12
)

insert into PontoTuristico values(
85,
'National Museum of Ethiopia (የኢትዮጵያ ብሔራዊ ሙዚየም)',
'Localizado na capital do país, contém preciosas descobertas arqueológicas, como o esqueleto de Lucy e muitos outros hominídeos. Em 1936 uma primeira ideia de um museu surgiu na Etiópia, levando à fundação do Instituto de Arqueologia em 1958, que facilitou e incentivou a pesquisa arqueológica no país. Em eventos promovidos eram exibidos a as descobertas dessas pesquisas e em 1976 a ideia de um museu nacional surgiu.',
'9.0385°N, 38.7615°E',
0,
null,
1976,
'https://upload.wikimedia.org/wikipedia/commons/0/0b/National_Museum_of_Ethiopia_Office_facility.JPG',
'https://en.wikipedia.org/wiki/National_Museum_of_Ethiopia',
17
)

insert into PontoTuristico values(
86,
'Cidade-fortaleza de Fasil Ghebbi',
'A cidade foi residência do imperador etiopiano Fasilides e de seus sucessores entre os séculos de XVI e XVII. Em volta da cidade havia uma muralha de 900 metros de comprimento, era composta por palácios, igrejas, mosteiros e diversos outros edifícios, o mais importante deles é o Castelo do Rei Fasilides, construído por volta de 1640.',
'12° 36′ 00″ N, 37° 28′ 00″ L',
0,
null,
1640,
'https://castles.today/assets/uploads/content/746/thumb/gondar-2.jpg',
'https://pt.wikipedia.org/wiki/Cidade-fortaleza_de_Fasil_Ghebbi',
17
)

insert into PontoTuristico values(
87,
'Obelisco de Axum',
'É um grande obelisco de granito, com 24 metros de altura e 800 toneladas, possui duas portas falsas na base por fins decorativos, algumas janelas decorativas e o topo é formado por um semicírculo. Foi erguido há aproximadamente 1700 anos, durante o auge do Império Axum.',
'14.1320161, 38.7191905',
0,
null,
300,
'https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/Rome_Stele.jpg/1200px-Rome_Stele.jpg',
'https://pt.wikipedia.org/wiki/Obelisco_de_Axum',
17
)

insert into PontoTuristico values(
88,
'Laas Gaal',
'Complexo de cavernas onde podem ser encontradas pinturas rupestres. É localizada perto de Hargeisa, uma área que engloba áreas nômades. Os nômades dessa região usavam as cavernas como abrigo quando havia chuvas.',
' 9° 36′ N, 44° 7′ E',
0,
null,
null,
'https://upload.wikimedia.org/wikipedia/commons/f/f1/Laas_Geel.jpg',
'https://pt.wikipedia.org/wiki/Laas_Gaal',
18
)

insert into PontoTuristico values(
89,
'Cabo Guardafui',
'É o ponto mais oriental do continente africano, conhecido também como Corno da África. No topo há um farol. Foi construído pelos italianos durante a invasão da Somália. Há uma menção à construção em Os Lusíadas.',
'11° 59′ N, 51° 15′ E',
0,
null,
1924,
'https://upload.wikimedia.org/wikipedia/commons/e/ed/Guardafui_Lighthouse.jpg',
'https://pt.wikipedia.org/wiki/Cabo_Guardafui',
18
)

insert into PontoTuristico values(
90,
'Parque Nacional dos Vulcões',
'Formado por 5 vulcões adormecidos, fica a duas horas de carro da capital. Por ser uma área turística. Lar do gorila da montanha e do macaco dourado. Inaugurado em 1925 com a finalidade de proteger os primatas do local de caçadores, foi o primeiro parque nacional inaugurado no continente africano. Em 1992 a sede do parque se tornou um campo de batalha durante a Guerra Civil de Ruanda, sendo reaberta apenas em 1999.',
'-1.432074, 29.5644243',
0,
null,
null,
'https://upload.wikimedia.org/wikipedia/commons/8/82/Puu_oo.jpg',
'https://pt.wikipedia.org/wiki/Parque_Nacional_dos_Vulc%C3%B5es',
19
)

insert into PontoTuristico values(
91,
'Inema Arts Centre',
'Inaugurado em 2012 pelos irmãos Emmanuel Nkuranga e Innocent Nkurunziza. Os irmãos inauguraram o centro Inema a fim de: incentivar o potencial artístico intocado de Ruanda; usar a expressão criativa para trazer vida à comunidade e ao país; estimular a criatividade aos habitantes e criar oportunidades às comunidades mais carentes para uma vida produtiva;',
'-1.9443617, 30.0885208',
0,
null,
2012,
'https://lirp-cdn.multiscreensite.com/09ed37c1/dms3rep/multi/opt/inema-entrance-nomad-advertising-rwanda-640w.jpg',
'https://www.inemaartcenter.com/inema-art-gallery',
19
)

insert into PontoTuristico values(
92,
'Murambi Genocide Memorial Centre',
'O memorial é dedicado ao Genocídio de Ruanda, ocorrido em 1994, o povo Tutsis, que estava era o alvo do genocídio, tentou se esconder em uma igreja local, porém o bispo os enviou para uma armadilha, pediu a eles que se mudarem para a escola técnica (hoje é o memorial), os dizendo que as tropas francesas iriam os proteger. Cerca de 65 mil tutsis foram para o local,  ao chegarem, nenhum alimento ou água foram fornecidos aos tutsis, enfraquecendo-os. Após alguns dias as tropas francesas deixaram o local, que foi atacado por outro grupo étnico local, quase todos foram mortos, os que conseguiram fugir foram mortos no dia seguinte, apenas sobrevivendo 34 pessoas. As tropas francesas trouxeram equipamentos de escavação pesados para enterrar os corpos e uma quadra de vôlei foi construída no local para disfarçar os acontecimentos.. O memorial foi construído em 21 de Abril de 1995, um ano após as mortes, sendo a escola como museu do genocídio.',
'2.454°S, 29.5684°E',
0,
null,
1995,
'https://upload.wikimedia.org/wikipedia/commons/d/db/Rwandan_Genocide_Murambi_skulls.jpg',
'https://en.wikipedia.org/wiki/Murambi_Genocide_Memorial_Centre',
19
)

insert into PontoTuristico values(
93,
'Quedas do Ruacaná',
'As quedas do Ruacaná é um conjunto de cataratas, localizado no fronteira Angola-Namíbia. O conjunto constitui uma das maiores quedas d’água da África. Abaixo da cachoeira estão instaladas duas centrais hidroeléctricas, uma delas construída na década de 1970 sendo hoje o maior centro electroprodutor da Namíbia. A capacidade instalada da central hidroeléctrica do Ruacaná é de 240 MW. As quedas de água apenas oferecem o seu aspecto majestoso durante a época das chuvas, mas ainda assim o seu espectáculo impressionante faz do local um destino popular turístico.',
' 17° 23′ S, 14° 13′ E',
0,
null,
null,
'https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Namibia_124.jpg/1200px-Namibia_124.jpg',
'https://pt.wikipedia.org/wiki/Quedas_do_Ruacan%C3%A1',
13
)

insert into PontoTuristico values(
94,
'Palácio de Ferro',
'O edifício possui uma original decoração em filigrana metálica e tem um soberbo avarandado envolvente, sendo sem sombra de dúvida, o melhor exemplar da arquitectura do ferro em Angola. A história do edifício está envolta em mistério, já que não existem registos da sua origem. Acredita-se que a estrutura em ferro forjado tenha sido construída na década de 1880 ou 90 em França, como pavilhão para uma exposição, e posteriormente desmontado e transportado de barco com destino provável a Madagáscar.',
'8.8121649, 13.2335233',
0,
null,
1890,
'https://upload.wikimedia.org/wikipedia/commons/6/62/Pal%C3%A1cio_de_Ferro.jpg',
'https://pt.wikipedia.org/wiki/Pal%C3%A1cio_de_Ferro',
13
)

insert into PontoTuristico values(
95,
'Parque Nacional da Quiçama',
'Este parque uma grande diversidade nas espécies que podemos encontrar neste parque natural, desde elefantes, girafas, bambis, leque, tartarugas, cobras, gnus, crocodilos, cabras-de-leque, hipopótamos, zebras, manatins, aves diversas, esquilos, macacos, entre outros. Transformado em parque para proteger os animais da caça em 1957, além de contar com um estabelecimento para visitantes, uma pousada e vários bungalows.',
'-9.75, 13.5811446',
0,
null,
1957,
'https://upload.wikimedia.org/wikipedia/commons/f/fa/Kissama_003.JPG',
'https://pt.wikipedia.org/wiki/Parque_Nacional_da_Quissama',
13
)

insert into PontoTuristico values(
96,
'Torre de Hassan',
'A Torre Hassan fica localizada na Boulevard Mohamed Lyazidi em Rabat, a capital de Marrocos, e nas suas proximidades, fica o Mausoléu de Mohamed V. Está também conhecida em árabe de صومعة حسان “Sawmaat hassan”, é uma parte da mesquita Hassan, foi construída  no século XII, para ser um minarete de grandes dimensões. A torre, feita de arenito vermelho, e os restos da mesquita e do Mausoléu de Mohammed V, formam um importante complexo histórico e turístico em Rabat. Ao invés de escadas, a torre teria rampas, permitindo, assim, ao muezzin, subir a cavalo até seu topo para fazer a chamada para a oração. A mesquita Hassan pretendia ser a maior do mundo, a seguir às de Grande Mesquita de Meca e à Grande Mesquita de Samarra, no Iraque.',
'34° 01′ 27″ N, 6° 49′ 22″ O',
0,
1184,
1199,
'https://upload.wikimedia.org/wikipedia/commons/8/81/Tour_Hassan-Rabat-2.jpg',
'https://pt.wikipedia.org/wiki/Torre_de_Ha%C3%A7ane',
14
)

insert into PontoTuristico values(
97,
'Túmulos Saadianos',
'Os túmulos saadianos faziam parte do legado de el Mansour, concluído em sua vida para servir como um cemitério adequado para o sultão e seus descendentes. Hoje, os túmulos estão abertos mais uma vez, permitindo que os membros do público testemunhem em primeira mão o que resta da dinastia Saadi. O complexo possui um design de tirar o fôlego, com tetos altos em cúpula, esculturas de madeira complexas e estátuas de mármore importadas. Nos túmulos, mosaicos de azulejos coloridos e estuques em forma de treliça são um testemunho da habilidade dos artesãos do século XVI. Existem dois mausoléus principais, juntos contendo 66 túmulos; enquanto o jardim repleto de rosas oferece espaço para os túmulos de mais de 100 membros da família real - incluindo conselheiros, soldados e servos de confiança.',
'31° 37′ 2″ N, 7° 59′ 19″ O',
0,
1557,
null,
'https://upload.wikimedia.org/wikipedia/commons/5/5d/Maroc_Marrakech_Saadiens_Luc_Viatour_1.jpg',
'https://pt.wikipedia.org/wiki/T%C3%BAmulos_saadianos',
14
)

insert into PontoTuristico values(
98,
'Cavernas de Hércules',
'A caverna tem duas aberturas, uma para o mar e outra para a terra. A abertura do mar é conhecida como ″O Mapa da África″. Acredita-se que os fenícios criaram a abertura do mar que tem a forma da África quando vista do mar. Existem também algumas marcações na parede em forma de olhos, que dizem ter sido feitas pelos fenícios, que compõem um mapa da área local. A caverna em si é parte natural e parte feita pelo homem. A parte feita pelo homem foi usada pelo povo berbere para cortar rodas de pedra das paredes, para fazer pedras de moinho , expandindo assim a caverna consideravelmente. Existem entradas gratuitas e pagas. A entrada na caverna custa 5 dirhams marroquinos por pessoa e 5 dirhams adicionais opcionais para o guia, mas outras moedas também são aceitas.',
'35° 45′ 37″ N, 5° 56′ 21″ W',
0,
null,
null,
'https://upload.wikimedia.org/wikipedia/commons/thumb/0/06/Cueva_de_H%C3%A9rcules_-_01.jpg/1200px-Cueva_de_H%C3%A9rcules_-_01.jpg',
'https://en.wikipedia.org/wiki/Caves_of_Hercules',
14
)

insert into PontoTuristico values(
99,
'Museu Saraya',
'O Museu Red Castle , também conhecido como Assaraya Alhamra Museum ( árabe : متحف السرايا الحمراء ) ou o Museu Arqueológico de Tripoli , é um museu nacional em Líbia. Ele está localizado no edifício histórico conhecido como Castelo Vermelho ou Saraya Vermelho. Projetado em conjunto com a UNESCO , o museu cobre 5.000 anos, desde a pré-história até a revolução da independência (1953).',
'32° 53′ 45″ N, 13° 10′ 49″ E',
0,
null,
1919,
'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Tripoli_-_Eingang_zum_Nationalmuseum.jpg/1200px-Tripoli_-_Eingang_zum_Nationalmuseum.jpg',
'https://en.wikipedia.org/wiki/Red_Castle_Museum',
15
)

insert into PontoTuristico values(
100,
'Arco de Marcus Aurelius',
'O Arco de Marco Aurélio ( árabe : قوس ماركوس أوريليوس , romanizado :  Qaus Mārkūs Aurīliyūs ) é um arco triunfal romano na cidade de Oea, Trípoli moderna , Líbia, [1] onde se encontra perto da entrada nordeste da Medina.  um arco triunfal quadrifrons , encimado por uma cúpula octogonal incomum, e foi erguido (inteiramente em mármore) por Gaius Calpurnius Celsus, duúnvir quinquenal da cidade, para comemorar as vitórias de Lúcio Vero , colega júnior e irmão adotivo do Imperador Marcus Aurelius , sobre os partos na guerra romano-parta de 161-66.',
'32° 53′ 59.6″ N, 13° 10′ 32.7″ E',
0,
null,
165,
'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Marcus_Aurelius_Arch_Tripoli_Libya.jpg/1200px-Marcus_Aurelius_Arch_Tripoli_Libya.jpg',
'https://en.wikipedia.org/wiki/Arch_of_Marcus_Aurelius',
15
)

insert into PontoTuristico values(
101,
'Pirâmide de Gizé',
'As Pirâmides de Gizé são um conjunto de três pirâmides construídas no Egito Antigo. As estruturas de pedra foram destinadas à três faraós antigos, sendo eles Kufu (ou Quéops), Quéfren, e Menkaure (ou Miquerinos), respectivamente pai, filho e neto. Neste caso, os monumentos foram construídos para que servissem de tumba dos reis. Dentre as três pirâmides construídas a maior é denominada Grande Pirâmide. Além disso, é reconhecida como uma das maravilhas da Antiguidade sendo visitada por diversos turistas ao redor do mundo. Assim, a pirâmide é formada por 169 m de altura, equivalente à 49 andares, e fica localizada na cidade de Gizé, no Egito. Em síntese, as pirâmides de Gizé são consideradas como um dos momentos mais famosos do mundo, além de serem um dos mais antigos, datados de 2.700 anos a.C. Além da pirâmide principal, há outras pirâmides menores: As três pirâmides de Gizé mais importantes Quéops, Quéfren e Miquerinos. Além dessas, há muitas outras pirâmides menores. Quéops: Conhecida também como a Grande Pirâmide de Gizé, Quéops é a maior pirâmide, além de ser considerada a mais importante. Possui uma altura de 140 metros de altura e 230 metros de base (quase 1 quilômetro de perímetro). Quéfren: A pirâmide de Quéfren é a segunda maior do Egito, ficando atrás apenas da pirâmide de Quéops. Atualmente é a única das pirâmides que ainda conserva uma pequena parte de seu antigo revestimento de calcário branco na parte superior. Miquerinos: A pirâmide de Miquerinos é a menor do conjunto mas também muito interessante. Possui uma altura de 66 metros e sua base possui um pouco mais de 100 metros.',
'29° 58′ 45″ N, 31° 08′ 01″ E',
3,
null,
-2550,
'https://upload.wikimedia.org/wikipedia/commons/a/af/All_Gizah_Pyramids.jpg',
'https://www.egito.com/piramides-gize',
16
)

insert into PontoTuristico values(
102,
'Torre do Cairo',
'Localizada no moderno distrito de Zamalek, a Torre do Cairo (Burj Al-Qāhira) é uma torre de telecomunicações construída em granito, desenhada com um aspecto estilizado e recoberta por uma treliça com a que se busca a semelhança com a flor de lótus. semejanza con la flor de loto.',
'30° 02′ 45″ N, 31° 13′ 28″ L',
0,
1956,
1961,
'https://upload.wikimedia.org/wikipedia/commons/6/6c/Cairo%2C_Tower_of_Cairo%2C_Egypt%2C_Oct_2004.jpg',
'https://pt.wikipedia.org/wiki/Torre_do_Cairo',
16
)

insert into PontoTuristico values(
103,
'Ramesseum',
'O  templo funerário do faraó Ramsés II é conhecido como o Ramesseum. Situado na margem ocidental de Tebas, estava dedicado ao Deus Amon e ao próprio faraó, encontrando-se hoje num estado bastante deteriorado. O templo era famoso pela estátua colossal de Ramessés em posição sentada (da qual apenas restam fragmentos). Nas paredes do templo foram representados eventos como a Batalha de Kadesh e a celebração da festa do Deus Min, assim como uma procissão dos numerosos filhos do faraó. No local foi descoberto um papiro que continha a obra literária ″Conto do Camponês Eloquente″ e textos de carácter médico.',
'25.7279952, 32.6082715',
0,
null,
-1200,
'https://www.descobriregipto.com/wp-content/uploads/2019/02/Templo-de-Ramesseum.png',
'https://pt.wikipedia.org/wiki/Ramesseum#:~:text=O%20templo%20funer%C3%A1rio%20do%20fara%C3%B3%20Ramess%C3%A9s%20II%20%C3%A9%20conhecido%20como%20o%20Ramesseum',
16
)

insert into PontoTuristico values(
104,
'Naama Bay',
'Naama Bay é uma a região agitada na paradisíaca praia de Sharm el-Sheikh, localizado na costa do Mar Vermelho. As alamedas da região possuem modernidade e fachadas iluminadas mescladas com a tradição de restaurantes renomados como o Budha Bar e o Hard Rock Café. Os funcionários prezam pela animação do local fazendo diversos shows e danças durante o atendimento do cliente. Outra atração da região são os shows de encantadores de serpentes ou de dança do ventre, sempre muito animados e perfeitos para quem quer conhecer um pouco da cultura local de uma forma divertida.',
'27.910528°N, 34.332422°E',
0,
null,
null,
'https://upload.wikimedia.org/wikipedia/commons/5/51/Naama_Bay_R01.jpg',
'https://www.descobriregipto.com/naama-bay/',
16
)

insert into PontoTuristico values(
105,
'Farol de Alexandria',
'Farol de Alexandria (em grego: ὁ Φάρος της Ἀλεξανδρείας) foi um farol construído pelo Reino Ptolomaico entre 280 e 247 a.C. na cidade de Alexandria. Ele tinha entre 120 e 137 metros de altura e era uma das sete maravilhas do mundo antigo, sendo que por muitos séculos foi uma das estruturas mais altas no mundo. Danificado por três terremotos entre os anos de 956 e 1323, tornou-se uma ruína abandonada. Até 1480, era a terceira maravilha antiga sobrevivente (depois do Mausoléu de Halicarnasso e da Grande Pirâmide de Gizé), quando então a última de suas pedras remanescentes foi usada para construir a Cidadela de Qaitbay no mesmo local. Em 1994, os arqueólogos franceses descobriram parte dos restos do farol no Porto Oriental de Alexandria.',
'31° 12′ 51″ N, 29° 53′ 06″ L',
3,
-280,
-247,
'https://marsemfim.com.br/wp-content/uploads/2019/03/fafa.jpg',
'https://pt.wikipedia.org/wiki/Farol_de_Alexandria',
16
)

insert into PontoTuristico values(
106,
'Parque Nacional Kruger',
'O Parque Nacional Kruger é a maior área protegida de fauna bravia da África do Sul, cobrindo cerca de 20 000 km2. Está localizado no nordeste do país, nas províncias de Mpumalanga e Limpopo e fazendo fronteira com os distritos moçambicanos de Moamba e Magude, na província de Maputo e Massingir e Chicualacuala na de Gaza. Tem uma extensão de cerca de 350 km de norte a sul e 60 km de leste a oeste. Juntamente com o Parque Nacional do Limpopo, em Moçambique, e com o Parque Nacional Gonarezhou, no Zimbabwe, forma o Parque Transfronteiriço do Grande Limpopo.',
'24° 0′ 41″ S, 31° 29′ 7″ E',
0,
null,
1926,
'https://www.descubraturismo.com.br/wp-content/uploads/2018/03/leoes-parque-nacional-kruger-capa-1600x520.jpg',
'https://pt.wikipedia.org/wiki/Parque_Nacional_Kruger',
61
)

insert into PontoTuristico values(
107,
'Boulders Beach',
'Boulders Beach (inglês: Praia dos Rochedos) é uma praia abrigada composta por pequenas enseadas entre rochedos de granito. Fica na Baía Falsa, costa leste da Península do Cabo, entre Simon′s Town e a Ponta do Cabo, perto da Cidade do Cabo na Província do Cabo Ocidental, África do Sul. A sua maior atracção turística é uma colónia de Pinguins-africanos que ali se instalou a partir de 1982.',
'34° 11′ 49″ S, 18° 27′ 04″ L',
0,
null,
null,
'https://upload.wikimedia.org/wikipedia/commons/5/55/Swimmers_at_Boulders_Beach%2C_Cape_Town.jpg',
'https://pt.wikipedia.org/wiki/Boulders_Beach',
61
)

insert into PontoTuristico values(
108,
'Mandela House Museum',
'A casa é uma caixa de fósforos de tijolo vermelho de um andar construída em 1945. Tem buracos de bala nas paredes e a fachada tem marcas de queimaduras de ataques com coquetéis molotov . O interior abriga alguns móveis originais e memorabilia, incluindo fotografias, citações dadas a Nelson Mandela e o cinturão do campeonato mundial dado a Mandela por Sugar Ray Leonard. A partir de 2009, a propriedade inclui um centro de visitantes e um pequeno museu.',
'26° 14′ 18.73″ S, 27° 54′ 31.58″ E',
0,
null,
1997,
'https://upload.wikimedia.org/wikipedia/commons/9/90/Mandela_museum_soweto.jpg',
'https://en.wikipedia.org/wiki/Mandela_House',
61
)

insert into PontoTuristico values(
109,
'Museu Frida Kahlo',
'O Museu Frida Kahlo (em espanhol: Museo Frida Kahlo), também conhecido como Casa Azul (La Casa Azul) por conta da estrutura de paredes azul-cobalto, é um museu-casa histórico e museu de arte dedicado à vida e à obra da artista mexicana Frida Kahlo. O museu contém uma coleção de obras de arte de Frida Kahlo, Diego Rivera e outros artistas, além de objetos de arte popular mexicana, artefatos pré-hispânicos, fotografias, objetos e itens pessoais. A coleção é exposta em todos os cômodos da casa, que permanece muito como era na década de 1950.',
'19° 21′ 18.112″ N, 99° 9′ 46.238″ O',
0,
null,
1958,
'https://www.98fmcuritiba.com.br/wp-content/uploads/2020/04/30093555/FridaKahlo_La-Casa-Azul.jpg',
'https://pt.wikipedia.org/wiki/Museu_Frida_Kahlo',
25
)

insert into PontoTuristico values(
110,
'El Tájin',
'El Tajín é um sítio arqueológico pré-colombiano situado cerca da cidade de Poza Rica, localizada no estado mexicano de Veracruz. A cidade de El Tajín foi a capital do estado Totonaca. O significado de seu nome é ″cidade ou lugar do trovão″ na língua totonaca, acreditando-se que fosse também um dos nomes dados ao deus totonaca da chuva e da trovoada.',
'20° 28′ 35″ N, 97° 22′ 39″ O',
0,
1,
99,
'https://miviaje.com/wp-content/uploads/2018/10/el-tajin-mexico.jpg',
'https://pt.wikipedia.org/wiki/El_Taj%C3%ADn',
25
)

insert into PontoTuristico values(
111,
'La Quebrada',
'La Quebrada é uma atração turística de Acapulco, México. Trata-se de um penhasco famoso por atrair muitos turistas que se entretém com o espetáculo proporcionado por pessoas da região, que saltam no exato momento em que uma onda se aproxima, evitando assim que se machuquem com a queda.',
'16° 50′ 46″ N, 99° 54′ 56″ O',
0,
null,
null,
'https://a.travel-assets.com/findyours-php/viewfinder/images/res40/137000/137742-Acapulco-And-Vicinity.jpg',
'https://pt.wikipedia.org/wiki/La_Quebrada_(M%C3%A9xico)',
25
)

insert into PontoTuristico values(
112,
'Alameda Central',
'Alameda Central é um parque urbano público no centro da Cidade do México . Criada em 1592, a Alameda Central é o parque público mais antigo das Américas . Está localizado no bairro de Cuauhtémoc , adjacente ao Palácio de Bellas Artes , entre a Avenida Juárez e a Avenida Hidalgo.',
'19° 26′ 08″ N, 99° 08′ 38″ W',
0,
1592,
1592,
'https://spguia.melhoresdestinos.com.br/system/fotos_local/fotos/29101/show/alameda-central.jpg',
'https://en.wikipedia.org/wiki/Alameda_Central',
25
)

insert into PontoTuristico values(
113,
'Stanley Park',
'O maior parque do Canadá e já foi considerado o mais belo do mundo, o parque é famoso por oferecer ótimas caminhadas e trilhas, além de ser formado naturalmente em volta da cidade.',
'49° 18′ 13.49″ N, 123° 8′ 42.85″ W',
0,
null,
1886,
'https://gd-canada.sfo2.digitaloceanspaces.com/2016/02/Stanley-Park.jpg',
'https://pt.wikipedia.org/wiki/Parque_Stanley',
26
)

insert into PontoTuristico values(
114,
'Museu Real da Colúmbia Britânica',
'O museu está em Victoria, em Vancouver, ele conta a história dos nativos da região, é reconhecido como uma das melhores atrações turísticas do país. O museu tem várias exposições, como ‘A história humana’, ‘História natural’, etc.',
'48° 25′ 10″ N 123° 22′ 4″ O',
0,
null,
1886,
'https://gd-canada.sfo2.digitaloceanspaces.com/2016/10/Museu-Real-da-ColC3BAmbia-BritC3A2nica-victoria.jpg',
'https://pt.wikipedia.org/wiki/Museu_Real_da_Col%C3%BAmbia_Brit%C3%A2nica',
26
)

insert into PontoTuristico values(
115,
'Seawall Vancouver',
'É um parque que abrange a maior parte do litoral da cidade, contando com mais 20 km de caminhadas e um pôr do sol magnífico.',
'49.313398°N, 123.145634°W',
0,
1917,
1980,
'https://assets.simpleviewinc.com/simpleview/image/upload/c_limit,q_65,w_845/v1/clients/vancouverbc/vancouver-seawall_8a72a089-e965-4304-ba82-17a1cf70a519.jpg',
'https://en.wikipedia.org/wiki/Seawall_(Vancouver)',
26
)

insert into PontoTuristico values(
116,
'Times Square',
'Provavelmente a avenida mais famosa do mundo, a Times Square fica em Nova York, com muitas luzes, lojas e propagandas a Times Square é caótica, é cinematográfica, é muito turística, é um pouco claustrofóbica e é muito excitante.',
'40° 45′ 28″N, 73° 59′ 09″ W',
0,
null,
1904,
'https://upload.wikimedia.org/wikipedia/commons/4/47/New_york_times_square-terabass.jpg',
'https://pt.wikipedia.org/wiki/Times_Square#:~:text=Times%20Square%20%C3%A9%20a%20denomina%C3%A7%C3%A3o,por%20v%C3%A1rios%20cruzamentos%20e%20esquinas.',
27
)

insert into PontoTuristico values(
117,
'Walt Disney World',
'O maior parque de diversões do mundo, localizado em Orlando, esse complexo de parques, lojas e outlets é um dos principais refúgios do mundo real, tendo todo um universo trabalhado nos parques para fazer os visitantes fugirem do cotidiano.',
'28.3620908, -81.5908246',
0,
null,
1971,
'https://orondoniense.com.br/wp-content/uploads/2020/05/cinderella-castle-scaled.jpg',
'https://pt.wikipedia.org/wiki/Walt_Disney_World_Resort',
27
)

insert into PontoTuristico values(
118,
'Grand Canyon',
'Grand Canyon é um parque nacional, localizado no estado do Arizona, sua principal atração é as formações rochosas, de tom avermelhado.',
'36.1° N, 112.1° W',
0,
null,
null,
'https://abrilviagemeturismo.files.wordpress.com/2016/10/thinkstockphotos-514931509.jpeg',
'https://pt.wikipedia.org/wiki/Grand_Canyon',
27
)

insert into PontoTuristico values(
119,
'Calçada da fama',
'A calçada da fama é um ponto turístico de Hollywood, a calçada se estende Hollywood Boulevard and Vine Street e reúne nomes (e mãos) de grandes nomes da indústria cinematográfica americana.',
'34.1015549, -118.3290455',
0,
1958,
null,
'https://mapadomundo.org/wp-content/uploads/2016/11/Walk-of-Fame_iStock.jpg',
'https://pt.wikipedia.org/wiki/Cal%C3%A7ada_da_Fama',
27
)

insert into PontoTuristico values(
120,
'Habana Vieja',
'A Habana Vieja é o centro histórico da capital cubana, que conta com lindos edifícios e é um dos locais mais visitados da ilha. Porém, a Habanna não conta com apenas isso em sua área também estão localizadas várias praças e museus.',
'23° 08′ 09,4″ N, 82° 21′ 30″ O',
0,
null,
null,
'https://aws.traveler.es/prod/designs/v1/assets/2000x1600/158859.jpg',
'https://pt.wikipedia.org/wiki/Cidade_antiga_de_Havana_e_suas_fortifica%C3%A7%C3%B5es',
20
)

insert into PontoTuristico values(
121,
'Museu da Revolução',
'O maior museu do país conta com maestria a história da revolução cubana, ele tem, como um de seus itens, o iate em que Fidel Castro viajou do México até Cuba. O edifício principal do museu conta as principais etapas da revolução, mas o museu possui prédios em anexo.',
'23° 08′ 30″ N, 82° 21′ 24″ O',
0,
null,
1920,
'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5b/Museum_of_Revolution_Cuba.jpg/300px-Museum_of_Revolution_Cuba.jpg',
'https://pt.wikipedia.org/wiki/Museu_da_Revolu%C3%A7%C3%A3o',
20
)

insert into PontoTuristico values(
122,
'Praça da Revolução',
'A Praça da Revolução é provavelmente o local mais fotografado da ilha, é um dos maiores pontos turísticos do país, e foi construída de 1953 a 1958, a praça tem três estátuas de heróis da revolução, uma de Che Guevara, Camilo Cienfuegos e José Martí.',
'23° 07′ 28″ N, 82° 23′ 10″ W',
0,
null,
1959,
'https://www.charutando.com.br/wp-content/uploads/2015/04/IMG_0088.jpg',
'https://en.wikipedia.org/wiki/Plaza_de_la_Revoluci%C3%B3n',
20
)

insert into PontoTuristico values(
123,
'Malecón',
'Malecón é uma grande avenida beira-mar de Havana, percorre toda a sua extensão litorânea. A avenida é um ótimo lugar para caminhar e ver o pôr do sol.',
'23° 8′ 30″ N, 82° 22′ 05″ W',
0,
null,
1901,
'https://media-cdn.tripadvisor.com/media/photo-s/11/48/78/11/malecon-de-la-habana.jpg',
'https://en.wikipedia.org/wiki/Malec%C3%B3n,_Havana',
20
)

insert into PontoTuristico values(
124,
'Varadero',
'Localizado em Cuba, Varadero fica a aproximadamente 2 horas de Havana e oferece uma ótima rede hoteleira aos turistas. Além de ser um paraíso de águas mornas e azuis.',
'23.1676567, -81.3550153',
0,
null,
null,
'https://media-cdn.tripadvisor.com/media/photo-s/16/02/7b/03/paradisus-varadero-resort.jpg',
'https://www.tripadvisor.com.br/Tourism-g147275-Varadero_Matanzas_Province_Cuba-Vacations.html',
29
)

insert into PontoTuristico values(
125,
'Montego Bay',
'A Jamaica certamente reserva praias fascinantes e lugares com muitos atrativos. o país também é conhecido por abrigar algumas das praias mais bonitas do Caribe. A cidade de Montego Bay, é conhecida por ser a capital turística do país, devido a suas belas praias.',
'18.4711239, -77.9748227',
0,
null,
null,
'https://cdn.sandals.com/sandals/v12/images/home/resorts/montego-bay.jpg',
'https://viajeibonito.com.br/montego-bay-o-que-fazer/',
29
)

insert into PontoTuristico values(
126,
'Nassau',
'Considerada uma das melhores ilhas do Caribe, a capital das Bahamas é inegavelmente o principal destino para quem deseja conhecer o país. Com praias para todos os gostos e com ótima infraestrutura hoteleira.',
'25° 4′ 1″ N, 77° 19′ 59″ O',
0,
null,
null,
'https://blog.latampass.com/wp-content/uploads/2018/06/Nassau_Foto_alarico-Shutterstock-450x490.jpg',
'https://pt.wikipedia.org/wiki/Nassau_(Bahamas)',
29
)

insert into PontoTuristico values(
127,
'Punta Cana',
'Um dos principais pontos turísticos da República Dominicana, Punta Cana é formada por quilômetros de praias de areia branca, palmeiras e águas cristalinas. Também contam com passeios a lugares paradisíacos.',
'18° 32′ N, 68° 22′ O',
0,
null,
null,
'https://www.segueviagem.com.br/wp-content/uploads/2018/12/shutterstock_1045120846.jpg',
'https://pt.wikipedia.org/wiki/Punta_Cana',
29
)

insert into PontoTuristico values(
128,
'Ilha Magdalena',
'A 35 km de Punta Arenas fica uma das mais incríveis pinguineiras da América do Sul. São mais de 120 mil pinguins-de-magalhães que, entre outubro e março, usam os 1.576 km² da ilha Magdalena para colocar seus ovos em ninhos cavados no início da primavera. O casal se reveza nos cuidados com os filhotes até o início do outono, quando migram para águas mais quentes. Em 1982, ela e a vizinha Ilha de Marta foram declaradas monumento nacional - Monumento Natural Los Pingüinos . A ilha é o local de reprodução de várias espécies de aves marinhas, principalmente o pinguim de Magalhães . A colônia de pinguins da ilha é monitorada desde 1998 e estima-se que contenha 63.000 casais reprodutores em 2007. Com exceção dos guardas-florestais, a ilha está atualmente desabitada.',
'52° 55′ 10″ S, 70° 34′ 34″ W',
0,
null,
null,
'https://upload.wikimedia.org/wikipedia/commons/2/28/Islamagdalena.jpg',
'https://en.wikipedia.org/wiki/Magdalena_Island,_Magallanes_Region',
34
)

insert into PontoTuristico values(
129,
'Parque Nacional Rapanui',
'O parque Rapa Nui foi criado em 1935, e em 1995 tornou-se Patrimônio Mundial da UNESCO.  Com mais de 70 km², esse parque se estende por toda a ilha e traz diversas áreas com características únicas que mostram histórias de civilizações que viveram na região, inclusive do povo pasquense, conhecido por grandiosas manifestações culturais. No Parque Nacional Rapa Nui, você verá uma belíssima paisagem natural e muitas áreas arqueológicas, que fazem com que o passeio se torne bastante cativante. Além disso, lá estão diversos moais, também chamados de “Cabeças da Ilha de Páscoa”, as famosas estátuas gigantes de pedras. Eles eram produzidos em uma fábrica localizada no vulcão Rano Raraku, atualmente desativado, e logo após, levados para outros lugares da ilha.',
'27° 07′ S, 109° 22′ O',
0,
null,
null,
'https://photos.wikimapia.org/p/00/00/62/61/76_big.jpg',
'https://pt.wikipedia.org/wiki/Parque_Nacional_Rapa_Nui',
34
)

insert into PontoTuristico values(
130,
'Centro San Cristóban',
'Cerro San Cristóbal (Tupahue, Monte San Cristóbal) é uma colina no norte de Santiago , Chile . Ele se eleva 850 acima do mar e cerca de 300 m acima do resto de Santiago; o pico é o segundo ponto mais alto da cidade, depois do Cerro Renca . O Cerro San Cristóbal foi batizado pelos conquistadores espanhóis em homenagem a São Cristóvão , em reconhecimento ao seu uso como marco histórico. Seu nome indígena original é Tupahue.',
'-33.4202387, -70.6488845',
0,
null,
null,
'https://images.myguide-cdn.com/chile/companies/san-cristobal-hill/large/san-cristobal-hill-637284.jpg',
'https://en.wikipedia.org/wiki/San_Crist%C3%B3bal_Hill',
34
)

insert into PontoTuristico values(
131,
'Puente de la Mujer',
'Projetada pelo arquiteto espanhol Santiago Calatrava, possui um mecanismo de giro, um dos maiores do mundo, para permitir a passagem de barcos e pedestres. A silhueta da ponte representa um casal dançando tango.',
'-34.607987, -58.3673258',
0,
1998,
2001,
'https://upload.wikimedia.org/wikipedia/commons/3/38/Puente_de_la_mujer%2C_Buenos_Aires_%2832008%29.jpg',
'https://turismo.buenosaires.gob.ar/br/otros-establecimientos/puente-de-la-mujer',
36
)

insert into PontoTuristico values(
132,
'Museu do Fim do Mundo',
'Inaugurado em 1979, resultado do esforço de moradores locais em querer descobrir o passado da cidade. Possui duas sedes, ambos os prédios são monumentos históricos, um deles é a antiga casa do governo local, o outro é o antigo prédio da do Banco da Argentina, o museu apresenta em seu acervo itens como peças antropológicas, resgates de naufrágios e entre outros.',
'54° 48′ 22.320″ S, 68° 18′ 0.720″ O',
0,
null,
1979,
'https://upload.wikimedia.org/wikipedia/commons/2/22/Museo_del_Fin_del_Mundo30.jpg',
'https://pt.wikipedia.org/wiki/Museu_do_Fim_do_Mundo',
36
)

insert into PontoTuristico values(
133,
'Planetário Galileo Galilei',
'O principal centro de divulgação científica, mais especificamente da área de astronomia, da capital do país. Possui uma sala de projeção semi-esférica que pode ser vista de fora do edifício, 360 poltronas reclináveis e uma área onde se reproduzem milhares de estrelas, planetas e satélites através de seis projetores. Possui cinco andares com diversas outras atrações.',
'34° 34′ 11″ S, 58° 24′ 42″ O',
0,
null,
1966,
'https://turismo.buenosaires.gob.ar/sites/turismo/files/planetario_noche_1200_1.jpg',
'https://turismo.buenosaires.gob.ar/br/otros-establecimientos/planetario-galileo-galilei',
36
)

insert into PontoTuristico values(
134,
'Park of the Reserve',
'Possui uma área de oito hectares, construído em um estilo neo-clássico. Desenvolvido pelo arquiteto francês Claude Sahut e abriga diversas esculturas de escultores peruanos. Em 1926 a construção foi iniciada por ordem do presidente Augusto B. A praça recebeu o nome “da Reserva” em homenagem aos soldados que lutaram na Batalha de San Juan e Chorrillos e na Batalha de Miraflores. A obra foi terminada em 1929.',
'12° 04′ 15″ S, 77° 02′ 00″ W',
0,
null,
1929,
'https://www.madebymark.com/wp-content/uploads/2014/03/IMG_2963.jpg',
'https://en.wikipedia.org/wiki/Park_of_the_Reserve',
35
)

insert into PontoTuristico values(
135,
'Machu Picchu',
'″Velha Montanha″ traduzindo literalmente do quíchua, também chamada de  “cidade perdida dos Incas”, localizado no pico de uma montanha a aproximadamente 2400 metros acima do nível do mar, é uma cidade pré-colombiana muito bem conservada. Foi descoberta apenas em 1911 e desde então apenas 30% do local é original, o resto foi reconstruído, que são facilmente diferenciadas, devido à tamanha habilidade que esses povos possuíam na hora de realizar essas construções.',
'13° 9′ 47″ S, 72° 32′ 44″ O',
1,
null,
null,
'https://cdn.getyourguide.com/img/tour/5d1873e4a6c33.jpeg/146.jpg',
'https://pt.wikipedia.org/wiki/Machu_Picchu#:~:text=Machu%20Picchu%20',
35
)

insert into PontoTuristico values(
136,
'Plaza de Armas',
'Também conhecida como Praça Maior, se encontra na capital de Peru, é o maior espaço público do país. Há diversos edifícios importantes ao redor da praça, como a Catedral de Lima e o Palácio Arquiepiscopal.',
'-12.0460038, -77.0327345',
0,
null,
null,
'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Square_in_Lima_Peru_01.jpg/350px-Square_in_Lima_Peru_01.jpg',
'https://pt.wikipedia.org/wiki/Pra%C3%A7a_Maior_de_Lima',
35
)

insert into PontoTuristico values(
137,
'Parque Nacional Galápagos',
'O Parque Nacional Galápagos é uma área de preservação natural do Equador, localizado no arquipélago de Galápagos. Descobertas em 1535, quando uma embarcação que levava o bispo do Panamá se desviou da rota que rumava ao Peru, logo que chegaram lá se espantaram com as tartarugas-gigantes que viviam lá. Em 1835 Charles Darwin visitou a ilha e sua estadia ajudou a desenvolver a Teoria da Evolução das Espécies.',
'0° 20′ S, 90° O',
0,
null,
null,
'https://www.galapagos.gob.ec/wp-content/uploads/2016/06/2016-06-23.png',
'https://pt.wikipedia.org/wiki/Parque_Nacional_Gal%C3%A1pagos',
62
)

insert into PontoTuristico values(
138,
'Plaza de la Independencia',
'Também conhecida como Plazza Grande, é a principal praça pública em Quito, é um símbolos do poder executivo do país. Seu item mais importante é o monumento para os heróis da independência de 10 de agosto de 1809, lembrando do dia da independência da monarquia espanhola.',
'-0.220081, -78.5142586',
0,
1564,
1978,
'https://www.casagangotena.com/wp-content/uploads/2018/03/plaza-grande-quito-1200x900.jpg',
'https://en.wikipedia.org/wiki/Plaza_de_la_Independencia',
62
)

insert into PontoTuristico values(
139,
'Providence Stadium',
'Também conhecido como Guyana National Stadium, é um estádio de esporte em Guiana. Foi construído especificamente para sediar os jogos da Super Eight na 2007 Cricket World Cup, de março a abril de 2007.',
'6° 45′ 27.96″ N, 58° 10′ 40.77″ W',
0,
null,
2006,
'https://i.pinimg.com/originals/81/75/12/8175124df28d9759cc8b522f91b25f5e.jpg',
'https://en.wikipedia.org/wiki/Providence_Stadium',
30
)

insert into PontoTuristico values(
140,
'1763 Monument',
'Localizado na Praça da Revolução, comemora a Revolta dos Escravos em Berbice de 1763, um evento importante na luta anti-colonial da Guiana.',
'6.8048859, -58.1528614',
0,
1976,
1976,
'https://s1.stabroeknews.com/images/2016/04/1763-Monument.jpg',
'https://www.atlasobscura.com/places/1763-monument',
30
)

insert into PontoTuristico values(
141,
'Catedral de Sal',
'Ela é uma catedral construída no interior das minas de sal de Zipaquirá, situada na Savana da capital, Bogotá. Ela é uma igreja subterrânea (180 metros abaixo do solo), esculpida por mineiros de fé católica.',
'5° 1′ 7.54″ N, 74° 0′ 33.48″ O',
0,
null,
1995,
'https://infonet.com.br/wp-content/uploads/2018/08/catedral-de-sal-silvio-16.jpg',
'https://pt.wikipedia.org/wiki/Catedral_de_Sal',
31
)

insert into PontoTuristico values(
142,
'Parque Nacional Natural Tayrona',
'O Parque Nacional Natural Tayrona é um lugar imperdível para os viajantes que gostam da natureza e de explorar ruínas antigas. Localizado na costa norte da Colômbia, o parque oferece uma variedade de ecossistemas, desde pântanos até mata de matas e florestas de nuvens.',
'11° 17′ N, 74° 11′ O',
0,
null,
1969,
'https://media.tacdn.com/media/attractions-splice-spp-674x446/06/db/5f/3a.jpg',
'https://pt.wikipedia.org/wiki/Parque_Nacional_Natural_Tayrona',
31
)

insert into PontoTuristico values(
143,
'Ilha de Margarita',
'Localizada na cidade de La Asunción, em pleno mar do Caribe.A Ilha é um dos pontos mais visitados em toda a Venezuela.E não é pra menos, as paisagens naturais encantam a todos que visitam o local.',
'11° 01′ 04″ N, 63° 55′ 20″ O',
0,
null,
null,
'https://viajando.expedia.com.br/wp-content/uploads/2014/05/Ilha-Margarita-tem-praias-para-todos-os-gostos_431_391595_1_7012435_466.jpg',
'https://pt.wikipedia.org/wiki/Ilha_de_Margarita',
33
)

insert into PontoTuristico values(
144,
'Mérida',
'Uma das poucas cidades onde é possível ver neve na Venezuela.Com 3000 mil habitantes, a cidade é famosa pelas suas universidades que atraem jovens do país inteiro.Está localizada ao norte dos Andes e os esportes radicais de neve são atrações bem disputadas.',
'20° 58′ 12″ N, 89° 37′ 12″ O',
0,
1558,
null,
'https://www.gonomad.com/wp-content/uploads/2004/07/merida-venezueala.jpg',
'https://pt.wikipedia.org/wiki/M%C3%A9rida_(Venezuela)',
33
)

insert into PontoTuristico values(
145,
'Pão de Açúcar',
'Os Morros do Pão de Açúcar e da Ucra é um complexo de morros que estão localizados no bairro da Ucra na cidade do Rio de Janeiro. Uma das principais atrações do local é o passeio de teleférico.',
'22° 56′ S, 43° 09′ W',
0,
null,
null,
'https://www.melhoresdestinos.com.br/wp-content/uploads/2019/02/passagens-aereas-rio-de-janeiro-capa2019-01.jpg',
'https://pt.wikipedia.org/wiki/Monumento_Natural_dos_Morros_do_P%C3%A3o_de_A%C3%A7%C3%BAcar_e_da_Urca',
37
)

insert into PontoTuristico values(
146,
'Avenida Paulista',
'A Avenida Paulista é uma das principais avenidas da cidade mais rica do Brasil, ela está nos limites da zona Central-Sul com a zona Central-Leste, ela abriga um complexo de lojas e empresas, além de ser um ótimo lugar para caminhar.',
'23° 33′ 41″ S, 46° 39′ 23″ W',
0,
null,
1891,
'https://media-cdn.tripadvisor.com/media/photo-m/1280/18/99/d8/ed/paulista.jpg',
'https://pt.wikipedia.org/wiki/Avenida_Paulista',
37
)

insert into PontoTuristico values(
147,
'Pelourinho',
'Pelourinho é um bairro da capital baiana, é muito conhecido pelas suas igrejas, ladeiras, e sobrados coloridos. E foi declarado Patrimônio Histórico da Humanidade pela ONU.',
'12° 58′ 19″ S, 38° 30′ 29″ W',
0,
null,
1549,
'https://upload.wikimedia.org/wikipedia/commons/4/4b/Largo_do_Pelourinho_-_Salvador.JPG',
'https://pt.wikipedia.org/wiki/Pelourinho_(Salvador)',
37
)

insert into PontoTuristico values(
148,
'Cataratas do Iguaçu',
'As cataratas do Iguaçu são um conjunto de 250 metros de quedas d’água no rio Iguaçu, está localizada entre  Parque Nacional do Iguaçu, Paraná, no Brasil, e o Parque Nacional Iguazu em Misiones, na Argentina. O lugar oferece uma vista belíssima.',
'25° 41′ 43″ S 54° 26′ 12″ O',
2,
null,
null,
'https://www.hoteldelreyfoz.com.br/wp-content/uploads/2017/11/vista-cataratas-do-iguacu-scaled.jpg',
'https://pt.wikipedia.org/wiki/Cataratas_do_Igua%C3%A7u',
37
)

insert into PontoTuristico values(
149,
'Cidade Proibida',
'A Cidade Proibida (chinês: 紫禁城; pinyin: zǐ jìn chéng; literalmente ″Cidade Proibida Púrpura″) foi o palácio imperial da China desde meados da Dinastia Ming até ao fim da Dinastia Qing. Fica localizada no centro da antiga cidade de Pequim, acolhendo actualmente o ″Palácio Museu″. Durante quase 500 anos serviu como residência do Imperador e do seu pessoal doméstico, sendo o centro cerimonial e político do governo chinês. O título de Cidade Proibida surgiu pelo facto de somente o imperador, sua família e empregados especiais terem permissão para entrar no conjunto de prédios do palácio. Sua exuberância em cores é devido a preocupação que a realeza possuía em fazer com que os deuses soubessem onde mandar as suas bênçãos, sendo impossível de não reconhecer a Cidade Proibida, que se destacava em relação às casas sem cores do resto da população.',
' 39° 54′ 56″ N 116° 23′ 27″ E',
0,
1406,
1421,
'https://thumbs.dreamstime.com/b/pequim-china-na-cidade-proibida-47525453.jpg',
'https://pt.wikipedia.org/wiki/Cidade_Proibida',
63
)

insert into Pais_PontoTuristico(1,   1,   58,         s 'Oceania')
insert into Pais_PontoTuristico(2,   2,   58,          'Oceania')
insert into Pais_PontoTuristico(3,   3,   58,          'Oceania')
insert into Pais_PontoTuristico(4,   4,   59,          'Oceania')
insert into Pais_PontoTuristico(5,   5,   59,          'Oceania')
insert into Pais_PontoTuristico(6,   6,   59,          'Oceania')
insert into Pais_PontoTuristico(7,   7,   1,              'Ásia')
insert into Pais_PontoTuristico(8,   8,   1,              'Ásia')
insert into Pais_PontoTuristico(9,   9,   1,              'Ásia')
insert into Pais_PontoTuristico(10,  10,  2,              'Ásia')
insert into Pais_PontoTuristico(11,  11,  2,              'Ásia')
insert into Pais_PontoTuristico(12,  12,  2,              'Ásia')
insert into Pais_PontoTuristico(13,  13,  2,              'Ásia')
insert into Pais_PontoTuristico(14,  14,  7,              'Ásia')
insert into Pais_PontoTuristico(15,  15,  7,              'Ásia')
insert into Pais_PontoTuristico(16,  16,  7,              'Ásia')
insert into Pais_PontoTuristico(17,  17,  8,              'Ásia')
insert into Pais_PontoTuristico(18,  18,  8,              'Ásia')
insert into Pais_PontoTuristico(19,  19,  8,              'Ásia')
insert into Pais_PontoTuristico(20,  20,  9,              'Ásia')
insert into Pais_PontoTuristico(21,  21,  9,              'Ásia')
insert into Pais_PontoTuristico(22,  22,  9,              'Ásia')
insert into Pais_PontoTuristico(23,  23,  10,             'Ásia')
insert into Pais_PontoTuristico(24,  24,  10,             'Ásia')
insert into Pais_PontoTuristico(25,  25,  10,             'Ásia')
insert into Pais_PontoTuristico(26,  26,  47,             'Ásia')
insert into Pais_PontoTuristico(27,  27,  47,             'Ásia')
insert into Pais_PontoTuristico(28,  28,  49,             'Ásia')
insert into Pais_PontoTuristico(29,  29,  49,             'Ásia')
insert into Pais_PontoTuristico(30,  30,  49,             'Ásia')
insert into Pais_PontoTuristico(31,  31,  50,             'Ásia')
insert into Pais_PontoTuristico(32,  32,  50,             'Ásia')
insert into Pais_PontoTuristico(33,  33,  42,             'Ásia')
insert into Pais_PontoTuristico(34,  34,  42,             'Ásia')
insert into Pais_PontoTuristico(35,  35,  43,             'Ásia')
insert into Pais_PontoTuristico(36,  36,  44,             'Ásia')
insert into Pais_PontoTuristico(37,  37,  56,             'Ásia')
insert into Pais_PontoTuristico(38,  38,  57,             'Ásia')
insert into Pais_PontoTuristico(39,  39,  57,             'Ásia')
insert into Pais_PontoTuristico(40,  40,  5,            'Europa')
insert into Pais_PontoTuristico(41,  41,  5,            'Europa')
insert into Pais_PontoTuristico(42,  42,  5,            'Europa')
insert into Pais_PontoTuristico(43,  43,  5,            'Europa')
insert into Pais_PontoTuristico(44,  44,  6,            'Europa')
insert into Pais_PontoTuristico(45,  45,  6,            'Europa')
insert into Pais_PontoTuristico(46,  46,  6,            'Europa')
insert into Pais_PontoTuristico(47,  47,  6,            'Europa')
insert into Pais_PontoTuristico(48,  48,  3,            'Europa')
insert into Pais_PontoTuristico(49,  49,  3,            'Europa')
insert into Pais_PontoTuristico(50,  50,  3,            'Europa')
insert into Pais_PontoTuristico(51,  51,  4,            'Europa')
insert into Pais_PontoTuristico(52,  52,  4,            'Europa')
insert into Pais_PontoTuristico(53,  53,  38,           'Europa')
insert into Pais_PontoTuristico(54,  54,  38,           'Europa')
insert into Pais_PontoTuristico(55,  55,  38,           'Europa')
insert into Pais_PontoTuristico(56,  56,  38,           'Europa')
insert into Pais_PontoTuristico(57,  57,  39,           'Europa')
insert into Pais_PontoTuristico(58,  58,  54,           'Europa')
insert into Pais_PontoTuristico(59,  59,  54,           'Europa')
insert into Pais_PontoTuristico(60,  60,  54,           'Europa')
insert into Pais_PontoTuristico(61,  61,  55,           'Europa')
insert into Pais_PontoTuristico(62,  62,  55,           'Europa')
insert into Pais_PontoTuristico(63,  63,  55,           'Europa')
insert into Pais_PontoTuristico(64,  64,  21,           'Europa')
insert into Pais_PontoTuristico(65,  65,  21,           'Europa')
insert into Pais_PontoTuristico(66,  66,  21,           'Europa')
insert into Pais_PontoTuristico(67,  67,  21,           'Europa')
insert into Pais_PontoTuristico(68,  68,  22,           'Europa')
insert into Pais_PontoTuristico(69,  69,  22,           'Europa')
insert into Pais_PontoTuristico(70,  70,  22,           'Europa')
insert into Pais_PontoTuristico(71,  71,  23,           'Europa')
insert into Pais_PontoTuristico(72,  72,  23,           'Europa')
insert into Pais_PontoTuristico(73,  73,  24,           'Europa')
insert into Pais_PontoTuristico(74,  74,  24,           'Europa')
insert into Pais_PontoTuristico(75,  75,  60,           'Europa')
insert into Pais_PontoTuristico(76,  76,  60,           'Europa')
insert into Pais_PontoTuristico(77,  77,  64,           'Europa')
insert into Pais_PontoTuristico(78,  78,  64,           'Europa')
insert into Pais_PontoTuristico(79,  79,  64,           'Europa')
insert into Pais_PontoTuristico(80,  80,  11,           'África')
insert into Pais_PontoTuristico(81,  81,  11,           'África')
insert into Pais_PontoTuristico(82,  82,  11,           'África')
insert into Pais_PontoTuristico(83,  83,  12,           'África')
insert into Pais_PontoTuristico(84,  84,  12,           'África')
insert into Pais_PontoTuristico(85,  85,  17,           'África')
insert into Pais_PontoTuristico(86,  86,  17,           'África')
insert into Pais_PontoTuristico(87,  87,  17,           'África')
insert into Pais_PontoTuristico(88,  88,  18,           'África')
insert into Pais_PontoTuristico(89,  89,  18,           'África')
insert into Pais_PontoTuristico(90,  90,  19,           'África')
insert into Pais_PontoTuristico(91,  91,  19,           'África')
insert into Pais_PontoTuristico(92,  92,  19,           'África')
insert into Pais_PontoTuristico(93,  93,  13,           'África')
insert into Pais_PontoTuristico(94,  94,  13,           'África')
insert into Pais_PontoTuristico(95,  95,  13,           'África')
insert into Pais_PontoTuristico(96,  96,  14,           'África')
insert into Pais_PontoTuristico(97,  97,  14,           'África')
insert into Pais_PontoTuristico(98,  98,  14,           'África')
insert into Pais_PontoTuristico(99,  99,  15,           'África')
insert into Pais_PontoTuristico(100, 100, 15,           'África')
insert into Pais_PontoTuristico(101, 101, 16,           'África')
insert into Pais_PontoTuristico(102, 102, 16,           'África')
insert into Pais_PontoTuristico(103, 103, 16,           'África')
insert into Pais_PontoTuristico(104, 104, 16,           'África')
insert into Pais_PontoTuristico(105, 105, 16,           'África')
insert into Pais_PontoTuristico(106, 106, 61,           'África')
insert into Pais_PontoTuristico(107, 107, 61,           'África')
insert into Pais_PontoTuristico(108, 108, 61,           'África')
insert into Pais_PontoTuristico(109, 109, 25, 'América do Norte')
insert into Pais_PontoTuristico(110, 110, 25, 'América do Norte')
insert into Pais_PontoTuristico(111, 111, 25, 'América do Norte')
insert into Pais_PontoTuristico(112, 112, 25, 'América do Norte')
insert into Pais_PontoTuristico(113, 113, 26, 'América do Norte')
insert into Pais_PontoTuristico(114, 114, 26, 'América do Norte')
insert into Pais_PontoTuristico(115, 115, 26, 'América do Norte')
insert into Pais_PontoTuristico(116, 116, 27, 'América do Norte')
insert into Pais_PontoTuristico(117, 117, 27, 'América do Norte')
insert into Pais_PontoTuristico(118, 118, 27, 'América do Norte')
insert into Pais_PontoTuristico(119, 119, 27, 'América do Norte')
insert into Pais_PontoTuristico(120, 120, 20, 'América do Norte')
insert into Pais_PontoTuristico(121, 121, 20, 'América do Norte')
insert into Pais_PontoTuristico(122, 122, 20, 'América do Norte')
insert into Pais_PontoTuristico(123, 123, 20, 'América do Norte')
insert into Pais_PontoTuristico(124, 124, 29,  'América Central')
insert into Pais_PontoTuristico(125, 125, 29,  'América Central')
insert into Pais_PontoTuristico(126, 126, 29,  'América Central')
insert into Pais_PontoTuristico(127, 127, 29,  'América Central')
insert into Pais_PontoTuristico(128, 128, 34,   'América do Sul')
insert into Pais_PontoTuristico(129, 129, 34,   'América do Sul')
insert into Pais_PontoTuristico(130, 130, 34,   'América do Sul')
insert into Pais_PontoTuristico(131, 131, 36,   'América do Sul')
insert into Pais_PontoTuristico(132, 132, 36,   'América do Sul')
insert into Pais_PontoTuristico(133, 133, 36,   'América do Sul')
insert into Pais_PontoTuristico(134, 134, 35,   'América do Sul')
insert into Pais_PontoTuristico(135, 135, 35,   'América do Sul')
insert into Pais_PontoTuristico(136, 136, 35,   'América do Sul')
insert into Pais_PontoTuristico(137, 137, 62,   'América do Sul')
insert into Pais_PontoTuristico(138, 138, 62,   'América do Sul')
insert into Pais_PontoTuristico(139, 139, 30,   'América do Sul')
insert into Pais_PontoTuristico(140, 140, 30,   'América do Sul')
insert into Pais_PontoTuristico(141, 141, 31,   'América do Sul')
insert into Pais_PontoTuristico(142, 142, 31,   'América do Sul')
insert into Pais_PontoTuristico(143, 143, 33,   'América do Sul')
insert into Pais_PontoTuristico(144, 144, 33,   'América do Sul')
insert into Pais_PontoTuristico(145, 145, 37,   'América do Sul')
insert into Pais_PontoTuristico(146, 146, 37,   'América do Sul')
insert into Pais_PontoTuristico(147, 147, 37,   'América do Sul')
insert into Pais_PontoTuristico(148, 148, 37,   'América do Sul')
insert into Pais_PontoTuristico(149, 149, 63,             'Ásia')