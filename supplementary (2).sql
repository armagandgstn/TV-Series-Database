create table TvSeries (
    title varchar(40) not null,
    year int not null,
    genre varchar(30) not null,
    overallRating real not null,
	primary key(title)
);

create table Actor (
    actorID int not null,
    name char(30) not null,
    surname varchar(30) not null,
    gender varchar(10) not null,
    age int not null,
	primary key(actorID)
);

create table Director (
    directorID int not null,
    name char(30) not null,
    surname varchar(30) not null,
    age int not null,
	primary key(directorID)
);

create table Episode (
    episodeNo int not null,
    title varchar(40) not null,
    directorID int not null,
    rating real not null,
    primary key (episodeNo, title),
	constraint Director foreign key(directorID) references Director(directorID)
);

create table Acts (
    actorID int not null,
    episodeNo int not null,
    title varchar(40) not null,
    primary key (actorID, episodeNo, title),
	constraint Actor foreign key(actorID) references Actor(actorID),
	constraint Episode foreign key(episodeNo, title) references Episode(episodeNo, title)
);



insert into TvSeries values('Game of Thrones',2011 ,'Action',9.5);
insert into TvSeries values('Breaking Bad',2008 ,'Crime',9.5);
insert into TvSeries values('Friends',1994 ,'Comedy',8.9);
insert into TvSeries values('Two and a Half Men',2003 ,'Comedy',7.1);
insert into TvSeries values('Big Bang Theory',2007 ,'Comedy',8.2);
insert into TvSeries values('Spartacus',2010 ,'Action',8.5);


insert into Actor values (1,'Emilia','Clarke','Female',32);
insert into Actor values (2,'Aaron','Paul','Male',39);
insert into Actor values (3,'Jennifer','Aniston','Female',49);
insert into Actor values (4,'Sophie','Turner','Female',22);
insert into Actor values (5,'Charlie','Sheen','Male',53);
insert into Actor values (6,'Jon','Cryer','Male',53);
insert into Actor values (7,'Peter','Dinklage','Male',49);
insert into Actor values (8,'Melissa','Rauch','Female',38);
insert into Actor values (9,'Manu','Bennett','Male',49);
insert into Actor values (10,'Lena','Headey','Female',45);
insert into Actor values (11,'Gemma','Whelan','Female',40);
insert into Actor values (12,'Jennifer','Lawrence','Female',32);


insert into Director values (11,'Miguel','Sapochnik',78);
insert into Director values (12,'Vince','Gilligan',51);
insert into Director values (13,'Kevin','Bright',63);
insert into Director values (14,'David','Petrarca',53);
insert into Director values (15,'Andy','Ackerman',62);
insert into Director values (16,'Stan','Lee',95);
insert into Director values (17,'Bruce','Lee',66);

insert into Episode values (48,'Game of Thrones',11,9.9);
insert into Episode values (129,'Friends',16,8.9);
insert into Episode values (36,'Breaking Bad',15,9.9);
insert into Episode values (25,'Game of Thrones',14,8.9);
insert into Episode values (3,'Two and a Half Men',12,7.9);
insert into Episode values (23,'Two and a Half Men',13,9.9);
insert into Episode values (250,'Big Bang Theory',14,9.9);
insert into Episode values (34,'Spartacus',14,9.4);
insert into Episode values (44,'Breaking Bad',15,9.9);
insert into Episode values (21,'Big Bang Theory',14,8.2);
insert into Episode values (22,'Big Bang Theory',14,8.1);

insert into Acts(actorID,episodeNo,title) values (1,48,'Game of Thrones');
insert into Acts(actorID,episodeNo,title) values (2,36,'Breaking Bad');
insert into Acts(actorID,episodeNo,title) values (3,129,'Friends');
insert into Acts(actorID,episodeNo,title) values (4,25,'Game of Thrones');
insert into Acts(actorID,episodeNo,title) values (5,3,'Two and a Half Men');
insert into Acts(actorID,episodeNo,title) values (6,23,'Two and a Half Men');
insert into Acts(actorID,episodeNo,title) values (7,48,'Game of Thrones');
insert into Acts(actorID,episodeNo,title) values (7,25,'Game of Thrones');
insert into Acts(actorID,episodeNo,title) values (8,250,'Big Bang Theory');
insert into Acts(actorID,episodeNo,title) values (9,34,'Spartacus');
insert into Acts(actorID,episodeNo,title) values (10,48,'Game of Thrones');
insert into Acts(actorID,episodeNo,title) values (10,25,'Game of Thrones');
insert into Acts(actorID,episodeNo,title) values (5,23,'Two and a Half Men');
insert into Acts(actorID,episodeNo,title) values (6,3,'Two and a Half Men');
insert into Acts(actorID,episodeNo,title) values (11,48,'Game of Thrones');


