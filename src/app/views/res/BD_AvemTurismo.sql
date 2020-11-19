create table PontoTuristico(
idPontoTuristico int primary key,
nomePonto varchar(100) not null,
descricao varchar(500) not null,
coordenada varchar(50) not null,
isMaravilha int not null,
inicioConstrucao datetime null,
fimConstrucao datetime null,
urlFoto varchar(2083) not null,
idPais int not null,
constraint idPais foreign key(idPais) references Pais(idPais)
)

create table Pais_PontoTuristico(
idPais_PontoTuristico int primary key,
idPaises int not null,
constraint idPaises foreign key(idPaises) references Pais(idPais),
idPontoTuristico int not null,
constraint idPontoTuristico foreign key(idPontoTuristico) references PontoTuristico(idPontoTuristico),
continente varchar(50) not null
)

create table Pais(
idPais int primary key,
nomePais varchar(60) not null,
numHabitantes varchar(30) not null,
area int not null,
custoDeVida money not null
)

insert into PontoTuristico values(1,'Teatro Bolshoi', 'Foi desenhado pelo arquiteto Joseph Bové (Osip Ivanovich Bové) para abrigar espetáculos de ópera e balé. É sede da Academia Estatal de Coreografia de Moscou, também conhecida como Academia de Balé Bolshoi, Companhia de Balé Bolshoi ou simplesmente Balé Bolshoi, sendo uma das mais antigas e prestigiosas companhias de dança do mundo. Além de é possível fazer um tour guiado pelo local, para conhecer toda sua lindíssima história.',
'55°45′37″N,37°37′07″L', 0, '1/1/1821', '1/1/1825', 'https://ogimg.infoglobo.com.br/cultura/24334034-a2d-e77/FT1086A/652/bolshoi.jpg', 1)

insert into PontoTuristico values(2, 'Museu da Guerra Fria', 'Conhecido como Bunker 42, o museu leva o visitante ao antigo bunker de Stalin,que fica cerca de 20 andares abaixo da superfície.O Bunker 42 é uma reconstituição fiel dos ambientes usados durante a guerra, fazendo com que o visitante tenha uma visão de como eram feitas as operações na época.',
'55° 45′ 37″ N, 37° 37′ 07″ L', 0, '1/1/1951', '1/1/1956', 'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-674x446/06/6c/38/52.jpg', 1)

insert into PontoTuristico values(3, 'Museu Estatal Hermitage', 'É um dos maiores museus de arte do mundo e sua vasta coleção possui itens de praticamente todas as épocas, estilos e culturas da história russa, européia, oriental e do norte da África, e está distribuída em dez prédios, situados ao longo do rio Neva, dos quais sete constituem por si mesmos monumentos artísticos e históricos de grande importância.',
'59° 56 26.02" N 30° 18 49.00" E', 0, '1/1/1710', '1/1/1762', 'https://upload.wikimedia.org/wikipedia/commons/1/17/Spb_06-2012_Palace_Embankment_various_14.jpg', 1)

insert into PontoTuristico values(4, 'Museu Memorial da Paz de Hiroshima', 'É um dos maiores museus de arte do mundo e sua vasta coleção possui itens de praticamente todas as épocas, estilos e culturas da história russa, européia, oriental e do norte da África, e está distribuída em dez prédios, situados ao longo do rio Neva, dos quais sete constituem por si mesmos monumentos artísticos e históricos de grande importância.',
'34º 23" N 132º 27" E', 0, '', '1/1/1915', 'https://upload.wikimedia.org/wikipedia/commons/8/8f/A-bomb_dome.jpg', 2)

insert into PontoTuristico values(5, 'Parque de Nara', 'O Parque Nara ocupa uma imensa área aos pés do Monte Wakakusa e é cheio de cervos muito dóceis e amistosos. O local é imenso, abrigando templos, museus, santuários, jardins, barraquinhas de comida etc. Os turistas que visitam esse lindo recanto em Nara garantem que o ideal é reservar um dia inteiro para passear pelo parque, sobretudo no caso de quem viaja com crianças.',
'34° 34" N 135° 46 E', 0, '', '', 'https://www.viagemmemoravel.com.br/wp-content/uploads/2017/08/parque-de-nara.jpg', 2)

insert into PontoTuristico values(6, 'Tokyo Skytree', 'Com 634 metros de altura, a Tokyo Skytree é a maior torre do mundo. Ela foi projetada com o objetivo de realmente ser a maior torre já construída e se destaca no skyline de Tokyo. A torre tem uma coloração branca e recebe uma iluminação bonita durante a noite.',
'35° 42′ 36″ N, 139° 48′ 39″ L', 0,'1/1/2008', '1/1/2008', 'https://rimage.gnst.jp/livejapan.com/public/article/detail/a/00/00/a0000165/img/basic/a0000165_main.jpg', 2)

insert into PontoTuristico values(8, 'Lotte World', 'O parque temático Lotte World é dividido em pequenos parques:  “Lotte World Adventure”, “Water Park” e o “Lotte World Aquarium”. Ele conta com diversas atrações, entre elas  um parque de diversões ao ar livre chamado “Magic Island”, uma ilha artificial dentro de um lago ligado por monotrilho, shopping centers, um hotel de luxo, um museu folclórico, instalações desportivas e cinemas.', 
'37° 30′ 45″ N, 127° 06′ 09″ L', 0, '', '1/1/1405', 'https://www.vviptravel.com/wp-content/uploads/2019/05/lotte-world-theme-park-castle.jpg', 2)

insert into PontoTuristico values(7, 'Sanjusangendo Temple', 'Sanjusangendo (三十 三 間 堂, Sanjūsangendō) é o nome popular de Rengeo-in, um templo no leste de Kyoto, famoso por suas 1001 estátuas de Kannon , a deusa da misericórdia. O templo foi fundado em 1164 e reconstruído um século depois, após a estrutura original ter sido destruída em um incêndio.',
'34° 59′ 16″ N, 135° 46′ 18″ L', 0, '', '1/1/1164', 'http://www.coisasdojapao.com/wp-content/uploads/2017/04/10.jpg', 2)

insert into PontoTuristico values(9, 'Complexo de Palácios de Changdokkgung', 'Esta atração é um grande conjunto de palácios, fazendo parte dos grandes palácios construídos na era Chonson. Foi declarado como patrimônio da humanidade pela UNESCO em 1997.',
'37° 33′ 00″ N, 126° 59′ 00″ L', 0, '', '',)

--sp_help PontoTuristico
select * from PontoTuristico
insert into Pais values(1, 'Rússia', '145 milhões', 17100000, 657.00)
insert into Pais values(2, 'Japão', '127 milhões', 377915, 1216.6)

alter table PontoTuristico
alter column descricao varchar(8000) not null

drop table PontoTuristico
INSERT INTO `pontoturistico`(
    `idPontoTuristico`,
    `nomePonto`,
    `descricao`,
    `coordenada`,
    `isMaravilha`,
    `inicioConstrucao`,
    `fimConstrucao`,
    `urlFoto`,
    `idPais`
)
VALUES(
    1,
    'Teatro Bolshoi',
    'Foi desenhado pelo arquiteto Joseph Bové (Osip Ivanovich Bové) para abrigar espetáculos de ópera e balé. É sede da Academia Estatal de Coreografia de Moscou, também conhecida como Academia de Balé Bolshoi, Companhia de Balé Bolshoi ou simplesmente Balé Bolshoi, sendo uma das mais antigas e prestigiosas companhias de dança do mundo. Além de é possível fazer um tour guiado pelo local, para conhecer toda sua lindíssima história.',
    '55°45′37″N,37°37′07″L',
    0,
    '1/1/1821',
    '1/1/1825',
    'https://ogimg.infoglobo.com.br/cultura/24334034-a2d-e77/FT1086A/652/bolshoi.jpg',
    1
)