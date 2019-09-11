Create database J3LP0004;

use J3LP0004;

Create table article (
	id int identity(1,1) primary key,
	title varchar(30) not null,
	author varchar(30) not null,
	[description] varchar(255) not null,
	[date] datetime not null,
	ref varchar(255) not null
);
drop table article;
select * from article;

Insert into article (title, author, [description], [date], ref)
values ('How to master Midlane','Steve Nguyen','Midlane by far is the most difficult lane in a dota match cause it requires player to have the best skill in a team to handle out.', CURRENT_TIMESTAMP, 'how-to-master-midlane.jsp');

Insert into article (title, author, [description], [date], ref)
values ('How to master Offlane','Hung','Offlane used to be the hardest lane in dota 2 where you only have to versus other 3 enemies. If you are kind of player that unpatient and easy-tempered, then you are not fit for this role. ', CURRENT_TIMESTAMP, 'how-to-master-offlane.jsp');

Insert into article (title, author, [description], [date], ref)
values ('How to master Support','Steve Tran','There is a false saying that if you are new to dota 2, play support. It is a misunderstanding about support with made by a lot of average player.', CURRENT_TIMESTAMP, 'how-to-master-support.jsp');

Insert into article (title, author, [description], [date], ref)
values ('Vietnam is the most peaceful', 'Nguyen Phu Trong', 'In Vietnam, people have water to drink, have electricity for using, have cars for traveling, have schools and alot of things.', CURRENT_TIMESTAMP, 'most-peaceful-country-in-the-world.jsp');

Insert into article (title, author, [description], [date], ref)
values ('China is the most populated', 'Phi Khanh', 'China is by far the most populated country in the world with the population of 1.5 billions.', CURRENT_TIMESTAMP, 'most-populated-in-the-world.jsp');

Insert into article (title, author, [description], [date], ref)
values ('East Laos Empire','DCSVN','East Laos Empire is considered to be the most powerful country in SEA compared to its strength of economy and millitary.', CURRENT_TIMESTAMP, 'east-laos-empire.jsp');