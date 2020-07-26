
INSERT INTO `users` VALUES (1,'kjaspar0@addtoany.com','970-336-0773','05ca4e4fb4f920ef9eef7315b95478ce3ac0e589');

INSERT INTO `users` (email, phone, pass ) 
values ('tseabert1@yellowpages.com','885-270-6713','f32fbcf0821be759a4346028fec386200bbcd8d9');


INSERT INTO `users` values
(3,'drudd2@tripadvisor.com','534-711-6937','4f25c59ed96ed8a830b1cabcae4d6f19a387877a'),
(4,'kgaisford3@google.co.jp','972-386-6726','1b14b5bdbdb4e6e3b7941af7475e7891eb248cea'),
(5,'oboagey4@timesonline.co.uk','571-714-2497','9dd0fbbed7cbce4df85dc9280513f3810410c44a'),
(6,'zsutton5@washingtonpost.com','400-172-7693','bd86b1eec80ea467f4aeac07bcc5a60306a29441'),
(7,'fbarbour6@tinyurl.com','127-504-6540','71cf76eecc785f2d5f6102e5e8fa044cda0eef52'),
(8,'prafter7@ca.gov','335-828-3373','d839f0b7c3758e59da25e7aaf5d40860eca15939'),
(9,'kerickssen8@infoseek.co.jp','628-923-6993','ce8e73dab2bf9fdca65c6ae660595f31b1527fc1'),
(10,'ejoubert9@edublogs.org','391-257-0069','0fafa0dc0b39a2db72d3b2aedc9d3c54389df107');


INSERT `users` 
	set email = 'mmationa@barnesandnoble.com', 
		phone = '817-403-5120', 
		pass =  '04f12bf833d2d44cf8eaf92163277e1172575535';
	

INSERT INTO `profiles` VALUES (1,1,'m','Сергей','Сергеев','1983-03-21',395,'2020-07-17 19:24:04','Одинцово');

INSERT INTO `profiles` (user_id, gender, name, surname, birthday, photo_id, hometown ) VALUES 
(2,'f','Вера','Клюквина','1987-03-15',652,'Сатка');


INSERT INTO vk0907.`users` (email, phone, pass ) 
select email, phone, pass from snet_v1.`users` where snet_v1.`users`.id between 12 and 100;

INSERT INTO vk0907.`users` (email, phone, pass ) 
select email, phone, pass from snet_v1.`users` where snet_v1.`users`.id between 101 and 150;

INSERT INTO vk0907.profiles (user_id,gender, name, surname,birthday,photo_id, created_at,hometown)
select user_id,gender, name, lastname,birthday,photo_id, created_at,hometown from snet_v1.`profiles` 
where snet_v1.`profiles`.id between 3 and 100;

INSERT INTO vk0907.profiles (user_id,gender, name, surname,birthday,photo_id, created_at,hometown)
select user_id,gender, name, lastname,birthday,photo_id, created_at,hometown from snet_v1.`profiles` 
where snet_v1.`profiles`.id limit 50;


update friend_requests 
	set satus = 'approved'
where initiator_user_id = 1 and target_user_id = 2;


select distinct name from vk.profiles ;

select * from vk.profiles limit 3 offset 6;

select * from vk.profiles limit 6, 3;

select * from vk.profiles where name = 'magnam';

select * from vk.profiles where name like 'E%';
select * from vk.profiles where id between 80 and 93;

select concat(name, ' ', surname) as profiles_list from vk.profiles;
select count(*)  from vk.profiles where name like 'E%';
select name, count(*)  from vk.profiles group by name;
select name, count(*)  as person from vk.profiles group by name order by person desc;


delete from profiles where id>89;
delete from profiles;

truncate table profiles;
