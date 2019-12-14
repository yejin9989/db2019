--create database Shoppingmall_X;
--use Shoppingmall_X;

SET foreign_key_checks = 0;
DROP TABLE CATEGORY CASCADE CONSTRAINTS PURGE;;
DROP TABLE ITEM CASCADE CONSTRAINTS PURGE;;
DROP TABLE PRODUCERLOCATION CASCADE CONSTRAINTS PURGE;;
DROP TABLE RETAILER CASCADE CONSTRAINTS PURGE;;
DROP TABLE CUSTOMER CASCADE CONSTRAINTS PURGE;;
DROP TABLE SHOPPINGBAG CASCADE CONSTRAINTS PURGE;;
DROP TABLE CUSTOMEROPINION CASCADE CONSTRAINTS PURGE;;
DROP TABLE HAS_A CASCADE CONSTRAINTS PURGE;;
DROP TABLE ORDER1 CASCADE CONSTRAINTS PURGE;;
DROP TABLE ORDER_LIST CASCADE CONSTRAINTS PURGE;;
SET foreign_key_checks = 1;

create table CATEGORY (
Main_category VARCHAR(30) NOT NULL,
Sub_category VARCHAR(30) NOT NULL PRIMARY KEY);

create table ITEM (
Importer VARCHAR(30),
Item_number VARCHAR(13) NOT NULL PRIMARY KEY,
Item_prod_loca VARCHAR(30),
Origin VARCHAR(30),
Item_name VARCHAR(30) NOT NULL,
Price INT NOT NULL,
Expiration_date DATE,
Name_of_category VARCHAR(30) NOT NULL,
Item_image VARCHAR(100) NOT NULL);

create table PRODUCERLOCATION (
Producer_Location VARCHAR(30) PRIMARY KEY);

create table RETAILER (
Retailer_name VARCHAR(30) NOT NULL,
Retailer_number INT NOT NULL PRIMARY KEY);

create table CUSTOMER(
Id VARCHAR(15) NOT NULL PRIMARY KEY,
PW VARCHAR(20) NOT NULL,
Sex CHAR,
Address VARCHAR(100) NOT NULL,
Age INT,
Name VARCHAR(30),
Phone_number VARCHAR(20),
Job VARCHAR(20));

create table SHOPPINGBAG(
Customer_id VARCHAR(15),
Purchase_item VARCHAR(13),
Quantity INT,
PRIMARY KEY(Customer_id, Purchase_item));

create table CUSTOMEROPINION(
Comment1 VARCHAR(100),
Writer_id VARCHAR(30) NOT NULL,
Item_num VARCHAR(13) NOT NULL,
PRIMARY KEY(Writer_id, Item_num));

create table HAS_A(
Stock INT,
Ino VARCHAR(13) NOT NULL,
Rno INT NOT NULL,
PRIMARY KEY(Ino, Rno));

create table ORDER1(
Cid VARCHAR(30) NOT NULL,
Order_number INT NOT NULL PRIMARY KEY,		 	
Order_date DATE,
Delivery_retailer INT);

create table ORDER_LIST (
Order_num INT NOT NULL,
Pitem VARCHAR(13) NOT NULL,
Pquantity INT,
PRIMARY KEY(Order_num, Pitem));

insert into CATEGORY values('과일/견과','사과/배');
insert into CATEGORY values('과일/견과','감귤/한라봉');
insert into CATEGORY values('과일/견과','감/곶감');
insert into CATEGORY values('채소','시금치/부추');
insert into CATEGORY values('채소','두부/콩나물');
insert into CATEGORY values('채소','간편나물/바다채소');
insert into CATEGORY values('쌀/잡곡','수입잡곡');
insert into CATEGORY values('쌀/잡곡','콩/보리');
insert into CATEGORY values('채소','쌀 중량별');

insert into ITEM values(NULL,'1000027990213','(주)자연의모든것', '국내산', '시금치 200g', 1800,  '2018-11-02', '시금치/부추', 'http://item.ssgcdn.com/13/02/99/item/1000027990213_i1_1200.jpg');
insert into ITEM values(NULL, '1000027502323', '오창농협', '국내산', '무농약부추', 2500, '2018-10-29', '시금치/부추', 'http://item.ssgcdn.com/23/23/50/item/1000027502323_i1_1200.jpg');
insert into ITEM values(NULL, '1000015513302', '하늘농부유기농영농조합법인', '국내산', '조선부추', 1980, '2018-10-30', '시금치/부추', 'http://item.ssgcdn.com/02/33/51/item/1000015513302_i1_1200.jpg');
insert into ITEM values(NULL, '1000023464935', '지은농업회사법인', '국내산', '무농약베이비시금치', 3880, '2018-11-01', '시금치/부추', 'http://item.ssgcdn.com/35/49/46/item/1000023464935_i1_1200.jpg');
insert into ITEM values(NULL, '1000030230577', '안산팜영농조합','국내산', '시금치 500g', 4800, '2018-11-05', '시금치/부추', 'http://item.ssgcdn.com/77/05/23/item/1000030230577_i1_1200.jpg');
insert into ITEM values(NULL, '0000007452331', '풀무원식품', '외국산', '부드러운찌개두부', 1300, '2018-12-01', '두부/콩나물', 'http://item.ssgcdn.com/31/23/45/item/0000007452331_i1_1200.jpg');
insert into ITEM values(NULL, '1000021167898', '신선촌(주)', '중국산', '깨끗한콩나물', 1500, '2018-11-03', '두부/콩나물', 'http://item.ssgcdn.com/61/66/45/item/0000008456661_i1_1200.jpg');
insert into ITEM values(NULL, '1000019004601', '(주)에스엔푸드', '외국산', '노릇하게잘구워지는부침두부', 1180, '2018-12-02', '두부/콩나물', 'http://item.ssgcdn.com/01/46/00/item/1000019004601_i1_1200.jpg');
insert into ITEM values(NULL, '1000015849657', '(주)한생종천공장', '국내산', '도토리묵', 2880, '2018-11-07', '두부/콩나물', 'http://item.ssgcdn.com/57/96/84/item/1000015849657_i1_1200.jpg');
insert into ITEM values(NULL, '1000025087780', '오창농협', '국내산', '숙주나물', 2900, '2018-11-06', '두부/콩나물', 'http://item.ssgcdn.com/80/77/08/item/1000025087780_i1_1200.jpg');
insert into ITEM values(NULL, '0000008289403', '(주)영심', '국내산', '미역줄기', 2780, '2018-11-10', '간편나물/바다채소', 'http://item.ssgcdn.com/03/94/28/item/0000008289403_i1_1200.jpg');
insert into ITEM values(NULL, '1000028975052', '울진해방풍영농조합법인', '국내산', '울진해방풍', 48000, '2018-12-05', '간편나물/바다채소', 'http://item.ssgcdn.com/52/50/97/item/1000028975052_i1_1200.jpg');
insert into ITEM values(NULL, '1000020377480', '선진상회', '국내산', '완도찐톳', 9490, '2019-02-10', '간편나물/바다채소', 'http://item.ssgcdn.com/80/74/37/item/1000020377480_i1_1200.jpg');
insert into ITEM values(NULL, '1000019757676', '오복농산영농조합법인', '국내산', '배추우거지', 12900, '2019-01-05', '간편나물/바다채소', 'http://item.ssgcdn.com/76/76/75/item/1000019757676_i1_1200.jpg');
insert into ITEM values(NULL, '1000018136997', '머쉬텍', '국내산', '동충하초건초', 105000, '2019-10-26', '간편나물/바다채소', 'http://item.ssgcdn.com/97/69/13/item/1000018136997_i1_1200.jpg');
#insert into ITEM values('농업회사법인(유)광복', '1000021474017', '광복', '캐나다산', '흰강낭콩', 4280,'2019-12-24', '수입잡곡');
insert into ITEM values('대구농산', '2097000288598', '(주)라이스텍', '캐나다산', '오트밀', 2670, '2018-11-02', '수입잡곡', 'http://item.ssgcdn.com/98/85/28/item/2097000288598_i1_1200.jpg');
insert into ITEM values('대구농산', '1000023151723', '두보식품', '캐나다산' ,'햄프씨드', 9900, '2018-11-11', '수입잡곡', 'http://item.ssgcdn.com/23/17/15/item/1000023151723_i1_1200.jpg');
insert into ITEM values('한수실업', '1000029158987', NULL, '캐나다산', '귀리', 7600, '2019-10-10', '수입잡곡', 'http://item.ssgcdn.com/87/89/15/item/1000029158987_i1_1200.jpg');
insert into ITEM values(NULL, '1000028530974', '해가든', '국내산', '늘보리', 7900, '2018-12-31', '수입잡곡', 'http://item.ssgcdn.com/74/09/53/item/1000028530974_i1_1200.jpg');
insert into ITEM values(NULL, '1000029112883', '안중농협미곡종합처리장', '국내산', '경기미고시히카리', 36800, '2019-02-02', '쌀 중량별', 'http://item.ssgcdn.com/83/28/11/item/1000029112883_i1_1200.jpg');
insert into ITEM values(NULL, '0000006610289', 'OK라이스센터', '국내산', '한눈에반한쌀' ,41900 ,'2019-03-03', '쌀 중량별', 'http://item.ssgcdn.com/89/02/61/item/0000006610289_i1_1200.jpg');
insert into ITEM values(NULL ,'1000006972256', '두보식품', '국내산', '유기농쌀', 38800, '2019-05-05', '쌀 중량별', 'http://item.ssgcdn.com/56/22/97/item/1000006972256_i1_1200.jpg');
insert into ITEM values(NULL, '0000008016579', '문막농협미곡종합처리장', '국내산' ,'토토미', 29800 ,'2019-04-04', '쌀 중량별', 'http://item.ssgcdn.com/79/65/01/item/0000008016579_i1_1200.jpg');
insert into ITEM values(NULL, '1000030385472', '명성제분', '국내산', '행복한쌀눈', 13320 ,'2019-01-01', '쌀 중량별', 'http://item.ssgcdn.com/72/54/38/item/1000030385472_i1_1200.jpg');
insert into ITEM values(NULL, '1000005077033', '영농조합법인 한국씨엔에스', '국내산', '청송 꿀사과 5kg', 19900, '2018-11-10', '사과/배', 'http://item.ssgcdn.com/66/43/17/item/1000011174366_i1_1200.jpg');
insert into ITEM values(NULL,'0000008785392','구성농협','국내산','맛있는사과 5kg', 14800,'2018-11-11','사과/배', 'http://item.ssgcdn.com/92/53/78/item/0000008785392_i1_1200.jpg');
insert into ITEM values(NULL,'1000030233126','제일물산','국내산','함양사과 10kg',20000,'2018-11-20','사과/배', 'http://item.ssgcdn.com/65/85/08/item/1000011088565_i1_1200.jpg');
insert into ITEM values(NULL,'1000007002778','영농조합법인 한국씨엔에스','국내산','달콤한 배 3kg',11900,'2018-11-21','사과/배', 'http://item.ssgcdn.com/78/27/00/item/1000007002778_i1_1200.jpg');
insert into ITEM values(NULL,'1000029201625','구성농협','국내산','나주 황금배 4kg',18800,'2018-11-23','사과/배', 'http://item.ssgcdn.com/42/42/79/item/1000028794242_i1_1200.jpg');
insert into ITEM values(NULL,'1000019306146','부성훈','국내산','제주 노지감귤5kg',14800,'2018-11-22','감귤/한라봉', 'http://item.ssgcdn.com/46/61/30/item/1000019306146_i1_1200.jpg');
insert into ITEM values(NULL,'1000030328089','삼경농산','국내산','청정 제주감귤 5kg',21500,'2018-11-20','감귤/한라봉', 'http://item.ssgcdn.com/89/80/32/item/1000030328089_i1_1200.jpg');
insert into ITEM values(NULL,'1000029981285','희경이네귤창고','국내산','제주직송 가정용 황금향3kg',19900,'2018-11-15','감귤/한라봉', 'http://item.ssgcdn.com/85/12/98/item/1000029981285_i1_1200.jpg');
insert into ITEM values(NULL,'1000013876582','부성훈','국내산','노란열매 농장의 제주감귤5kg',12800,'2018-11-26','감귤/한라봉', 'http://item.ssgcdn.com/82/65/87/item/1000013876582_i1_1200.jpg');
insert into ITEM values(NULL,'1000029715468','감귤농원','국내산','제주황금향2kg',22800,'2018-11-16','감귤/한라봉', 'http://item.ssgcdn.com/68/54/71/item/1000029715468_i1_1200.jpg');
insert into ITEM values(NULL,'1000024337327','영농조합법인 한국씨엔에스','국내산','익혀먹는 달콤한 반시3kg',10900,'2018-11-17','감/곶감', 'http://item.ssgcdn.com/47/98/17/item/1000024179847_i1_1200.jpg');
insert into ITEM values(NULL,'0000008911970','구성농협','국내산','대봉감 5kg',9800,'2018-11-07','감/곶감', 'http://item.ssgcdn.com/70/19/91/item/0000008911970_i1_1200.jpg');
insert into ITEM values(NULL,'1000030350228','과일나무','국내산','단맛나는 단감 3kg',16800,'2018-11-09','감/곶감', 'http://item.ssgcdn.com/28/02/35/item/1000030350228_i1_1200.jpg');
insert into ITEM values(NULL,'1000030245083','온누리팜','국내산','맛좋은 단감 2.5kg',12800,'2018-11-20','감/곶감', 'http://item.ssgcdn.com/83/50/24/item/1000030245083_i1_1200.jpg');
insert into ITEM values(NULL,'1000008155424','정명기','국내산','하늘아래첫단감 창원북면단감5kg',14800,'2018-11-19','감/곶감', 'http://item.ssgcdn.com/24/54/15/item/1000008155424_i1_1200.jpg');
insert into ITEM values(NULL,'1000017675682','용두농업협동조합','국내산','찰보리쌀4kg',11900,'2018-11-25','콩/보리', 'http://item.ssgcdn.com/82/56/67/item/1000017675682_i1_1200.jpg');
insert into ITEM values('농업회사법인','1000021474017','광복','캐나다산','흰강낭콩 500g',4280,'2019-01-13','콩/보리', 'http://item.ssgcdn.com/17/40/47/item/1000021474017_i1_1200.jpg');
insert into ITEM values('두보식품','2097000288505','두보식품','캐나다산','검정강낭콩 4kg',9491,'2019-01-20','콩/보리', 'http://item.ssgcdn.com/05/85/28/item/2097000288505_i1_1200.jpg');
insert into ITEM values(NULL,'1000017481514','용두농업협동조합','국내산','약콩 500g',9480,'2018-12-26','콩/보리', 'http://item.ssgcdn.com/14/15/48/item/1000017481514_i1_1200.jpg');
insert into ITEM values('대구농산(주)','1000021664234','농업회사법인 주식회사 푸르메','캐나다산','병아리콩1kg',4000,'2018-12-23','콩/보리', 'http://item.ssgcdn.com/34/42/66/item/1000021664234_i1_1200.jpg');

insert into RETAILER values('서울특별시',1);
insert into RETAILER values('인천광역시',2);
insert into RETAILER values('대전광역시',3);
insert into RETAILER values('대구광역시',4);
insert into RETAILER values('울산광역시',5);
insert into RETAILER values('부산광역시',6);
insert into RETAILER values('광주광역시',7);
insert into RETAILER values('세종특별자치시',8);
insert into RETAILER values('강원도',9);
insert into RETAILER values('경기도',10);
insert into RETAILER values('충청북도',11);
insert into RETAILER values('충청남도',12);
insert into RETAILER values('전라북도',13);
insert into RETAILER values('전라남도',14);
insert into RETAILER values('경상북도',15);
insert into RETAILER values('경상남도',16);
insert into RETAILER values('제주특별자치도',17);

insert into SHOPPINGBAG values('seuluv_','1000023464935',3);
insert into SHOPPINGBAG values('seuluv_','1000028530974',3);
insert into SHOPPINGBAG values('seuluv_','0000006610289',5);
insert into SHOPPINGBAG values('suho522','1000021474017',10);
insert into SHOPPINGBAG values('mansion_8','1000005077033',10);
insert into SHOPPINGBAG values('kiyomi_bori','1000015849657',3);
insert into SHOPPINGBAG values('kiyomi_bori','1000008155424',2);
insert into SHOPPINGBAG values('kiyomi_bori','0000006610289',5);
insert into SHOPPINGBAG values('Jaeho_0128','1000005077033',3);
insert into SHOPPINGBAG values('Jaeho_0128','1000019757676',4);
insert into SHOPPINGBAG values('Jaeho_0128','1000029201625',5);
insert into SHOPPINGBAG values('gudol100','1000027990213',10);
insert into SHOPPINGBAG values('heejinmin','1000030230577',4);
insert into SHOPPINGBAG values('heejinmin','0000008016579',1);
insert into SHOPPINGBAG values('heejinmin','1000015513302',5);
insert into SHOPPINGBAG values('heejinmin','1000020377480',3);
insert into SHOPPINGBAG values('soomanlee','1000030245083',5);
insert into SHOPPINGBAG values('soomanlee','1000013876582',4);
insert into SHOPPINGBAG values('soomanlee','0000008289403',2);
insert into SHOPPINGBAG values('soomanlee','1000021664234',1);
insert into SHOPPINGBAG values('soomanlee','1000021474017',3);
insert into SHOPPINGBAG values('laetitia_jin','1000007002778',1);
insert into SHOPPINGBAG values('laetitia_jin','1000030385472',1);
insert into SHOPPINGBAG values('laetitia_jin','0000008911970',1);
insert into SHOPPINGBAG values('laetitia_jin','1000017481514',3);
insert into SHOPPINGBAG values('muyeon100','1000030350228',2);
insert into SHOPPINGBAG values('muyeon100','0000008016579',2);
insert into SHOPPINGBAG values('wo_okie','1000008155424',1);
insert into SHOPPINGBAG values('wo_okie','1000030230577',3);
insert into SHOPPINGBAG values('kai114','1000030328089',3);
insert into SHOPPINGBAG values('kai114','0000008016579',3);
insert into SHOPPINGBAG values('kai114','1000005077033',1);
insert into SHOPPINGBAG values('kai114','1000023151723',1);
insert into SHOPPINGBAG values('sayeop100','1000030350228',3);
insert into SHOPPINGBAG values('sayeop100','1000029201625',1);
insert into SHOPPINGBAG values('sayeop100','1000027502323',2);
insert into SHOPPINGBAG values('turningpoint','0000008289403',1);
insert into SHOPPINGBAG values('turningpoint','0000007452331',3);
insert into SHOPPINGBAG values('hongsim100','1000029158987',3);
insert into SHOPPINGBAG values('hongsim100','1000027990213',1);
insert into SHOPPINGBAG values('hongsim100','1000023151723',2);
insert into SHOPPINGBAG values('jihyun100','0000008911970',2);
insert into SHOPPINGBAG values('jihyun100','1000030230577',3);
insert into SHOPPINGBAG values('dowoodowoo','1000023151723',2);
insert into SHOPPINGBAG values('lay107','0000008911970',2);
insert into SHOPPINGBAG values('lay107','2097000288598',2);
insert into SHOPPINGBAG values('lay107','1000027502323',2);
insert into SHOPPINGBAG values('lay107','1000006972256',3);
insert into SHOPPINGBAG values('momo_soda','1000029981285',1);
insert into SHOPPINGBAG values('momo_soda','1000030385472',2);
insert into SHOPPINGBAG values('momo_soda','1000030350228',1);
insert into SHOPPINGBAG values('momo_soda','1000030233126',2);
insert into SHOPPINGBAG values('sj981119','1000019004601',3);
insert into SHOPPINGBAG values('sj981119','2097000288505',1);
insert into SHOPPINGBAG values('sj981119','1000021474017',1);
insert into SHOPPINGBAG values('sj981119','1000029112883',1);
insert into SHOPPINGBAG values('ppmm1998','1000023151723',1);
insert into SHOPPINGBAG values('ppmm1998','1000021474017',3);
insert into SHOPPINGBAG values('youro0007','1000021664234',1);
insert into SHOPPINGBAG values('youro0007','1000030385472',3);
insert into SHOPPINGBAG values('youro0007','1000030328089',3);
insert into SHOPPINGBAG values('youro0007','1000021474017',2);

insert into HAS_A values(0, '1000019004601', 1);
insert into HAS_A values(0, '1000019004601', 2);
insert into HAS_A values(0, '1000019004601', 3);
insert into HAS_A values(0, '1000019004601', 4);
insert into HAS_A values(0, '1000019004601', 5);
insert into HAS_A values(0, '1000019004601', 6);
insert into HAS_A values(0, '1000019004601', 7);
insert into HAS_A values(0, '1000019004601', 8);
insert into HAS_A values(0, '1000019004601', 9);
insert into HAS_A values(0, '1000019004601', 10);
insert into HAS_A values(0, '1000019004601', 11);
insert into HAS_A values(0, '1000019004601', 12);
insert into HAS_A values(0, '1000019004601', 13);
insert into HAS_A values(0, '1000019004601', 14);
insert into HAS_A values(0, '1000019004601', 15);
insert into HAS_A values(0, '1000019004601', 16);
insert into HAS_A values(0, '1000019004601', 17);

insert into HAS_A values(0, '2097000288505', 1);
insert into HAS_A values(0, '2097000288505', 2);
insert into HAS_A values(0, '2097000288505', 3);
insert into HAS_A values(0, '2097000288505', 4);
insert into HAS_A values(0, '2097000288505', 5);
insert into HAS_A values(0, '2097000288505', 6);
insert into HAS_A values(0, '2097000288505', 7);
insert into HAS_A values(0, '2097000288505', 8);
insert into HAS_A values(0, '2097000288505', 9);
insert into HAS_A values(0, '2097000288505', 10);
insert into HAS_A values(0, '2097000288505', 11);
insert into HAS_A values(0, '2097000288505', 12);
insert into HAS_A values(0, '2097000288505', 13);
insert into HAS_A values(0, '2097000288505', 14);
insert into HAS_A values(0, '2097000288505', 15);
insert into HAS_A values(0, '2097000288505', 16);
insert into HAS_A values(0, '2097000288505', 17);

insert into HAS_A values(0, '2097000288598', 1);
insert into HAS_A values(0, '2097000288598', 2);
insert into HAS_A values(0, '2097000288598', 3);
insert into HAS_A values(0, '2097000288598', 4);
insert into HAS_A values(0, '2097000288598', 5);
insert into HAS_A values(0, '2097000288598', 6);
insert into HAS_A values(0, '2097000288598', 7);
insert into HAS_A values(0, '2097000288598', 8);
insert into HAS_A values(0, '2097000288598', 9);
insert into HAS_A values(0, '2097000288598', 10);
insert into HAS_A values(0, '2097000288598', 11);
insert into HAS_A values(0, '2097000288598', 12);
insert into HAS_A values(0, '2097000288598', 13);
insert into HAS_A values(0, '2097000288598', 14);
insert into HAS_A values(0, '2097000288598', 15);
insert into HAS_A values(0, '2097000288598', 16);
insert into HAS_A values(0, '2097000288598', 17);

insert into HAS_A values(0, '1000028530974', 1);
insert into HAS_A values(0, '1000028530974', 2);
insert into HAS_A values(1, '1000028530974', 3);
insert into HAS_A values(0, '1000028530974', 4);
insert into HAS_A values(1, '1000028530974', 5);
insert into HAS_A values(1, '1000028530974', 6);
insert into HAS_A values(0, '1000028530974', 7);
insert into HAS_A values(0, '1000028530974', 8);
insert into HAS_A values(0, '1000028530974', 9);
insert into HAS_A values(0, '1000028530974', 10);
insert into HAS_A values(1, '1000028530974', 11);
insert into HAS_A values(1, '1000028530974', 12);
insert into HAS_A values(1, '1000028530974', 13);
insert into HAS_A values(1, '1000028530974', 14);
insert into HAS_A values(0, '1000028530974', 15);
insert into HAS_A values(0, '1000028530974', 16);
insert into HAS_A values(1, '1000028530974', 17);

insert into HAS_A values(0, '1000030350228', 1);
insert into HAS_A values(1, '1000030350228', 2);
insert into HAS_A values(1, '1000030350228', 3);
insert into HAS_A values(0, '1000030350228', 4);
insert into HAS_A values(1, '1000030350228', 5);
insert into HAS_A values(1, '1000030350228', 6);
insert into HAS_A values(0, '1000030350228', 7);
insert into HAS_A values(0, '1000030350228', 8);
insert into HAS_A values(0, '1000030350228', 9);
insert into HAS_A values(1, '1000030350228', 10);
insert into HAS_A values(1, '1000030350228', 11);
insert into HAS_A values(1, '1000030350228', 12);
insert into HAS_A values(0, '1000030350228', 13);
insert into HAS_A values(1, '1000030350228', 14);
insert into HAS_A values(0, '1000030350228', 15);
insert into HAS_A values(1, '1000030350228', 16);
insert into HAS_A values(1, '1000030350228', 17);

insert into HAS_A values(1, '1000021167898', 1);
insert into HAS_A values(0, '1000021167898', 2);
insert into HAS_A values(0, '1000021167898', 3);
insert into HAS_A values(0, '1000021167898', 4);
insert into HAS_A values(1, '1000021167898', 5);
insert into HAS_A values(1, '1000021167898', 6);
insert into HAS_A values(0, '1000021167898', 7);
insert into HAS_A values(0, '1000021167898', 8);
insert into HAS_A values(1, '1000021167898', 9);
insert into HAS_A values(0, '1000021167898', 10);
insert into HAS_A values(1, '1000021167898', 11);
insert into HAS_A values(0, '1000021167898', 12);
insert into HAS_A values(0, '1000021167898', 13);
insert into HAS_A values(0, '1000021167898', 14);
insert into HAS_A values(1, '1000021167898', 15);
insert into HAS_A values(1, '1000021167898', 16);
insert into HAS_A values(1, '1000021167898', 17);

insert into HAS_A values(0, '1000019757676', 1);
insert into HAS_A values(0, '1000019757676', 2);
insert into HAS_A values(1, '1000019757676', 3);
insert into HAS_A values(1, '1000019757676', 4);
insert into HAS_A values(0, '1000019757676', 5);
insert into HAS_A values(1, '1000019757676', 6);
insert into HAS_A values(1, '1000019757676', 7);
insert into HAS_A values(1, '1000019757676', 8);
insert into HAS_A values(1, '1000019757676', 9);
insert into HAS_A values(0, '1000019757676', 10);
insert into HAS_A values(0, '1000019757676', 11);
insert into HAS_A values(0, '1000019757676', 12);
insert into HAS_A values(1, '1000019757676', 13);
insert into HAS_A values(1, '1000019757676', 14);
insert into HAS_A values(0, '1000019757676', 15);
insert into HAS_A values(1, '1000019757676', 16);
insert into HAS_A values(1, '1000019757676', 17);

insert into HAS_A values(0, '1000007002778', 1);
insert into HAS_A values(0, '1000007002778', 2);
insert into HAS_A values(1, '1000007002778', 3);
insert into HAS_A values(0, '1000007002778', 4);
insert into HAS_A values(0, '1000007002778', 5);
insert into HAS_A values(1, '1000007002778', 6);
insert into HAS_A values(0, '1000007002778', 7);
insert into HAS_A values(1, '1000007002778', 8);
insert into HAS_A values(1, '1000007002778', 9);
insert into HAS_A values(0, '1000007002778', 10);
insert into HAS_A values(0, '1000007002778', 11);
insert into HAS_A values(1, '1000007002778', 12);
insert into HAS_A values(1, '1000007002778', 13);
insert into HAS_A values(0, '1000007002778', 14);
insert into HAS_A values(0, '1000007002778', 15);
insert into HAS_A values(0, '1000007002778', 16);
insert into HAS_A values(1, '1000007002778', 17);

insert into HAS_A values(0, '1000013876582', 1);
insert into HAS_A values(0, '1000013876582', 2);
insert into HAS_A values(0, '1000013876582', 3);
insert into HAS_A values(0, '1000013876582', 4);
insert into HAS_A values(0, '1000013876582', 5);
insert into HAS_A values(1, '1000013876582', 6);
insert into HAS_A values(0, '1000013876582', 7);
insert into HAS_A values(1, '1000013876582', 8);
insert into HAS_A values(1, '1000013876582', 9);
insert into HAS_A values(0, '1000013876582', 10);
insert into HAS_A values(0, '1000013876582', 11);
insert into HAS_A values(1, '1000013876582', 12);
insert into HAS_A values(0, '1000013876582', 13);
insert into HAS_A values(1, '1000013876582', 14);
insert into HAS_A values(0, '1000013876582', 15);
insert into HAS_A values(0, '1000013876582', 16);
insert into HAS_A values(0, '1000013876582', 17);

/*
insert into HAS_A values(0, '1000021474017', 1);
insert into HAS_A values(1, '1000021474017', 2);
insert into HAS_A values(0, '1000021474017', 3);
insert into HAS_A values(1, '1000021474017', 4);
insert into HAS_A values(0, '1000021474017', 5);
insert into HAS_A values(1, '1000021474017', 6);
insert into HAS_A values(1, '1000021474017', 7);
insert into HAS_A values(0, '1000021474017', 8);
insert into HAS_A values(1, '1000021474017', 9);
insert into HAS_A values(0, '1000021474017', 10);
insert into HAS_A values(1, '1000021474017', 11);
insert into HAS_A values(1, '1000021474017', 12);
insert into HAS_A values(1, '1000021474017', 13);
insert into HAS_A values(0, '1000021474017', 14);
insert into HAS_A values(0, '1000021474017', 15);
insert into HAS_A values(0, '1000021474017', 16);
insert into HAS_A values(1, '1000021474017', 17);
*/

insert into HAS_A values(1, '1000019306146', 1);
insert into HAS_A values(0, '1000019306146', 2);
insert into HAS_A values(1, '1000019306146', 3);
insert into HAS_A values(0, '1000019306146', 4);
insert into HAS_A values(1, '1000019306146', 5);
insert into HAS_A values(1, '1000019306146', 6);
insert into HAS_A values(1, '1000019306146', 7);
insert into HAS_A values(0, '1000019306146', 8);
insert into HAS_A values(1, '1000019306146', 9);
insert into HAS_A values(0, '1000019306146', 10);
insert into HAS_A values(0, '1000019306146', 11);
insert into HAS_A values(0, '1000019306146', 12);
insert into HAS_A values(0, '1000019306146', 13);
insert into HAS_A values(1, '1000019306146', 14);
insert into HAS_A values(0, '1000019306146', 15);
insert into HAS_A values(0, '1000019306146', 16);
insert into HAS_A values(1, '1000019306146', 17);

insert into HAS_A values(0, '1000029201625', 1);
insert into HAS_A values(0, '1000029201625', 2);
insert into HAS_A values(1, '1000029201625', 3);
insert into HAS_A values(1, '1000029201625', 4);
insert into HAS_A values(1, '1000029201625', 5);
insert into HAS_A values(0, '1000029201625', 6);
insert into HAS_A values(0, '1000029201625', 7);
insert into HAS_A values(1, '1000029201625', 8);
insert into HAS_A values(0, '1000029201625', 9);
insert into HAS_A values(0, '1000029201625', 10);
insert into HAS_A values(0, '1000029201625', 11);
insert into HAS_A values(0, '1000029201625', 12);
insert into HAS_A values(1, '1000029201625', 13);
insert into HAS_A values(1, '1000029201625', 14);
insert into HAS_A values(0, '1000029201625', 15);
insert into HAS_A values(1, '1000029201625', 16);
insert into HAS_A values(0, '1000029201625', 17);

insert into HAS_A values(1, '0000008911970', 1);
insert into HAS_A values(0, '0000008911970', 2);
insert into HAS_A values(0, '0000008911970', 3);
insert into HAS_A values(0, '0000008911970', 4);
insert into HAS_A values(1, '0000008911970', 5);
insert into HAS_A values(0, '0000008911970', 6);
insert into HAS_A values(1, '0000008911970', 7);
insert into HAS_A values(0, '0000008911970', 8);
insert into HAS_A values(1, '0000008911970', 9);
insert into HAS_A values(0, '0000008911970', 10);
insert into HAS_A values(1, '0000008911970', 11);
insert into HAS_A values(0, '0000008911970', 12);
insert into HAS_A values(1, '0000008911970', 13);
insert into HAS_A values(1, '0000008911970', 14);
insert into HAS_A values(0, '0000008911970', 15);
insert into HAS_A values(0, '0000008911970', 16);
insert into HAS_A values(1, '0000008911970', 17);

insert into HAS_A values(0, '1000017481514', 1);
insert into HAS_A values(1, '1000017481514', 2);
insert into HAS_A values(0, '1000017481514', 3);
insert into HAS_A values(1, '1000017481514', 4);
insert into HAS_A values(1, '1000017481514', 5);
insert into HAS_A values(0, '1000017481514', 6);
insert into HAS_A values(0, '1000017481514', 7);
insert into HAS_A values(0, '1000017481514', 8);
insert into HAS_A values(0, '1000017481514', 9);
insert into HAS_A values(1, '1000017481514', 10);
insert into HAS_A values(1, '1000017481514', 11);
insert into HAS_A values(1, '1000017481514', 12);
insert into HAS_A values(0, '1000017481514', 13);
insert into HAS_A values(0, '1000017481514', 14);
insert into HAS_A values(1, '1000017481514', 15);
insert into HAS_A values(0, '1000017481514', 16);
insert into HAS_A values(0, '1000017481514', 17);

insert into HAS_A values(0, '1000017675682', 1);
insert into HAS_A values(1, '1000017675682', 2);
insert into HAS_A values(0, '1000017675682', 3);
insert into HAS_A values(1, '1000017675682', 4);
insert into HAS_A values(0, '1000017675682', 5);
insert into HAS_A values(0, '1000017675682', 6);
insert into HAS_A values(1, '1000017675682', 7);
insert into HAS_A values(0, '1000017675682', 8);
insert into HAS_A values(0, '1000017675682', 9);
insert into HAS_A values(1, '1000017675682', 10);
insert into HAS_A values(1, '1000017675682', 11);
insert into HAS_A values(0, '1000017675682', 12);
insert into HAS_A values(0, '1000017675682', 13);
insert into HAS_A values(1, '1000017675682', 14);
insert into HAS_A values(0, '1000017675682', 15);
insert into HAS_A values(0, '1000017675682', 16);
insert into HAS_A values(1, '1000017675682', 17);

insert into HAS_A values(2, '1000021664234', 1);
insert into HAS_A values(2, '1000021664234', 2);
insert into HAS_A values(2, '1000021664234', 3);
insert into HAS_A values(2, '1000021664234', 4);
insert into HAS_A values(2, '1000021664234', 5);
insert into HAS_A values(1, '1000021664234', 6);
insert into HAS_A values(2, '1000021664234', 7);
insert into HAS_A values(1, '1000021664234', 8);
insert into HAS_A values(2, '1000021664234', 9);
insert into HAS_A values(1, '1000021664234', 10);
insert into HAS_A values(2, '1000021664234', 11);
insert into HAS_A values(2, '1000021664234', 12);
insert into HAS_A values(2, '1000021664234', 13);
insert into HAS_A values(2, '1000021664234', 14);
insert into HAS_A values(2, '1000021664234', 15);
insert into HAS_A values(2, '1000021664234', 16);
insert into HAS_A values(1, '1000021664234', 17);

insert into HAS_A values(1, '1000029112883', 1);
insert into HAS_A values(2, '1000029112883', 2);
insert into HAS_A values(1, '1000029112883', 3);
insert into HAS_A values(2, '1000029112883', 4);
insert into HAS_A values(1, '1000029112883', 5);
insert into HAS_A values(1, '1000029112883', 6);
insert into HAS_A values(1, '1000029112883', 7);
insert into HAS_A values(2, '1000029112883', 8);
insert into HAS_A values(2, '1000029112883', 9);
insert into HAS_A values(1, '1000029112883', 10);
insert into HAS_A values(2, '1000029112883', 11);
insert into HAS_A values(2, '1000029112883', 12);
insert into HAS_A values(1, '1000029112883', 13);
insert into HAS_A values(2, '1000029112883', 14);
insert into HAS_A values(2, '1000029112883', 15);
insert into HAS_A values(2, '1000029112883', 16);
insert into HAS_A values(2, '1000029112883', 17);

insert into HAS_A values(1, '1000030328089', 1);
insert into HAS_A values(2, '1000030328089', 2);
insert into HAS_A values(2, '1000030328089', 3);
insert into HAS_A values(1, '1000030328089', 4);
insert into HAS_A values(1, '1000030328089', 5);
insert into HAS_A values(2, '1000030328089', 6);
insert into HAS_A values(1, '1000030328089', 7);
insert into HAS_A values(2, '1000030328089', 8);
insert into HAS_A values(2, '1000030328089', 9);
insert into HAS_A values(1, '1000030328089', 10);
insert into HAS_A values(2, '1000030328089', 11);
insert into HAS_A values(1, '1000030328089', 12);
insert into HAS_A values(2, '1000030328089', 13);
insert into HAS_A values(1, '1000030328089', 14);
insert into HAS_A values(1, '1000030328089', 15);
insert into HAS_A values(1, '1000030328089', 16);
insert into HAS_A values(1, '1000030328089', 17);

insert into HAS_A values(2, '1000021474017', 1);
insert into HAS_A values(2, '1000021474017', 2);
insert into HAS_A values(1, '1000021474017', 3);
insert into HAS_A values(1, '1000021474017', 4);
insert into HAS_A values(1, '1000021474017', 5);
insert into HAS_A values(2, '1000021474017', 6);
insert into HAS_A values(1, '1000021474017', 7);
insert into HAS_A values(1, '1000021474017', 8);
insert into HAS_A values(2, '1000021474017', 9);
insert into HAS_A values(1, '1000021474017', 10);
insert into HAS_A values(1, '1000021474017', 11);
insert into HAS_A values(1, '1000021474017', 12);
insert into HAS_A values(2, '1000021474017', 13);
insert into HAS_A values(2, '1000021474017', 14);
insert into HAS_A values(1, '1000021474017', 15);
insert into HAS_A values(2, '1000021474017', 16);
insert into HAS_A values(2, '1000021474017', 17);

insert into HAS_A values(2, '1000006972256', 1);
insert into HAS_A values(2, '1000006972256', 2);
insert into HAS_A values(2, '1000006972256', 3);
insert into HAS_A values(2, '1000006972256', 4);
insert into HAS_A values(2, '1000006972256', 5);
insert into HAS_A values(2, '1000006972256', 6);
insert into HAS_A values(2, '1000006972256', 7);
insert into HAS_A values(2, '1000006972256', 8);
insert into HAS_A values(2, '1000006972256', 9);
insert into HAS_A values(2, '1000006972256', 10);
insert into HAS_A values(1, '1000006972256', 11);
insert into HAS_A values(1, '1000006972256', 12);
insert into HAS_A values(2, '1000006972256', 13);
insert into HAS_A values(1, '1000006972256', 14);
insert into HAS_A values(2, '1000006972256', 15);
insert into HAS_A values(1, '1000006972256', 16);
insert into HAS_A values(2, '1000006972256', 17);

insert into HAS_A values(2, '1000024337327', 1);
insert into HAS_A values(2, '1000024337327', 2);
insert into HAS_A values(2, '1000024337327', 3);
insert into HAS_A values(2, '1000024337327', 4);
insert into HAS_A values(2, '1000024337327', 5);
insert into HAS_A values(2, '1000024337327', 6);
insert into HAS_A values(1, '1000024337327', 7);
insert into HAS_A values(1, '1000024337327', 8);
insert into HAS_A values(2, '1000024337327', 9);
insert into HAS_A values(1, '1000024337327', 10);
insert into HAS_A values(2, '1000024337327', 11);
insert into HAS_A values(1, '1000024337327', 12);
insert into HAS_A values(2, '1000024337327', 13);
insert into HAS_A values(2, '1000024337327', 14);
insert into HAS_A values(2, '1000024337327', 15);
insert into HAS_A values(2, '1000024337327', 16);
insert into HAS_A values(1, '1000024337327', 17);

insert into HAS_A values(1, '1000015849657', 1);
insert into HAS_A values(1, '1000015849657', 2);
insert into HAS_A values(1, '1000015849657', 3);
insert into HAS_A values(1, '1000015849657', 4);
insert into HAS_A values(1, '1000015849657', 5);
insert into HAS_A values(2, '1000015849657', 6);
insert into HAS_A values(2, '1000015849657', 7);
insert into HAS_A values(2, '1000015849657', 8);
insert into HAS_A values(1, '1000015849657', 9);
insert into HAS_A values(1, '1000015849657', 10);
insert into HAS_A values(2, '1000015849657', 11);
insert into HAS_A values(2, '1000015849657', 12);
insert into HAS_A values(1, '1000015849657', 13);
insert into HAS_A values(1, '1000015849657', 14);
insert into HAS_A values(2, '1000015849657', 15);
insert into HAS_A values(2, '1000015849657', 16);
insert into HAS_A values(2, '1000015849657', 17);

insert into HAS_A values(1, '1000030230577', 1);
insert into HAS_A values(2, '1000030230577', 2);
insert into HAS_A values(2, '1000030230577', 3);
insert into HAS_A values(2, '1000030230577', 4);
insert into HAS_A values(1, '1000030230577', 5);
insert into HAS_A values(1, '1000030230577', 6);
insert into HAS_A values(1, '1000030230577', 7);
insert into HAS_A values(2, '1000030230577', 8);
insert into HAS_A values(2, '1000030230577', 9);
insert into HAS_A values(2, '1000030230577', 10);
insert into HAS_A values(1, '1000030230577', 11);
insert into HAS_A values(1, '1000030230577', 12);
insert into HAS_A values(1, '1000030230577', 13);
insert into HAS_A values(2, '1000030230577', 14);
insert into HAS_A values(2, '1000030230577', 15);
insert into HAS_A values(2, '1000030230577', 16);
insert into HAS_A values(1, '1000030230577', 17);

insert into HAS_A values(1, '0000006610289', 1);
insert into HAS_A values(2, '0000006610289', 2);
insert into HAS_A values(1, '0000006610289', 3);
insert into HAS_A values(2, '0000006610289', 4);
insert into HAS_A values(2, '0000006610289', 5);
insert into HAS_A values(2, '0000006610289', 6);
insert into HAS_A values(1, '0000006610289', 7);
insert into HAS_A values(1, '0000006610289', 8);
insert into HAS_A values(2, '0000006610289', 9);
insert into HAS_A values(1, '0000006610289', 10);
insert into HAS_A values(1, '0000006610289', 11);
insert into HAS_A values(2, '0000006610289', 12);
insert into HAS_A values(1, '0000006610289', 13);
insert into HAS_A values(1, '0000006610289', 14);
insert into HAS_A values(2, '0000006610289', 15);
insert into HAS_A values(2, '0000006610289', 16);
insert into HAS_A values(1, '0000006610289', 17);

insert into HAS_A values(1, '1000023151723', 1);
insert into HAS_A values(2, '1000023151723', 2);
insert into HAS_A values(2, '1000023151723', 3);
insert into HAS_A values(1, '1000023151723', 4);
insert into HAS_A values(1, '1000023151723', 5);
insert into HAS_A values(1, '1000023151723', 6);
insert into HAS_A values(2, '1000023151723', 7);
insert into HAS_A values(1, '1000023151723', 8);
insert into HAS_A values(1, '1000023151723', 9);
insert into HAS_A values(1, '1000023151723', 10);
insert into HAS_A values(1, '1000023151723', 11);
insert into HAS_A values(1, '1000023151723', 12);
insert into HAS_A values(2, '1000023151723', 13);
insert into HAS_A values(2, '1000023151723', 14);
insert into HAS_A values(1, '1000023151723', 15);
insert into HAS_A values(2, '1000023151723', 16);
insert into HAS_A values(1, '1000023151723', 17);

insert into HAS_A values(32, '1000025087780', 1);
insert into HAS_A values(137, '1000025087780', 2);
insert into HAS_A values(267, '1000025087780', 3);
insert into HAS_A values(8, '1000025087780', 4);
insert into HAS_A values(26, '1000025087780', 5);
insert into HAS_A values(1, '1000025087780', 6);
insert into HAS_A values(140, '1000025087780', 7);
insert into HAS_A values(56, '1000025087780', 8);
insert into HAS_A values(265, '1000025087780', 9);
insert into HAS_A values(132, '1000025087780', 10);
insert into HAS_A values(128, '1000025087780', 11);
insert into HAS_A values(275, '1000025087780', 12);
insert into HAS_A values(277, '1000025087780', 13);
insert into HAS_A values(148, '1000025087780', 14);
insert into HAS_A values(75, '1000025087780', 15);
insert into HAS_A values(22, '1000025087780', 16);
insert into HAS_A values(229, '1000025087780', 17);

insert into HAS_A values(285, '1000029981285', 1);
insert into HAS_A values(285, '1000029981285', 2);
insert into HAS_A values(179, '1000029981285', 3);
insert into HAS_A values(253, '1000029981285', 4);
insert into HAS_A values(35, '1000029981285', 5);
insert into HAS_A values(126, '1000029981285', 6);
insert into HAS_A values(101, '1000029981285', 7);
insert into HAS_A values(27, '1000029981285', 8);
insert into HAS_A values(25, '1000029981285', 9);
insert into HAS_A values(16, '1000029981285', 10);
insert into HAS_A values(152, '1000029981285', 11);
insert into HAS_A values(125, '1000029981285', 12);
insert into HAS_A values(275, '1000029981285', 13);
insert into HAS_A values(227, '1000029981285', 14);
insert into HAS_A values(24, '1000029981285', 15);
insert into HAS_A values(210, '1000029981285', 16);
insert into HAS_A values(166, '1000029981285', 17);

insert into HAS_A values(23, '0000008289403', 1);
insert into HAS_A values(79, '0000008289403', 2);
insert into HAS_A values(63, '0000008289403', 3);
insert into HAS_A values(290, '0000008289403', 4);
insert into HAS_A values(226, '0000008289403', 5);
insert into HAS_A values(279, '0000008289403', 6);
insert into HAS_A values(210, '0000008289403', 7);
insert into HAS_A values(115, '0000008289403', 8);
insert into HAS_A values(38, '0000008289403', 9);
insert into HAS_A values(174, '0000008289403', 10);
insert into HAS_A values(104, '0000008289403', 11);
insert into HAS_A values(64, '0000008289403', 12);
insert into HAS_A values(279, '0000008289403', 13);
insert into HAS_A values(23, '0000008289403', 14);
insert into HAS_A values(110, '0000008289403', 15);
insert into HAS_A values(210, '0000008289403', 16);
insert into HAS_A values(258, '0000008289403', 17);

insert into HAS_A values(271, '1000020377480', 1);
insert into HAS_A values(121, '1000020377480', 2);
insert into HAS_A values(199, '1000020377480', 3);
insert into HAS_A values(157, '1000020377480', 4);
insert into HAS_A values(237, '1000020377480', 5);
insert into HAS_A values(161, '1000020377480', 6);
insert into HAS_A values(210, '1000020377480', 7);
insert into HAS_A values(227, '1000020377480', 8);
insert into HAS_A values(16, '1000020377480', 9);
insert into HAS_A values(297, '1000020377480', 10);
insert into HAS_A values(170, '1000020377480', 11);
insert into HAS_A values(292, '1000020377480', 12);
insert into HAS_A values(148, '1000020377480', 13);
insert into HAS_A values(257, '1000020377480', 14);
insert into HAS_A values(277, '1000020377480', 15);
insert into HAS_A values(175, '1000020377480', 16);
insert into HAS_A values(282, '1000020377480', 17);

insert into HAS_A values(16, '1000029715468', 1);
insert into HAS_A values(177, '1000029715468', 2);
insert into HAS_A values(110, '1000029715468', 3);
insert into HAS_A values(278, '1000029715468', 4);
insert into HAS_A values(41, '1000029715468', 5);
insert into HAS_A values(89, '1000029715468', 6);
insert into HAS_A values(253, '1000029715468', 7);
insert into HAS_A values(44, '1000029715468', 8);
insert into HAS_A values(51, '1000029715468', 9);
insert into HAS_A values(49, '1000029715468', 10);
insert into HAS_A values(133, '1000029715468', 11);
insert into HAS_A values(270, '1000029715468', 12);
insert into HAS_A values(127, '1000029715468', 13);
insert into HAS_A values(75, '1000029715468', 14);
insert into HAS_A values(238, '1000029715468', 15);
insert into HAS_A values(193, '1000029715468', 16);
insert into HAS_A values(204, '1000029715468', 17);

insert into HAS_A values(207, '1000027990213', 1);
insert into HAS_A values(172, '1000027990213', 2);
insert into HAS_A values(118, '1000027990213', 3);
insert into HAS_A values(90, '1000027990213', 4);
insert into HAS_A values(260, '1000027990213', 5);
insert into HAS_A values(68, '1000027990213', 6);
insert into HAS_A values(271, '1000027990213', 7);
insert into HAS_A values(235, '1000027990213', 8);
insert into HAS_A values(171, '1000027990213', 9);
insert into HAS_A values(292, '1000027990213', 10);
insert into HAS_A values(238, '1000027990213', 11);
insert into HAS_A values(123, '1000027990213', 12);
insert into HAS_A values(162, '1000027990213', 13);
insert into HAS_A values(130, '1000027990213', 14);
insert into HAS_A values(41, '1000027990213', 15);
insert into HAS_A values(299, '1000027990213', 16);
insert into HAS_A values(166, '1000027990213', 17);

insert into HAS_A values(273, '1000028975052', 1);
insert into HAS_A values(94, '1000028975052', 2);
insert into HAS_A values(91, '1000028975052', 3);
insert into HAS_A values(163, '1000028975052', 4);
insert into HAS_A values(139, '1000028975052', 5);
insert into HAS_A values(69, '1000028975052', 6);
insert into HAS_A values(254, '1000028975052', 7);
insert into HAS_A values(150, '1000028975052', 8);
insert into HAS_A values(183, '1000028975052', 9);
insert into HAS_A values(10, '1000028975052', 10);
insert into HAS_A values(209, '1000028975052', 11);
insert into HAS_A values(15, '1000028975052', 12);
insert into HAS_A values(74, '1000028975052', 13);
insert into HAS_A values(40, '1000028975052', 14);
insert into HAS_A values(195, '1000028975052', 15);
insert into HAS_A values(184, '1000028975052', 16);
insert into HAS_A values(0, '1000028975052', 17);

insert into HAS_A values(283, '1000030245083', 1);
insert into HAS_A values(137, '1000030245083', 2);
insert into HAS_A values(3, '1000030245083', 3);
insert into HAS_A values(5, '1000030245083', 4);
insert into HAS_A values(70, '1000030245083', 5);
insert into HAS_A values(126, '1000030245083', 6);
insert into HAS_A values(79, '1000030245083', 7);
insert into HAS_A values(240, '1000030245083', 8);
insert into HAS_A values(268, '1000030245083', 9);
insert into HAS_A values(264, '1000030245083', 10);
insert into HAS_A values(75, '1000030245083', 11);
insert into HAS_A values(243, '1000030245083', 12);
insert into HAS_A values(38, '1000030245083', 13);
insert into HAS_A values(274, '1000030245083', 14);
insert into HAS_A values(286, '1000030245083', 15);
insert into HAS_A values(272, '1000030245083', 16);
insert into HAS_A values(116, '1000030245083', 17);

insert into HAS_A values(234, '1000005077033', 1);
insert into HAS_A values(200, '1000005077033', 2);
insert into HAS_A values(274, '1000005077033', 3);
insert into HAS_A values(114, '1000005077033', 4);
insert into HAS_A values(73, '1000005077033', 5);
insert into HAS_A values(60, '1000005077033', 6);
insert into HAS_A values(51, '1000005077033', 7);
insert into HAS_A values(26, '1000005077033', 8);
insert into HAS_A values(147, '1000005077033', 9);
insert into HAS_A values(277, '1000005077033', 10);
insert into HAS_A values(183, '1000005077033', 11);
insert into HAS_A values(250, '1000005077033', 12);
insert into HAS_A values(91, '1000005077033', 13);
insert into HAS_A values(71, '1000005077033', 14);
insert into HAS_A values(273, '1000005077033', 15);
insert into HAS_A values(112, '1000005077033', 16);
insert into HAS_A values(199, '1000005077033', 17);

insert into HAS_A values(28, '1000008155424', 1);
insert into HAS_A values(70, '1000008155424', 2);
insert into HAS_A values(163, '1000008155424', 3);
insert into HAS_A values(207, '1000008155424', 4);
insert into HAS_A values(126, '1000008155424', 5);
insert into HAS_A values(181, '1000008155424', 6);
insert into HAS_A values(131, '1000008155424', 7);
insert into HAS_A values(160, '1000008155424', 8);
insert into HAS_A values(75, '1000008155424', 9);
insert into HAS_A values(294, '1000008155424', 10);
insert into HAS_A values(129, '1000008155424', 11);
insert into HAS_A values(289, '1000008155424', 12);
insert into HAS_A values(180, '1000008155424', 13);
insert into HAS_A values(274, '1000008155424', 14);
insert into HAS_A values(67, '1000008155424', 15);
insert into HAS_A values(51, '1000008155424', 16);
insert into HAS_A values(108, '1000008155424', 17);

insert into HAS_A values(247, '0000007452331', 1);
insert into HAS_A values(217, '0000007452331', 2);
insert into HAS_A values(190, '0000007452331', 3);
insert into HAS_A values(133, '0000007452331', 4);
insert into HAS_A values(140, '0000007452331', 5);
insert into HAS_A values(79, '0000007452331', 6);
insert into HAS_A values(218, '0000007452331', 7);
insert into HAS_A values(151, '0000007452331', 8);
insert into HAS_A values(204, '0000007452331', 9);
insert into HAS_A values(259, '0000007452331', 10);
insert into HAS_A values(46, '0000007452331', 11);
insert into HAS_A values(219, '0000007452331', 12);
insert into HAS_A values(64, '0000007452331', 13);
insert into HAS_A values(130, '0000007452331', 14);
insert into HAS_A values(23, '0000007452331', 15);
insert into HAS_A values(274, '0000007452331', 16);
insert into HAS_A values(164, '0000007452331', 17);

insert into HAS_A values(103, '1000029158987', 1);
insert into HAS_A values(72, '1000029158987', 2);
insert into HAS_A values(71, '1000029158987', 3);
insert into HAS_A values(48, '1000029158987', 4);
insert into HAS_A values(170, '1000029158987', 5);
insert into HAS_A values(47, '1000029158987', 6);
insert into HAS_A values(48, '1000029158987', 7);
insert into HAS_A values(114, '1000029158987', 8);
insert into HAS_A values(192, '1000029158987', 9);
insert into HAS_A values(214, '1000029158987', 10);
insert into HAS_A values(200, '1000029158987', 11);
insert into HAS_A values(71, '1000029158987', 12);
insert into HAS_A values(123, '1000029158987', 13);
insert into HAS_A values(178, '1000029158987', 14);
insert into HAS_A values(63, '1000029158987', 15);
insert into HAS_A values(31, '1000029158987', 16);
insert into HAS_A values(77, '1000029158987', 17);

insert into HAS_A values(174, '0000008785392', 1);
insert into HAS_A values(2, '0000008785392', 2);
insert into HAS_A values(99, '0000008785392', 3);
insert into HAS_A values(177, '0000008785392', 4);
insert into HAS_A values(225, '0000008785392', 5);
insert into HAS_A values(27, '0000008785392', 6);
insert into HAS_A values(291, '0000008785392', 7);
insert into HAS_A values(2, '0000008785392', 8);
insert into HAS_A values(75, '0000008785392', 9);
insert into HAS_A values(1, '0000008785392', 10);
insert into HAS_A values(155, '0000008785392', 11);
insert into HAS_A values(184, '0000008785392', 12);
insert into HAS_A values(218, '0000008785392', 13);
insert into HAS_A values(183, '0000008785392', 14);
insert into HAS_A values(174, '0000008785392', 15);
insert into HAS_A values(142, '0000008785392', 16);
insert into HAS_A values(139, '0000008785392', 17);

insert into HAS_A values(233, '0000008016579', 1);
insert into HAS_A values(247, '0000008016579', 2);
insert into HAS_A values(248, '0000008016579', 3);
insert into HAS_A values(123, '0000008016579', 4);
insert into HAS_A values(77, '0000008016579', 5);
insert into HAS_A values(232, '0000008016579', 6);
insert into HAS_A values(135, '0000008016579', 7);
insert into HAS_A values(111, '0000008016579', 8);
insert into HAS_A values(122, '0000008016579', 9);
insert into HAS_A values(155, '0000008016579', 10);
insert into HAS_A values(170, '0000008016579', 11);
insert into HAS_A values(4, '0000008016579', 12);
insert into HAS_A values(162, '0000008016579', 13);
insert into HAS_A values(167, '0000008016579', 14);
insert into HAS_A values(101, '0000008016579', 15);
insert into HAS_A values(205, '0000008016579', 16);
insert into HAS_A values(154, '0000008016579', 17);

insert into HAS_A values(91, '1000027502323', 1);
insert into HAS_A values(279, '1000027502323', 2);
insert into HAS_A values(89, '1000027502323', 3);
insert into HAS_A values(258, '1000027502323', 4);
insert into HAS_A values(41, '1000027502323', 5);
insert into HAS_A values(121, '1000027502323', 6);
insert into HAS_A values(132, '1000027502323', 7);
insert into HAS_A values(149, '1000027502323', 8);
insert into HAS_A values(219, '1000027502323', 9);
insert into HAS_A values(112, '1000027502323', 10);
insert into HAS_A values(52, '1000027502323', 11);
insert into HAS_A values(61, '1000027502323', 12);
insert into HAS_A values(252, '1000027502323', 13);
insert into HAS_A values(149, '1000027502323', 14);
insert into HAS_A values(296, '1000027502323', 15);
insert into HAS_A values(78, '1000027502323', 16);
insert into HAS_A values(105, '1000027502323', 17);

insert into HAS_A values(38, '1000030233126', 1);
insert into HAS_A values(21, '1000030233126', 2);
insert into HAS_A values(50, '1000030233126', 3);
insert into HAS_A values(82, '1000030233126', 4);
insert into HAS_A values(194, '1000030233126', 5);
insert into HAS_A values(90, '1000030233126', 6);
insert into HAS_A values(30, '1000030233126', 7);
insert into HAS_A values(271, '1000030233126', 8);
insert into HAS_A values(286, '1000030233126', 9);
insert into HAS_A values(264, '1000030233126', 10);
insert into HAS_A values(109, '1000030233126', 11);
insert into HAS_A values(196, '1000030233126', 12);
insert into HAS_A values(75, '1000030233126', 13);
insert into HAS_A values(7, '1000030233126', 14);
insert into HAS_A values(234, '1000030233126', 15);
insert into HAS_A values(46, '1000030233126', 16);
insert into HAS_A values(231, '1000030233126', 17);

insert into HAS_A values(64, '1000023464935', 1);
insert into HAS_A values(157, '1000023464935', 2);
insert into HAS_A values(142, '1000023464935', 3);
insert into HAS_A values(183, '1000023464935', 4);
insert into HAS_A values(83, '1000023464935', 5);
insert into HAS_A values(213, '1000023464935', 6);
insert into HAS_A values(187, '1000023464935', 7);
insert into HAS_A values(154, '1000023464935', 8);
insert into HAS_A values(41, '1000023464935', 9);
insert into HAS_A values(156, '1000023464935', 10);
insert into HAS_A values(136, '1000023464935', 11);
insert into HAS_A values(37, '1000023464935', 12);
insert into HAS_A values(11, '1000023464935', 13);
insert into HAS_A values(157, '1000023464935', 14);
insert into HAS_A values(162, '1000023464935', 15);
insert into HAS_A values(241, '1000023464935', 16);
insert into HAS_A values(64, '1000023464935', 17);

insert into HAS_A values(39, '1000015513302', 1);
insert into HAS_A values(5, '1000015513302', 2);
insert into HAS_A values(162, '1000015513302', 3);
insert into HAS_A values(17, '1000015513302', 4);
insert into HAS_A values(222, '1000015513302', 5);
insert into HAS_A values(174, '1000015513302', 6);
insert into HAS_A values(17, '1000015513302', 7);
insert into HAS_A values(71, '1000015513302', 8);
insert into HAS_A values(8, '1000015513302', 9);
insert into HAS_A values(212, '1000015513302', 10);
insert into HAS_A values(13, '1000015513302', 11);
insert into HAS_A values(278, '1000015513302', 12);
insert into HAS_A values(98, '1000015513302', 13);
insert into HAS_A values(225, '1000015513302', 14);
insert into HAS_A values(212, '1000015513302', 15);
insert into HAS_A values(99, '1000015513302', 16);
insert into HAS_A values(232, '1000015513302', 17);

insert into HAS_A values(198, '1000030385472', 1);
insert into HAS_A values(106, '1000030385472', 2);
insert into HAS_A values(104, '1000030385472', 3);
insert into HAS_A values(293, '1000030385472', 4);
insert into HAS_A values(49, '1000030385472', 5);
insert into HAS_A values(238, '1000030385472', 6);
insert into HAS_A values(277, '1000030385472', 7);
insert into HAS_A values(81, '1000030385472', 8);
insert into HAS_A values(189, '1000030385472', 9);
insert into HAS_A values(188, '1000030385472', 10);
insert into HAS_A values(9, '1000030385472', 11);
insert into HAS_A values(217, '1000030385472', 12);
insert into HAS_A values(260, '1000030385472', 13);
insert into HAS_A values(85, '1000030385472', 14);
insert into HAS_A values(297, '1000030385472', 15);
insert into HAS_A values(140, '1000030385472', 16);
insert into HAS_A values(97, '1000030385472', 17);

insert into HAS_A values(293, '1000018136997', 1);
insert into HAS_A values(29, '1000018136997', 2);
insert into HAS_A values(3, '1000018136997', 3);
insert into HAS_A values(241, '1000018136997', 4);
insert into HAS_A values(235, '1000018136997', 5);
insert into HAS_A values(158, '1000018136997', 6);
insert into HAS_A values(155, '1000018136997', 7);
insert into HAS_A values(36, '1000018136997', 8);
insert into HAS_A values(201, '1000018136997', 9);
insert into HAS_A values(293, '1000018136997', 10);
insert into HAS_A values(256, '1000018136997', 11);
insert into HAS_A values(225, '1000018136997', 12);
insert into HAS_A values(144, '1000018136997', 13);
insert into HAS_A values(267, '1000018136997', 14);
insert into HAS_A values(158, '1000018136997', 15);
insert into HAS_A values(87, '1000018136997', 16);
insert into HAS_A values(137, '1000018136997', 17);

insert into PRODUCERLOCATION values('(주)자연의모든것');
insert into PRODUCERLOCATION values('오창농협');
insert into PRODUCERLOCATION values('하늘농부유기농영농조합법인');
insert into PRODUCERLOCATION values('지은농업회사법인');
insert into PRODUCERLOCATION values('안산팜영농조합');
insert into PRODUCERLOCATION values('풀무원식품');
insert into PRODUCERLOCATION values('신선촌(주)');
insert into PRODUCERLOCATION values('(주)에스엔푸드');
insert into PRODUCERLOCATION values('(주)한생종천공장');
insert into PRODUCERLOCATION values('(주)영심');
insert into PRODUCERLOCATION values('울진해방풍영농조합법인');
insert into PRODUCERLOCATION values('선진상회');
insert into PRODUCERLOCATION values('오복농산영농조합법인');
insert into PRODUCERLOCATION values('머쉬텍');
insert into PRODUCERLOCATION values('광복');
insert into PRODUCERLOCATION values('(주)라이스텍');
insert into PRODUCERLOCATION values('두보식품');
insert into PRODUCERLOCATION values('해가든');
insert into PRODUCERLOCATION values('안중농협미곡종합처리장');
insert into PRODUCERLOCATION values('OK라이스센터');
insert into PRODUCERLOCATION values('문막농협미곡종합처리장');
insert into PRODUCERLOCATION values('명성제분');
insert into PRODUCERLOCATION values('영농조합법인 한국씨엔에스');
insert into PRODUCERLOCATION values('구성농협');
insert into PRODUCERLOCATION values('제일물산');
insert into PRODUCERLOCATION values('부성훈');
insert into PRODUCERLOCATION values('삼경농산');
insert into PRODUCERLOCATION values('희경이네귤창고');
insert into PRODUCERLOCATION values('감귤농원');
insert into PRODUCERLOCATION values('과일나무');
insert into PRODUCERLOCATION values('온누리팜');
insert into PRODUCERLOCATION values('정명기');
insert into PRODUCERLOCATION values('용두농업협동조합');
insert into PRODUCERLOCATION values('농업회사법인 주식회사 푸르메');

insert into ORDER1 values('chen921', 3370302, '2017-03-02', 10);
insert into ORDER1 values('kai114', 5180810, '2018-08-10', 14);
insert into ORDER1 values('momo_soda', 0580216, '2018-02-16', 2);
insert into ORDER1 values('kinam_h', 2570612, '2017-06-12', 7);
insert into ORDER1 values('seuluv_', 2370311, '2017-03-11', 7);
insert into ORDER1 values('pongdang', 0670629, '2017-06-29', 2);
insert into ORDER1 values('yeol1127', 3470410, '2017-04-10', 10);
insert into ORDER1 values('muyeon100', 4670912, '2017-09-12', 13);
insert into ORDER1 values('2yealim', 1380422, '2018-04-22', 4);
insert into ORDER1 values('gudol100', 4181020, '2018-10-20', 12);
insert into ORDER1 values('kekeke_xo', 0170223, '2017-02-23', 1);
insert into ORDER1 values('mino927', 5370201, '2017-02-01', 15);
insert into ORDER1 values('yulyul100', 3870306, '2017-03-06', 11);
insert into ORDER1 values('i_cd_yu', 2870530, '2017-05-30', 8);
insert into ORDER1 values('yeeseo100', 4080428, '2018-04-28', 11);
insert into ORDER1 values('kai114', 5171003, '2017-10-03', 14);
insert into ORDER1 values('kai114', 5170312, '2017-03-12', 14);
insert into ORDER1 values('yejin9989', 1261215, '2016-12-15', 4);
insert into ORDER1 values('dowoodowoo', 5670315, '2017-03-15', 16);
insert into ORDER1 values('dntmddnjs', 1761105, '2016-11-05', 5);
insert into ORDER1 values('zeyoon100', 4280510, '2018-05-10', 12);
insert into ORDER1 values('ppmm1998', 1180111, '2018-01-11', 4);
insert into ORDER1 values('do112', 3581001, '2018-10-01', 10);
insert into ORDER1 values('mino927', 5381025, '2018-10-25', 15);
insert into ORDER1 values('hjk75899', 1570830, '2017-08-30', 4);
insert into ORDER1 values('sohye100', 4380712, '2018-07-12', 13);
insert into ORDER1 values('sohee100', 4980624, '2018-06-24', 14);
insert into ORDER1 values('chen921', 3380514, '2018-05-14', 10);
insert into ORDER1 values('2yealim', 1370807, '2017-08-07', 4);
insert into ORDER1 values('momo_soda', 0580629, '2018-06-29', 2);
insert into ORDER1 values('mi_rae20', 0080507, '2018-05-07', 1);
insert into ORDER1 values('seonho100', 5070416, '2017-04-16', 14);
insert into ORDER1 values('sohee100', 4971214, '2017-12-14', 14);
insert into ORDER1 values('young_jae.98', 1480508, '2018-05-08', 4);
insert into ORDER1 values('kai114', 5170503, '2017-05-03', 14);
insert into ORDER1 values('2yealim', 1380310, '2018-03-10', 4);
insert into ORDER1 values('kekeke_xo', 0171107, '2017-11-07', 1);
insert into ORDER1 values('dntmddnjs', 1780825, '2018-08-25', 5);
insert into ORDER1 values('chen921', 3380518, '2018-05-18', 10);
insert into ORDER1 values('joo_dmd2', 1661113, '2016-11-13', 5);
insert into ORDER1 values('turningpoint', 2171227, '2017-12-27', 6);
insert into ORDER1 values('muyeon100', 4680412, '2018-04-12', 13);
insert into ORDER1 values('sohee100', 4961127, '2016-11-27', 14);
insert into ORDER1 values('pongdang', 0680531, '2018-05-31', 2);
insert into ORDER1 values('do112', 3561126, '2016-11-26', 10);
insert into ORDER1 values('sayeop100', 4770531, '2017-05-31', 13);
insert into ORDER1 values('ppmm1998', 1170819, '2017-08-19', 4);
insert into ORDER1 values('jihyun100', 5280515, '2018-05-15', 14);
insert into ORDER1 values('hjk75899', 1581031, '2018-10-31', 4);
insert into ORDER1 values('sohye100', 4380301, '2018-03-01', 13);
insert into ORDER1 values('muyeon100', 4680103, '2018-01-03', 13);
insert into ORDER1 values('hongsim100', 3970930, '2017-09-30', 11);
insert into ORDER1 values('ppmm1998', 1161130, '2016-11-30', 4);
insert into ORDER1 values('xiumin326', 2980803, '2018-08-03', 9);
insert into ORDER1 values('young_jae.98', 1481007, '2018-10-07', 4);
insert into ORDER1 values('ppmm1998', 1180108, '2018-01-08', 4);
insert into ORDER1 values('kekeke_xo', 0180610, '2018-06-10', 1);
insert into ORDER1 values('do112', 3570406, '2017-04-06', 10);
insert into ORDER1 values('wo_okie', 0470410, '2017-04-10', 2);
insert into ORDER1 values('dntmddnjs', 1780317, '2018-03-17', 5);
insert into ORDER1 values('yeeseo100', 4071213, '2017-12-13', 11);
insert into ORDER1 values('gudol100', 4180702, '2018-07-02', 12);
insert into ORDER1 values('chaaun100', 4580108, '2018-01-08', 13);
insert into ORDER1 values('hun412', 3680831, '2018-08-31', 10);
insert into ORDER1 values('sayeop100', 4770106, '2017-01-06', 13);
insert into ORDER1 values('ppmm1998', 1180209, '2018-02-09', 4);
insert into ORDER1 values('momo_soda', 0580830, '2018-08-30', 2);
insert into ORDER1 values('hjk75899', 1570907, '2017-09-07', 4);
insert into ORDER1 values('pongdang', 0680618, '2018-06-18', 2);
insert into ORDER1 values('ppmm1998', 1161118, '2016-11-18', 4);
insert into ORDER1 values('kekeke_xo', 0161208, '2016-12-08', 1);
insert into ORDER1 values('dowoodowoo', 5661111, '2016-11-11', 16);
insert into ORDER1 values('heon_y98', 0780123, '2018-01-23', 2);
insert into ORDER1 values('chen921', 3361209, '2016-12-09', 10);
insert into ORDER1 values('jhiro2', 2481016, '2018-10-16', 7);
insert into ORDER1 values('zeyoon100', 4280201, '2018-02-01', 12);
insert into ORDER1 values('sayeop100', 4770214, '2017-02-14', 13);
insert into ORDER1 values('y_ra12', 0870408, '2017-04-08', 3);
insert into ORDER1 values('suzy100', 4481016, '2018-10-16', 13);
insert into ORDER1 values('gudol100', 4170901, '2017-09-01', 12);
insert into ORDER1 values('i_cd_yu', 2871224, '2017-12-24', 8);
insert into ORDER1 values('sayeop100', 4770221, '2017-02-21', 13);
insert into ORDER1 values('mino927', 5370801, '2017-08-01', 15);
insert into ORDER1 values('sohee100', 4970302, '2017-03-02', 14);
insert into ORDER1 values('sayeop100', 4780222, '2018-02-22', 13);
insert into ORDER1 values('jihyun100', 5270825, '2017-08-25', 14);
insert into ORDER1 values('gudol100', 4170113, '2017-01-13', 12);
insert into ORDER1 values('sohye100', 4380108, '2018-01-08', 13);
insert into ORDER1 values('suho522', 3280515, '2018-05-15', 10);
insert into ORDER1 values('ssnyn', 1980328, '2018-03-28', 6);
insert into ORDER1 values('y_ra12', 0880214, '2018-02-14', 3);
insert into ORDER1 values('kai114', 5170605, '2017-06-05', 14);
insert into ORDER1 values('momo_soda', 0580916, '2018-09-16', 2);
insert into ORDER1 values('i_cd_yu', 2861111, '2016-11-11', 8);
insert into ORDER1 values('wo_okie', 0480301, '2018-03-01', 2);
insert into ORDER1 values('kinam_h', 2570616, '2017-06-16', 7);
insert into ORDER1 values('kekeke_xo', 0170216, '2017-02-16', 1);
insert into ORDER1 values('sohee100', 4971231, '2017-12-31', 14);
insert into ORDER1 values('yeol1127', 3470429, '2017-04-29', 10);
insert into ORDER1 values('joo_dmd2', 1681004, '2018-10-04', 5);
insert into ORDER1 values('do112', 3580730, '2018-07-30', 10);
insert into ORDER1 values('kinam_h', 2580225, '2018-02-25', 7);
insert into ORDER1 values('momo_soda', 0570120, '2017-01-20', 2);
insert into ORDER1 values('joo_dmd2', 1670328, '2017-03-28', 5);
insert into ORDER1 values('joo_dmd2', 1680608, '2018-06-08', 5);
insert into ORDER1 values('sayeop100', 4770118, '2017-01-18', 13);
insert into ORDER1 values('feellikefeel1', 0271106, '2017-11-06', 1);
insert into ORDER1 values('suho522', 3271116, '2017-11-16', 10);
insert into ORDER1 values('laetitia_jin', 0980517, '2018-05-17', 3);
insert into ORDER1 values('hjk75899', 1580411, '2018-04-11', 4);
insert into ORDER1 values('seuluv_', 2380812, '2018-08-12', 7);
insert into ORDER1 values('jhiro2', 2481002, '2018-10-02', 7);
insert into ORDER1 values('jihyun100', 5270105, '2017-01-05', 14);
insert into ORDER1 values('ppmm1998', 1181016, '2018-10-16', 4);
insert into ORDER1 values('suzy100', 4471026, '2017-10-26', 13);
insert into ORDER1 values('hun412', 3670116, '2017-01-16', 10);
insert into ORDER1 values('soomanlee', 5471016, '2017-10-16', 15);
insert into ORDER1 values('hjk75899', 1571029, '2017-10-29', 4);
insert into ORDER1 values('gudol100', 4180124, '2018-01-24', 12);
insert into ORDER1 values('Jaeho_0128', 0380506, '2018-05-06', 1);
insert into ORDER1 values('turningpoint', 2180822, '2018-08-22', 6);
insert into ORDER1 values('do112', 3561103, '2016-11-03', 10);
insert into ORDER1 values('y_ra12', 0870524, '2017-05-24', 3);
insert into ORDER1 values('jihyun100', 5271210, '2017-12-10', 14);
insert into ORDER1 values('muyeon100', 4670206, '2017-02-06', 13);
insert into ORDER1 values('bh0506', 3170602, '2017-06-02', 9);
insert into ORDER1 values('bh0506', 3180316, '2018-03-16', 9);
insert into ORDER1 values('yejin9989', 1280104, '2018-01-04', 4);
insert into ORDER1 values('seuluv_', 2380125, '2018-01-25', 7);
insert into ORDER1 values('bh0506', 3180508, '2018-05-08', 9);
insert into ORDER1 values('Jaeho_0128', 0380729, '2018-07-29', 1);
insert into ORDER1 values('sohee100', 4980510, '2018-05-10', 14);
insert into ORDER1 values('wo_okie', 0470529, '2017-05-29', 2);
insert into ORDER1 values('xiumin326', 2970416, '2017-04-16', 9);
insert into ORDER1 values('sohee100', 4980905, '2018-09-05', 14);
insert into ORDER1 values('soomanlee', 5470810, '2017-08-10', 15);
insert into ORDER1 values('wondeuk100', 3780705, '2018-07-05', 15);
insert into ORDER1 values('bh0506', 3171101, '2017-11-01', 9);
insert into ORDER1 values('y_ra12', 0870501, '2017-05-01', 3);
insert into ORDER1 values('sohye100', 4370518, '2017-05-18', 13);
insert into ORDER1 values('laetitia_jin', 0980616, '2018-06-16', 3);
insert into ORDER1 values('bh0506', 3180620, '2018-06-20', 9);
insert into ORDER1 values('mino927', 5371204, '2017-12-04', 15);
insert into ORDER1 values('turningpoint', 2170114, '2017-01-14', 6);
insert into ORDER1 values('chaaun100', 4580315, '2018-03-15', 13);
insert into ORDER1 values('kekeke_xo', 0181021, '2018-10-21', 1);
insert into ORDER1 values('jhiro2', 2470321, '2017-03-21', 7);
insert into ORDER1 values('sohee100', 4980117, '2018-01-17', 14);
insert into ORDER1 values('ppmm1998', 1170208, '2017-02-08', 4);
insert into ORDER1 values('do112', 3570630, '2017-06-30', 10);
insert into ORDER1 values('suho522', 3281022, '2018-10-22', 10);
insert into ORDER1 values('bh0506', 3170303, '2017-03-03', 9);
insert into ORDER1 values('yulyul100', 3870501, '2017-05-01', 11);
insert into ORDER1 values('seuluv_', 2380128, '2018-01-28', 7);
insert into ORDER1 values('kai114', 5180830, '2018-08-30', 14);
insert into ORDER1 values('mino927', 5371227, '2017-12-27', 15);
insert into ORDER1 values('gudol100', 4180930, '2018-09-30', 12);
insert into ORDER1 values('pongdang', 0670908, '2017-09-08', 2);
insert into ORDER1 values('kiyomi_bori', 2770713, '2017-07-13', 8);
insert into ORDER1 values('wondeuk100', 3780813, '2018-08-13', 8);
insert into ORDER1 values('seuluv_', 2361203, '2016-12-03', 7);
insert into ORDER1 values('joo_dmd2', 1680305, '2018-03-05', 5);
insert into ORDER1 values('2yealim', 1380705, '2018-07-05', 4);
insert into ORDER1 values('youro0007', 2671015, '2017-10-15', 8);
insert into ORDER1 values('youro0007', 2671117, '2017-11-17', 8);
insert into ORDER1 values('jhiro2', 2480113, '2018-01-13', 7);
insert into ORDER1 values('turningpoint', 2170124, '2017-01-24', 6);
insert into ORDER1 values('xiumin326', 2980805, '2018-08-05', 9);
insert into ORDER1 values('wondeuk100', 3780609, '2018-06-09', 9);
insert into ORDER1 values('chen921', 3361124, '2016-11-24', 10);
insert into ORDER1 values('mino927', 5361212, '2016-12-12', 15);
insert into ORDER1 values('wo_okie', 0471025, '2017-10-25', 2);
insert into ORDER1 values('ssnyn', 1970210, '2017-02-10', 6);
insert into ORDER1 values('kai114', 5180610, '2018-06-10', 14);
insert into ORDER1 values('zeyoon100', 4261227, '2016-12-27', 12);
insert into ORDER1 values('jhiro2', 2480912, '2018-09-12', 7);
insert into ORDER1 values('2yealim', 1381004, '2018-10-04', 4);
insert into ORDER1 values('ssnyn', 1971026, '2017-10-26', 6);
insert into ORDER1 values('heejinmin', 5580819, '2018-08-19', 15);
insert into ORDER1 values('yejin9989', 1271206, '2017-12-06', 4);
insert into ORDER1 values('yulyul100', 3870718, '2017-07-18', 11);
insert into ORDER1 values('jhiro2', 2481020, '2018-10-20', 7);
insert into ORDER1 values('wondeuk100', 3770102, '2017-01-02', 7);
insert into ORDER1 values('chaaun100', 4570901, '2017-09-01', 13);
insert into ORDER1 values('mino927', 5370618, '2017-06-18', 15);
insert into ORDER1 values('suzy100', 4471228, '2017-12-28', 13);
insert into ORDER1 values('suzy100', 4480217, '2018-02-17', 13);
insert into ORDER1 values('mi_rae20', 0061228, '2016-12-28', 1);
insert into ORDER1 values('i_cd_yu', 2870222, '2017-02-22', 8);
insert into ORDER1 values('mi_rae20', 0061113, '2016-11-13', 1);
insert into ORDER1 values('kai114', 5180914, '2018-09-14', 14);
insert into ORDER1 values('sohee100', 4980425, '2018-04-25', 14);
insert into ORDER1 values('wo_okie', 0470516, '2017-05-16', 2);
insert into ORDER1 values('zeyoon100', 4281018, '2018-10-18', 12);
insert into ORDER1 values('hjk75899', 1580723, '2018-07-23', 4);
insert into ORDER1 values('bh0506', 3170110, '2017-01-10', 9);
insert into ORDER1 values('muyeon100', 4680529, '2018-05-29', 13);
insert into ORDER1 values('yulyul100', 3870612, '2017-06-12', 11);
insert into ORDER1 values('2yealim', 1380404, '2018-04-04', 4);
insert into ORDER1 values('do112', 3570331, '2017-03-31', 10);
insert into ORDER1 values('hongsim100', 3970512, '2017-05-12', 11);
insert into ORDER1 values('youro0007', 2680206, '2018-02-06', 8);
insert into ORDER1 values('kiyomi_bori', 2770609, '2017-06-09', 8);
insert into ORDER1 values('ssnyn', 1980523, '2018-05-23', 6);
insert into ORDER1 values('do112', 3580713, '2018-07-13', 10);
insert into ORDER1 values('kekeke_xo', 0170923, '2017-09-23', 1);
insert into ORDER1 values('heon_y98', 0771115, '2017-11-15', 2);
insert into ORDER1 values('yeeseo100', 4071211, '2017-12-11', 11);
insert into ORDER1 values('heon_y98', 0770607, '2017-06-07', 2);
insert into ORDER1 values('wo_okie', 0480925, '2018-09-25', 2);
insert into ORDER1 values('momo_soda', 0580831, '2018-08-31', 2);
insert into ORDER1 values('do112', 3570916, '2017-09-16', 10);
insert into ORDER1 values('heejinmin', 5571003, '2017-10-03', 15);
insert into ORDER1 values('dntmddnjs', 1770520, '2017-05-20', 5);
insert into ORDER1 values('bh0506', 3181028, '2018-10-28', 9);
insert into ORDER1 values('wondeuk100', 3770128, '2017-01-28', 9);
insert into ORDER1 values('kekeke_xo', 0170808, '2017-08-08', 1);
insert into ORDER1 values('2yealim', 1361201, '2016-12-01', 4);
insert into ORDER1 values('chaaun100', 4571226, '2017-12-26', 13);
insert into ORDER1 values('muyeon100', 4670223, '2017-02-23', 13);
insert into ORDER1 values('chaaun100', 4571024, '2017-10-24', 13);
insert into ORDER1 values('ppmm1998', 1180228, '2018-02-28', 4);
insert into ORDER1 values('heon_y98', 0761227, '2016-12-27', 2);
insert into ORDER1 values('yulyul100', 3870125, '2017-01-25', 11);
insert into ORDER1 values('yeeseo100', 4070125, '2017-01-25', 11);
insert into ORDER1 values('sohye100', 4380721, '2018-07-21', 13);
insert into ORDER1 values('chen921', 3371120, '2017-11-20', 10);
insert into ORDER1 values('kai114', 5180816, '2018-08-16', 14);
insert into ORDER1 values('wondeuk100', 3770123, '2017-01-23', 14);
insert into ORDER1 values('kekeke_xo', 0180520, '2018-05-20', 1);
insert into ORDER1 values('do112', 3571218, '2017-12-18', 10);
insert into ORDER1 values('jihyun100', 5280609, '2018-06-09', 14);
insert into ORDER1 values('tig05013', 2281025, '2018-10-25', 6);
insert into ORDER1 values('jhiro2', 2470812, '2017-08-12', 7);
insert into ORDER1 values('sohye100', 4370807, '2017-08-07', 13);
insert into ORDER1 values('y_ra12', 0871213, '2017-12-13', 3);
insert into ORDER1 values('heon_y98', 0771124, '2017-11-24', 2);
insert into ORDER1 values('jhiro2', 2471223, '2017-12-23', 7);
insert into ORDER1 values('hjk75899', 1580117, '2018-01-17', 4);
insert into ORDER1 values('jhiro2', 2461103, '2016-11-03', 7);
insert into ORDER1 values('chaaun100', 4580426, '2018-04-26', 13);
insert into ORDER1 values('wo_okie', 0470903, '2017-09-03', 2);
insert into ORDER1 values('heon_y98', 0780509, '2018-05-09', 2);
insert into ORDER1 values('tig05013', 2280318, '2018-03-18', 6);
insert into ORDER1 values('chaaun100', 4580804, '2018-08-04', 13);
insert into ORDER1 values('wondeuk100', 3770412, '2017-04-12', 13);
insert into ORDER1 values('muyeon100', 4680510, '2018-05-10', 13);
insert into ORDER1 values('gudol100', 4181012, '2018-10-12', 12);
insert into ORDER1 values('heon_y98', 0780806, '2018-08-06', 2);
insert into ORDER1 values('wondeuk100', 3770423, '2017-04-23', 2);

insert into ORDER1 values('dowoodowoo', 5981028, '2017-04-23', 17);

insert into ORDER1 values('heejinmin', 5870324, '2017-03-24', 17);

insert into ORDER1 values('soomanlee', 5670520, '2017-05-20', 17);

insert into ORDER1 values('mino927', 5470803, '2017-08-03', 16);



insert into ORDER_LIST values(3370302, '1000030245083', 8);
insert into ORDER_LIST values(5180810, '1000029112883', 8);
insert into ORDER_LIST values(5180810, '1000025087780', 9);
insert into ORDER_LIST values(0580216, '1000013876582', 5);
insert into ORDER_LIST values(2570612, '1000029158987', 1);
insert into ORDER_LIST values(2570612, '1000030385472', 2);
insert into ORDER_LIST values(2370311, '1000007002778', 4);
insert into ORDER_LIST values(0670629, '0000007452331', 5);
insert into ORDER_LIST values(3470410, '1000030233126', 7);
insert into ORDER_LIST values(3470410, '1000030350228', 3);
insert into ORDER_LIST values(3470410, '1000020377480', 7);
insert into ORDER_LIST values(4670912, '1000015849657', 1);
insert into ORDER_LIST values(1380422, '1000030328089', 2);
insert into ORDER_LIST values(1380422, '2097000288598', 2);
insert into ORDER_LIST values(4181020, '1000019004601', 7);
insert into ORDER_LIST values(0170223, '1000017481514', 7);
insert into ORDER_LIST values(0170223, '1000006972256', 10);
insert into ORDER_LIST values(5370201, '1000025087780', 6);
insert into ORDER_LIST values(3870306, '1000028975052', 10);
insert into ORDER_LIST values(3870306, '0000008785392', 1);
insert into ORDER_LIST values(3870306, '0000008289403', 3);
insert into ORDER_LIST values(2870530, '1000029112883', 8);
insert into ORDER_LIST values(2870530, '1000015849657', 1);
insert into ORDER_LIST values(2870530, '1000029981285', 2);
insert into ORDER_LIST values(4080428, '1000019757676', 8);
insert into ORDER_LIST values(4080428, '1000029158987', 7);
insert into ORDER_LIST values(5171003, '1000028530974', 4);
insert into ORDER_LIST values(5170312, '1000029201625', 5);
insert into ORDER_LIST values(1261215, '1000015849657', 3);
insert into ORDER_LIST values(1261215, '1000030245083', 1);
insert into ORDER_LIST values(5670315, '0000008911970', 9);
insert into ORDER_LIST values(5670315, '1000008155424', 2);
insert into ORDER_LIST values(1761105, '1000027502323', 1);
insert into ORDER_LIST values(1761105, '2097000288505', 1);
insert into ORDER_LIST values(4280510, '1000029981285', 9);
insert into ORDER_LIST values(4280510, '1000027990213', 9);
insert into ORDER_LIST values(1180111, '2097000288505', 5);
insert into ORDER_LIST values(1180111, '1000021664234', 8);
insert into ORDER_LIST values(1180111, '1000030385472', 10);
insert into ORDER_LIST values(3581001, '0000008911970', 10);
insert into ORDER_LIST values(3581001, '0000008289403', 3);
insert into ORDER_LIST values(5381025, '1000015513302', 8);
insert into ORDER_LIST values(1570830, '0000008911970', 5);
insert into ORDER_LIST values(4380712, '1000019306146', 10);
insert into ORDER_LIST values(4980624, '1000030233126', 1);
insert into ORDER_LIST values(4980624, '1000030245083', 10);
insert into ORDER_LIST values(4980624, '2097000288598', 10);
insert into ORDER_LIST values(3380514, '1000030230577', 9);
insert into ORDER_LIST values(3380514, '1000029981285', 4);
insert into ORDER_LIST values(3380514, '1000029715468', 10);
insert into ORDER_LIST values(1370807, '1000015513302', 6);
insert into ORDER_LIST values(1370807, '1000021474017', 7);
insert into ORDER_LIST values(1370807, '1000029112883', 2);
insert into ORDER_LIST values(0580629, '1000005077033', 4);
insert into ORDER_LIST values(0080507, '1000025087780', 4);
insert into ORDER_LIST values(5070416, '1000018136997', 5);
insert into ORDER_LIST values(4971214, '1000007002778', 5);
insert into ORDER_LIST values(1480508, '1000020377480', 2);
insert into ORDER_LIST values(1480508, '0000008911970', 8);
insert into ORDER_LIST values(1480508, '1000030350228', 10);
insert into ORDER_LIST values(5170503, '1000017481514', 7);
insert into ORDER_LIST values(1380310, '1000029715468', 5);
insert into ORDER_LIST values(1380310, '1000025087780', 1);
insert into ORDER_LIST values(0171107, '1000007002778', 5);
insert into ORDER_LIST values(0171107, '1000021474017', 9);
insert into ORDER_LIST values(0171107, '1000019757676', 8);
insert into ORDER_LIST values(1780825, '1000005077033', 8);
insert into ORDER_LIST values(1780825, '1000030230577', 2);
insert into ORDER_LIST values(3380518, '2097000288598', 3);
insert into ORDER_LIST values(3380518, '1000027502323', 2);
insert into ORDER_LIST values(1661113, '1000029981285', 10);
insert into ORDER_LIST values(2171227, '2097000288505', 7);
insert into ORDER_LIST values(2171227, '0000008785392', 5);
insert into ORDER_LIST values(4680412, '1000007002778', 9);
insert into ORDER_LIST values(4680412, '1000030245083', 6);
insert into ORDER_LIST values(4680412, '1000005077033', 9);
insert into ORDER_LIST values(4961127, '1000021664234', 10);
insert into ORDER_LIST values(4961127, '1000019757676', 10);
insert into ORDER_LIST values(0680531, '1000023464935', 10);
insert into ORDER_LIST values(0680531, '2097000288598', 1);
insert into ORDER_LIST values(0680531, '1000021664234', 10);
insert into ORDER_LIST values(3561126, '1000029981285', 4);
insert into ORDER_LIST values(4770531, '1000025087780', 7);
insert into ORDER_LIST values(4770531, '1000030385472', 4);
insert into ORDER_LIST values(1170819, '1000005077033', 1);
insert into ORDER_LIST values(1170819, '1000027990213', 6);
insert into ORDER_LIST values(5280515, '1000019306146', 4);
insert into ORDER_LIST values(1581031, '1000023464935', 4);
insert into ORDER_LIST values(1581031, '2097000288505', 3);
insert into ORDER_LIST values(1581031, '1000024337327', 10);
insert into ORDER_LIST values(4380301, '1000017481514', 10);
insert into ORDER_LIST values(4380301, '1000008155424', 7);
insert into ORDER_LIST values(4380301, '2097000288505', 2);
insert into ORDER_LIST values(4680103, '1000027990213', 9);
insert into ORDER_LIST values(4680103, '1000021167898', 7);
insert into ORDER_LIST values(4680103, '1000024337327', 6);
insert into ORDER_LIST values(3970930, '1000006972256', 6);
insert into ORDER_LIST values(1161130, '0000008785392', 6);
insert into ORDER_LIST values(1161130, '1000021167898', 9);
insert into ORDER_LIST values(2980803, '0000008911970', 8);
insert into ORDER_LIST values(2980803, '1000023464935', 9);
insert into ORDER_LIST values(2980803, '2097000288598', 6);
insert into ORDER_LIST values(1481007, '0000008016579', 8);
insert into ORDER_LIST values(1481007, '1000019004601', 2);
insert into ORDER_LIST values(1180108, '1000020377480', 10);
insert into ORDER_LIST values(1180108, '1000013876582', 2);
insert into ORDER_LIST values(1180108, '1000015849657', 5);
insert into ORDER_LIST values(0180610, '1000021474017', 9);
insert into ORDER_LIST values(3570406, '1000024337327', 3);
insert into ORDER_LIST values(3570406, '1000005077033', 4);
insert into ORDER_LIST values(3570406, '1000013876582', 3);
insert into ORDER_LIST values(0470410, '1000021167898', 2);
insert into ORDER_LIST values(0470410, '1000013876582', 1);
insert into ORDER_LIST values(1780317, '1000017675682', 1);
insert into ORDER_LIST values(1780317, '1000021474017', 7);
insert into ORDER_LIST values(1780317, '1000027990213', 2);
insert into ORDER_LIST values(4071213, '0000008016579', 8);
insert into ORDER_LIST values(4180702, '1000021474017', 7);
insert into ORDER_LIST values(4180702, '1000018136997', 3);
insert into ORDER_LIST values(4180702, '1000017675682', 3);
insert into ORDER_LIST values(4580108, '1000006972256', 7);
insert into ORDER_LIST values(3680831, '1000019306146', 4);
insert into ORDER_LIST values(4770106, '1000023151723', 6);
insert into ORDER_LIST values(4770106, '1000017675682', 7);
insert into ORDER_LIST values(1180209, '1000030233126', 7);
insert into ORDER_LIST values(0580830, '1000029158987', 2);
insert into ORDER_LIST values(0580830, '1000019757676', 7);
insert into ORDER_LIST values(1570907, '1000027990213', 3);
insert into ORDER_LIST values(1570907, '1000005077033', 7);
insert into ORDER_LIST values(0680618, '1000029158987', 6);
insert into ORDER_LIST values(0680618, '1000013876582', 6);
insert into ORDER_LIST values(1161118, '1000021664234', 1);
insert into ORDER_LIST values(1161118, '1000029158987', 9);
insert into ORDER_LIST values(0161208, '1000024337327', 6);
insert into ORDER_LIST values(0161208, '1000021664234', 8);
insert into ORDER_LIST values(0161208, '1000017675682', 6);
insert into ORDER_LIST values(5661111, '1000030245083', 10);
insert into ORDER_LIST values(5661111, '1000029981285', 2);
insert into ORDER_LIST values(5661111, '1000030350228', 6);
insert into ORDER_LIST values(0780123, '1000005077033', 2);
insert into ORDER_LIST values(0780123, '1000029201625', 3);
insert into ORDER_LIST values(0780123, '0000008911970', 7);
insert into ORDER_LIST values(3361209, '0000008289403', 8);
insert into ORDER_LIST values(3361209, '1000029112883', 8);
insert into ORDER_LIST values(2481016, '1000027990213', 5);
insert into ORDER_LIST values(2481016, '1000021474017', 8);
insert into ORDER_LIST values(2481016, '1000019004601', 4);
insert into ORDER_LIST values(4280201, '2097000288505', 3);
insert into ORDER_LIST values(4280201, '1000015849657', 8);
insert into ORDER_LIST values(4280201, '1000023151723', 9);
insert into ORDER_LIST values(4770214, '1000017675682', 5);
insert into ORDER_LIST values(0870408, '1000006972256', 9);
insert into ORDER_LIST values(0870408, '0000008911970', 9);
insert into ORDER_LIST values(4481016, '1000015513302', 5);
insert into ORDER_LIST values(4481016, '1000008155424', 8);
insert into ORDER_LIST values(4481016, '0000008911970', 9);
insert into ORDER_LIST values(4170901, '1000029112883', 5);
insert into ORDER_LIST values(4170901, '0000008289403', 4);
insert into ORDER_LIST values(2871224, '1000027990213', 9);
insert into ORDER_LIST values(2871224, '1000023151723', 6);
insert into ORDER_LIST values(4770221, '1000029158987', 4);
insert into ORDER_LIST values(4770221, '1000030233126', 4);
insert into ORDER_LIST values(5370801, '1000024337327', 3);
insert into ORDER_LIST values(4970302, '1000021474017', 2);
insert into ORDER_LIST values(4780222, '1000015513302', 9);
insert into ORDER_LIST values(4780222, '1000006972256', 2);
insert into ORDER_LIST values(5270825, '1000017675682', 1);
insert into ORDER_LIST values(5270825, '1000021474017', 9);
insert into ORDER_LIST values(4170113, '1000019004601', 5);
insert into ORDER_LIST values(4170113, '0000008016579', 4);
insert into ORDER_LIST values(4170113, '1000029201625', 6);
insert into ORDER_LIST values(4380108, '1000021664234', 3);
insert into ORDER_LIST values(4380108, '0000008289403', 7);
insert into ORDER_LIST values(4380108, '1000013876582', 4);
insert into ORDER_LIST values(3280515, '0000008785392', 2);
insert into ORDER_LIST values(3280515, '1000021474017', 9);
insert into ORDER_LIST values(3280515, '1000013876582', 2);
insert into ORDER_LIST values(1980328, '1000017675682', 8);
insert into ORDER_LIST values(1980328, '0000008911970', 4);
insert into ORDER_LIST values(0880214, '1000006972256', 3);
insert into ORDER_LIST values(0880214, '1000005077033', 2);
insert into ORDER_LIST values(5170605, '1000018136997', 1);
insert into ORDER_LIST values(0580916, '0000007452331', 10);
insert into ORDER_LIST values(0580916, '1000030350228', 7);
insert into ORDER_LIST values(0580916, '1000029981285', 7);
insert into ORDER_LIST values(2861111, '1000029201625', 5);
insert into ORDER_LIST values(2861111, '1000030230577', 7);
insert into ORDER_LIST values(0480301, '1000021167898', 8);
insert into ORDER_LIST values(2570616, '1000028975052', 3);
insert into ORDER_LIST values(2570616, '1000029112883', 10);
insert into ORDER_LIST values(2570616, '1000019306146', 9);
insert into ORDER_LIST values(0170216, '1000017481514', 3);
insert into ORDER_LIST values(0170216, '1000017675682', 5);
insert into ORDER_LIST values(0170216, '0000007452331', 8);
insert into ORDER_LIST values(4971231, '1000021664234', 5);
insert into ORDER_LIST values(3470429, '0000007452331', 1);
insert into ORDER_LIST values(1681004, '1000006972256', 5);
insert into ORDER_LIST values(3580730, '1000019306146', 1);
insert into ORDER_LIST values(3580730, '1000006972256', 1);
insert into ORDER_LIST values(3580730, '1000029112883', 7);
insert into ORDER_LIST values(2580225, '1000023151723', 5);
insert into ORDER_LIST values(2580225, '1000017481514', 1);
insert into ORDER_LIST values(2580225, '1000020377480', 5);
insert into ORDER_LIST values(0570120, '1000029158987', 5);
insert into ORDER_LIST values(0570120, '1000021167898', 4);
insert into ORDER_LIST values(1670328, '1000029715468', 8);
insert into ORDER_LIST values(1680608, '1000024337327', 3);
insert into ORDER_LIST values(4770118, '0000006610289', 1);
insert into ORDER_LIST values(4770118, '1000015513302', 6);
insert into ORDER_LIST values(4770118, '1000021167898', 3);
insert into ORDER_LIST values(0271106, '1000028530974', 4);
insert into ORDER_LIST values(0271106, '2097000288505', 8);
insert into ORDER_LIST values(3271116, '1000023151723', 8);
insert into ORDER_LIST values(3271116, '2097000288598', 7);
insert into ORDER_LIST values(3271116, '1000020377480', 4);
insert into ORDER_LIST values(0980517, '0000008016579', 2);
insert into ORDER_LIST values(1580411, '0000008289403', 8);
insert into ORDER_LIST values(1580411, '1000024337327', 10);
insert into ORDER_LIST values(2380812, '1000019306146', 9);
insert into ORDER_LIST values(2481002, '1000015849657', 9);
insert into ORDER_LIST values(2481002, '1000030385472', 3);
insert into ORDER_LIST values(5270105, '0000008785392', 3);
insert into ORDER_LIST values(1181016, '1000029981285', 5);
insert into ORDER_LIST values(1181016, '1000030350228', 5);
insert into ORDER_LIST values(4471026, '1000028530974', 2);
insert into ORDER_LIST values(4471026, '0000008016579', 10);
insert into ORDER_LIST values(3670116, '1000030385472', 9);
insert into ORDER_LIST values(3670116, '0000007452331', 1);
insert into ORDER_LIST values(5471016, '1000029158987', 5);
insert into ORDER_LIST values(1571029, '1000019306146', 3);
insert into ORDER_LIST values(1571029, '1000023464935', 10);
insert into ORDER_LIST values(4180124, '1000021664234', 3);
insert into ORDER_LIST values(4180124, '1000015513302', 1);
insert into ORDER_LIST values(0380506, '1000007002778', 3);
insert into ORDER_LIST values(2180822, '1000021474017', 3);
insert into ORDER_LIST values(2180822, '1000015513302', 8);
insert into ORDER_LIST values(2180822, '1000015849657', 7);
insert into ORDER_LIST values(3561103, '1000015849657', 6);
insert into ORDER_LIST values(0870524, '1000005077033', 8);
insert into ORDER_LIST values(0870524, '1000015849657', 2);
insert into ORDER_LIST values(5271210, '1000017675682', 3);
insert into ORDER_LIST values(5271210, '1000029158987', 6);
insert into ORDER_LIST values(4670206, '0000008911970', 1);
insert into ORDER_LIST values(4670206, '1000029201625', 9);
insert into ORDER_LIST values(3170602, '1000030233126', 1);
insert into ORDER_LIST values(3170602, '1000020377480', 10);
insert into ORDER_LIST values(3180316, '0000006610289', 3);
insert into ORDER_LIST values(1280104, '1000024337327', 3);
insert into ORDER_LIST values(1280104, '1000028975052', 3);
insert into ORDER_LIST values(2380125, '1000007002778', 4);
insert into ORDER_LIST values(2380125, '1000008155424', 2);
insert into ORDER_LIST values(3180508, '1000021474017', 9);
insert into ORDER_LIST values(3180508, '1000029981285', 6);
insert into ORDER_LIST values(3180508, '1000030385472', 3);
insert into ORDER_LIST values(0380729, '1000030233126', 4);
insert into ORDER_LIST values(0380729, '1000030245083', 9);
insert into ORDER_LIST values(4980510, '1000030245083', 1);
insert into ORDER_LIST values(0470529, '0000008289403', 3);
insert into ORDER_LIST values(0470529, '1000029981285', 4);
insert into ORDER_LIST values(0470529, '2097000288505', 4);
insert into ORDER_LIST values(2970416, '1000021664234', 8);
insert into ORDER_LIST values(2970416, '2097000288598', 7);
insert into ORDER_LIST values(2970416, '1000028530974', 7);
insert into ORDER_LIST values(4980905, '1000025087780', 2);
insert into ORDER_LIST values(5470810, '1000030385472', 7);
insert into ORDER_LIST values(3780705, '1000023464935', 3);
insert into ORDER_LIST values(3780705, '1000028530974', 8);
insert into ORDER_LIST values(3780705, '0000008911970', 10);
insert into ORDER_LIST values(3171101, '1000029981285', 1);
insert into ORDER_LIST values(3171101, '1000029112883', 1);
insert into ORDER_LIST values(3171101, '1000029158987', 4);
insert into ORDER_LIST values(0870501, '1000024337327', 9);
insert into ORDER_LIST values(4370518, '1000024337327', 10);
insert into ORDER_LIST values(0980616, '0000008911970', 3);
insert into ORDER_LIST values(3180620, '0000008016579', 5);
insert into ORDER_LIST values(5371204, '0000008785392', 10);
insert into ORDER_LIST values(5371204, '1000024337327', 8);
insert into ORDER_LIST values(5371204, '1000020377480', 8);
insert into ORDER_LIST values(2170114, '1000029201625', 1);
insert into ORDER_LIST values(4580315, '2097000288505', 1);
insert into ORDER_LIST values(4580315, '1000021474017', 3);
insert into ORDER_LIST values(4580315, '1000018136997', 2);
insert into ORDER_LIST values(0181021, '1000029158987', 2);
insert into ORDER_LIST values(0181021, '1000008155424', 5);
insert into ORDER_LIST values(0181021, '1000007002778', 7);
insert into ORDER_LIST values(2470321, '1000029715468', 7);
insert into ORDER_LIST values(2470321, '1000030328089', 2);
insert into ORDER_LIST values(2470321, '1000025087780', 2);
insert into ORDER_LIST values(4980117, '1000030230577', 1);
insert into ORDER_LIST values(1170208, '0000006610289', 4);
insert into ORDER_LIST values(3570630, '1000029158987', 10);
insert into ORDER_LIST values(3281022, '1000007002778', 10);
insert into ORDER_LIST values(3170303, '1000029201625', 9);
insert into ORDER_LIST values(3870501, '1000018136997', 10);
insert into ORDER_LIST values(3870501, '0000006610289', 10);
insert into ORDER_LIST values(3870501, '2097000288505', 8);
insert into ORDER_LIST values(2380128, '1000020377480', 3);
insert into ORDER_LIST values(2380128, '0000008289403', 9);
insert into ORDER_LIST values(5180830, '1000007002778', 8);
insert into ORDER_LIST values(5371227, '1000029981285', 10);
insert into ORDER_LIST values(4180930, '0000008911970', 2);
insert into ORDER_LIST values(0670908, '1000018136997', 7);
insert into ORDER_LIST values(0670908, '1000005077033', 5);
insert into ORDER_LIST values(2770713, '1000027990213', 9);
insert into ORDER_LIST values(2770713, '1000005077033', 1);
insert into ORDER_LIST values(2770713, '1000006972256', 8);
insert into ORDER_LIST values(3780813, '1000029201625', 3);
insert into ORDER_LIST values(2361203, '1000029201625', 3);
insert into ORDER_LIST values(2361203, '1000030245083', 2);
insert into ORDER_LIST values(2361203, '1000018136997', 5);
insert into ORDER_LIST values(1680305, '1000030350228', 5);
insert into ORDER_LIST values(1680305, '1000027990213', 4);
insert into ORDER_LIST values(1680305, '1000006972256', 3);
insert into ORDER_LIST values(1380705, '0000008289403', 9);
insert into ORDER_LIST values(1380705, '2097000288505', 4);
insert into ORDER_LIST values(1380705, '1000013876582', 10);
insert into ORDER_LIST values(2671015, '1000028530974', 5);
insert into ORDER_LIST values(2671015, '1000020377480', 2);
insert into ORDER_LIST values(2671015, '1000021664234', 9);
insert into ORDER_LIST values(2671117, '1000030245083', 5);
insert into ORDER_LIST values(2480113, '1000020377480', 10);
insert into ORDER_LIST values(2170124, '1000029112883', 7);
insert into ORDER_LIST values(2170124, '0000007452331', 6);
insert into ORDER_LIST values(2980805, '1000021474017', 6);
insert into ORDER_LIST values(3780609, '0000006610289', 10);
insert into ORDER_LIST values(3780609, '1000024337327', 8);
insert into ORDER_LIST values(3780609, '0000008016579', 4);
insert into ORDER_LIST values(3361124, '1000018136997', 8);
insert into ORDER_LIST values(3361124, '1000021474017', 9);
insert into ORDER_LIST values(5361212, '1000027502323', 9);
insert into ORDER_LIST values(0471025, '1000029715468', 2);
insert into ORDER_LIST values(0471025, '1000027990213', 8);
insert into ORDER_LIST values(0471025, '2097000288505', 1);
insert into ORDER_LIST values(1970210, '1000029112883', 7);
insert into ORDER_LIST values(1970210, '1000013876582', 3);
insert into ORDER_LIST values(1970210, '1000030328089', 6);
insert into ORDER_LIST values(5180610, '1000021474017', 3);
insert into ORDER_LIST values(4261227, '1000030328089', 4);
insert into ORDER_LIST values(4261227, '1000006972256', 6);
insert into ORDER_LIST values(4261227, '1000020377480', 6);
insert into ORDER_LIST values(2480912, '0000008911970', 3);
insert into ORDER_LIST values(2480912, '1000017675682', 9);
insert into ORDER_LIST values(1381004, '1000030230577', 4);
insert into ORDER_LIST values(1971026, '1000015849657', 3);
insert into ORDER_LIST values(1971026, '1000028530974', 5);
insert into ORDER_LIST values(5580819, '1000025087780', 8);
insert into ORDER_LIST values(5580819, '1000017481514', 9);
insert into ORDER_LIST values(5580819, '1000005077033', 8);
insert into ORDER_LIST values(1271206, '0000006610289', 9);
insert into ORDER_LIST values(3870718, '1000021474017', 7);
insert into ORDER_LIST values(3870718, '1000021664234', 4);
insert into ORDER_LIST values(3870718, '1000028975052', 5);
insert into ORDER_LIST values(2481020, '0000008911970', 4);
insert into ORDER_LIST values(2481020, '1000029981285', 3);
insert into ORDER_LIST values(2481020, '1000013876582', 9);
insert into ORDER_LIST values(3770102, '1000027502323', 9);
insert into ORDER_LIST values(4570901, '0000007452331', 1);
insert into ORDER_LIST values(4570901, '1000030328089', 6);
insert into ORDER_LIST values(5370618, '1000017675682', 7);
insert into ORDER_LIST values(5370618, '1000030385472', 7);
insert into ORDER_LIST values(5370618, '1000025087780', 5);
insert into ORDER_LIST values(4471228, '1000019004601', 8);
insert into ORDER_LIST values(4471228, '1000027502323', 4);
insert into ORDER_LIST values(4471228, '2097000288505', 5);
insert into ORDER_LIST values(4480217, '1000029112883', 3);
insert into ORDER_LIST values(0061228, '1000019306146', 3);
insert into ORDER_LIST values(2870222, '1000017481514', 8);
insert into ORDER_LIST values(2870222, '1000008155424', 7);
insert into ORDER_LIST values(2870222, '1000030245083', 10);
insert into ORDER_LIST values(0061113, '1000018136997', 5);
insert into ORDER_LIST values(0061113, '1000023151723', 1);
insert into ORDER_LIST values(0061113, '0000008289403', 6);
insert into ORDER_LIST values(5180914, '1000021474017', 10);
insert into ORDER_LIST values(5180914, '0000008911970', 8);
insert into ORDER_LIST values(4980425, '1000017481514', 5);
insert into ORDER_LIST values(4980425, '1000030233126', 5);
insert into ORDER_LIST values(4980425, '1000028530974', 7);
insert into ORDER_LIST values(0470516, '1000018136997', 8);
insert into ORDER_LIST values(0470516, '1000007002778', 1);
insert into ORDER_LIST values(0470516, '1000021664234', 1);
insert into ORDER_LIST values(4281018, '1000029201625', 1);
insert into ORDER_LIST values(4281018, '0000007452331', 10);
insert into ORDER_LIST values(4281018, '1000015513302', 6);
insert into ORDER_LIST values(1580723, '1000030350228', 8);
insert into ORDER_LIST values(1580723, '1000029981285', 10);
insert into ORDER_LIST values(3170110, '1000015513302', 6);
insert into ORDER_LIST values(3170110, '1000030245083', 1);
insert into ORDER_LIST values(4680529, '1000024337327', 5);
insert into ORDER_LIST values(4680529, '1000030245083', 9);
insert into ORDER_LIST values(3870612, '1000005077033', 1);
insert into ORDER_LIST values(3870612, '1000020377480', 9);
insert into ORDER_LIST values(1380404, '0000006610289', 3);
insert into ORDER_LIST values(1380404, '0000008016579', 10);
insert into ORDER_LIST values(3570331, '1000030230577', 9);
insert into ORDER_LIST values(3570331, '2097000288598', 5);
insert into ORDER_LIST values(3970512, '1000030233126', 7);
insert into ORDER_LIST values(3970512, '1000017675682', 5);
insert into ORDER_LIST values(3970512, '0000007452331', 7);
insert into ORDER_LIST values(2680206, '1000015513302', 2);
insert into ORDER_LIST values(2770609, '1000028975052', 4);
insert into ORDER_LIST values(2770609, '1000030328089', 5);
insert into ORDER_LIST values(1980523, '2097000288505', 6);
insert into ORDER_LIST values(3580713, '1000023151723', 10);
insert into ORDER_LIST values(3580713, '1000017481514', 6);
insert into ORDER_LIST values(0170923, '0000008911970', 6);
insert into ORDER_LIST values(0170923, '1000023151723', 3);
insert into ORDER_LIST values(0170923, '1000008155424', 4);
insert into ORDER_LIST values(0771115, '1000024337327', 3);
insert into ORDER_LIST values(0771115, '2097000288505', 10);
insert into ORDER_LIST values(0771115, '1000028530974', 1);
insert into ORDER_LIST values(4071211, '1000006972256', 5);
insert into ORDER_LIST values(4071211, '1000030233126', 8);
insert into ORDER_LIST values(0770607, '1000017481514', 4);
insert into ORDER_LIST values(0770607, '1000028975052', 8);
insert into ORDER_LIST values(0770607, '1000019757676', 10);
insert into ORDER_LIST values(0480925, '1000030230577', 3);
insert into ORDER_LIST values(0480925, '1000008155424', 10);
insert into ORDER_LIST values(0480925, '1000017675682', 6);
insert into ORDER_LIST values(0580831, '2097000288598', 4);
insert into ORDER_LIST values(0580831, '1000025087780', 6);
insert into ORDER_LIST values(0580831, '1000021474017', 5);
insert into ORDER_LIST values(3570916, '1000023151723', 9);
insert into ORDER_LIST values(3570916, '1000030328089', 4);
insert into ORDER_LIST values(3570916, '1000027990213', 10);
insert into ORDER_LIST values(5571003, '1000027990213', 5);
insert into ORDER_LIST values(5571003, '1000030350228', 4);
insert into ORDER_LIST values(1770520, '1000028975052', 6);
insert into ORDER_LIST values(3181028, '1000029715468', 10);
insert into ORDER_LIST values(3770128, '0000008289403', 8);
insert into ORDER_LIST values(0170808, '1000019004601', 3);
insert into ORDER_LIST values(0170808, '1000005077033', 1);
insert into ORDER_LIST values(0170808, '1000007002778', 2);
insert into ORDER_LIST values(1361201, '1000019004601', 10);
insert into ORDER_LIST values(4571226, '0000008289403', 8);
insert into ORDER_LIST values(4670223, '1000030328089', 9);
insert into ORDER_LIST values(4670223, '0000006610289', 9);
insert into ORDER_LIST values(4571024, '1000008155424', 7);
insert into ORDER_LIST values(4571024, '1000030328089', 3);
insert into ORDER_LIST values(1180228, '1000029201625', 10);
insert into ORDER_LIST values(0761227, '0000007452331', 1);
insert into ORDER_LIST values(0761227, '1000030385472', 8);
insert into ORDER_LIST values(0761227, '0000006610289', 8);
insert into ORDER_LIST values(3870125, '1000023464935', 10);
insert into ORDER_LIST values(3870125, '1000029158987', 9);
insert into ORDER_LIST values(3870125, '0000007452331', 5);
insert into ORDER_LIST values(4070125, '1000018136997', 5);
insert into ORDER_LIST values(4070125, '1000021664234', 5);
insert into ORDER_LIST values(4380721, '2097000288505', 10);
insert into ORDER_LIST values(4380721, '1000006972256', 5);
insert into ORDER_LIST values(3371120, '1000030230577', 4);
insert into ORDER_LIST values(3371120, '1000023464935', 3);
insert into ORDER_LIST values(5180816, '1000017481514', 9);
insert into ORDER_LIST values(3770123, '0000006610289', 8);
insert into ORDER_LIST values(3770123, '1000028975052', 5);
insert into ORDER_LIST values(0180520, '1000021664234', 5);
insert into ORDER_LIST values(0180520, '1000025087780', 2);
insert into ORDER_LIST values(3571218, '1000030233126', 6);
insert into ORDER_LIST values(3571218, '1000015849657', 5);
insert into ORDER_LIST values(3571218, '1000029981285', 4);
insert into ORDER_LIST values(5280609, '1000017675682', 8);
insert into ORDER_LIST values(2281025, '1000023151723', 6);
insert into ORDER_LIST values(2281025, '1000024337327', 2);
insert into ORDER_LIST values(2470812, '1000027502323', 2);
insert into ORDER_LIST values(2470812, '1000028530974', 7);
insert into ORDER_LIST values(2470812, '1000021664234', 2);
insert into ORDER_LIST values(4370807, '1000024337327', 4);
insert into ORDER_LIST values(0871213, '1000029112883', 7);
insert into ORDER_LIST values(0871213, '1000027990213', 7);
insert into ORDER_LIST values(0871213, '1000023151723', 9);
insert into ORDER_LIST values(0771124, '1000029201625', 3);
insert into ORDER_LIST values(2471223, '1000015849657', 8);
insert into ORDER_LIST values(2471223, '1000029201625', 1);
insert into ORDER_LIST values(1580117, '1000005077033', 2);
insert into ORDER_LIST values(1580117, '0000008016579', 1);
insert into ORDER_LIST values(1580117, '1000027990213', 1);
insert into ORDER_LIST values(2461103, '1000030350228', 6);
insert into ORDER_LIST values(2461103, '0000008911970', 1);
insert into ORDER_LIST values(4580426, '1000029158987', 3);
insert into ORDER_LIST values(4580426, '1000017675682', 4);
insert into ORDER_LIST values(0470903, '1000029158987', 6);
insert into ORDER_LIST values(0470903, '1000018136997', 8);
insert into ORDER_LIST values(0780509, '1000017481514', 4);
insert into ORDER_LIST values(2280318, '1000006972256', 8);
insert into ORDER_LIST values(4580804, '1000021167898', 5);
insert into ORDER_LIST values(3770412, '1000005077033', 7);
insert into ORDER_LIST values(3770412, '1000006972256', 4);
insert into ORDER_LIST values(3770412, '2097000288598', 3);
insert into ORDER_LIST values(4680510, '1000013876582', 9);
insert into ORDER_LIST values(4680510, '1000023151723', 6);
insert into ORDER_LIST values(4680510, '0000008289403', 4);
insert into ORDER_LIST values(4181012, '0000008289403', 10);
insert into ORDER_LIST values(4181012, '1000027502323', 7);
insert into ORDER_LIST values(0780806, '0000006610289', 10);
insert into ORDER_LIST values(3770423, '1000030350228', 8);

insert into CUSTOMER values('mi_rae20', 'perfume', 'F', '서울특별시 강남구', 20, '강미래', '01046827480', '학생');
insert into CUSTOMER values('kekeke_xo', 'tnwlstlwja', 'F', '서울특별시 용산구', 34, '이수진', '01085829339', NULL);
insert into CUSTOMER values('feellikefeel1', 'ahgahgahg', 'M', '서울특별시 종로구', 33, '백승헌', '01038982731', '연예인');
insert into CUSTOMER values('Jaeho_0128', 'sorry89aldks', NULL, '서울특별시 성동구', NULL, '조재호', '01029386694', NULL);
insert into CUSTOMER values('wo_okie', 'snrlsnrl2738', 'M', '인천광역시 미추홀구', 35, '손진욱', '01038599009', NULL);
insert into CUSTOMER values('momo_soda', 'ekdnjsdl', 'F', '인천광역시 중구', 21, '강다원', '01068991289', '자영업자');
insert into CUSTOMER values('pongdang', '365tart', 'M', '인천광역시 동구', 35, '한퐁당', '01078386990', NULL);
insert into CUSTOMER values('heon_y98', 'gjdrbd9901', NULL, '인천광역시 연수구', NULL, '이헌규', '01055381920', NULL);
insert into CUSTOMER values('y_ra12', 'ajdajd12', 'F', '대전광역시 동구', 22, '최유라', '01030067994', 'CEO');
insert into CUSTOMER values('laetitia_jin', 'rhdwkaodwk', 'F', '대전광역시 중구', 28, '이여진', '01093970982', NULL);
insert into CUSTOMER values('mansion_8', 'duators288', 'F', '대전광역시 서구', 31, '김민선', '01090942351', NULL);
insert into CUSTOMER values('ppmm1998', '99rnsdls', NULL, '대구광역시 달성군', NULL, '박민준', '01083859602', NULL);
insert into CUSTOMER values('yejin9989', 'dpwlsrhdwn', 'F', '대구광역시 달성군', 21, '이예진', '01072979949', '학생');
insert into CUSTOMER values('2yealim', 'dd1900', 'F', '대구광역시 북구', 19, '이예림', '01024469989', NULL);
insert into CUSTOMER values('young_jae.98', 'ditlwkd', 'M', '대구광역시 달서구', 29, '이영재', '01059213792', NULL);
insert into CUSTOMER values('hjk75899', '02tjdeo20', NULL, '대구광역시 서구', 34, '정현준', '01086797223', NULL);
insert into CUSTOMER values('joo_dmd2', '12fmdwb', 'F', '울산광역시 중구', 23, '이은주', '01082894962', '학생');
insert into CUSTOMER values('dntmddnjs', 'dpwlsdlrh', 'M', '울산광역시 남구', 25, '원우승', '01058992735', NULL);
insert into CUSTOMER values('sj981119', 'iam98dbdl', 'F', '울산광역시 동구', 21, '홍수정', '01098111927', NULL);
insert into CUSTOMER values('ssnyn', 'xogudS2', 'F', '부산광역시 중구', 22, '신세영', '01096361053', '학생');
insert into CUSTOMER values('5_jeongtaek', 'cpdbrejvqkq', 'M', '부산광역시 해운대구', 44, '오정택', '01099582211', NULL);
insert into CUSTOMER values('turningpoint', 'rhrnak1hoho', 'M', '부산광역시 영도구', 39, '장보금', '01050602934', NULL);
insert into CUSTOMER values('tig05013', 't2leht2leh', NULL, '부산광역시 수영구', 58, '배재원', '01045923956', NULL);
insert into CUSTOMER values('seuluv_', 'chocoF', NULL, '광주광역시 동구', 24, '김슬기', '01017483892', '댄서');
insert into CUSTOMER values('jhiro2', '090enfkew', 'M', '광주광역시 서구', 38, '유영근', '01066923348', NULL);
insert into CUSTOMER values('kinam_h', 'rhrhvlqkd131', 'M', '광주광역시 남구', 48, '한기남', '01024990693', NULL);
insert into CUSTOMER values('youro0007', 'rudtnrfjqm', 'M', '세종특별자치시 조치원읍', 28, '이현로', '01059293077', '교사');
insert into CUSTOMER values('kiyomi_bori', 'bowow002', 'M', '세종특별자치시 연기면', 12, '박보리', '01021789903', NULL);
insert into CUSTOMER values('i_cd_yu', '12tmffkdla12', 'F', '세종특별자치시 금남면', 35, '이채은', '01088492375', NULL);
insert into CUSTOMER values('xiumin326', '19900326', 'M', '강원도 강릉시', 29, '김민석', '01019900326', '도지사');
insert into CUSTOMER values('lay107', '19911007', NULL, '강원도 삼척시', NULL, '장예흥', '01019911007', 'NULL');
insert into CUSTOMER values('bh0506', '19920506', 'M', '강원도 양구시', 27, '변백현', '01019920506', '프로게이머');
insert into CUSTOMER values('suho522', '19910522', 'M', '경기도 수원시', 28, '김준면', '01019910522', 'CEO');
insert into CUSTOMER values('chen921', '19920921', 'M', '경기도 시흥시', 27, '김종대', '01019920921', '작사가');
insert into CUSTOMER values('yeol1127', '19921127', 'M', '경기도 부천시', 27, '박찬열', '01019921127', NULL);
insert into CUSTOMER values('do112', '19930112', 'M', '경기도 일산시', 26, '도경수', '01019930112', NULL);
insert into CUSTOMER values('hun412', '19940412', 'M', '충청북도 청주시', 25, '오세훈', '01019940412', '안무가');
insert into CUSTOMER values('wondeuk100', '19930101', 'M', '충청북도 충주시', 26, '김원득', '01019930101', NULL);
insert into CUSTOMER values('yulyul100', '19930110', NULL, '충청북도 제천시', NULL, '이율', '01019930110', NULL);
insert into CUSTOMER values('hongsim100', '19910909', 'F', '충청남도 천안시', NULL, '연홍심', '01019910909', NULL);
insert into CUSTOMER values('yeeseo100', '20010707', 'F', '충청남도 부여시', NULL, '윤이서', '01020010707', NULL);
insert into CUSTOMER values('gudol100', '19830919', NULL, '충청남도 보령시', NULL, '김구돌', '01019830919', NULL);
insert into CUSTOMER values('zeyoon100', '19880202', NULL, '전라북도 전주시', NULL, '정제윤', '01019880202', NULL);
insert into CUSTOMER values('sohye100', '19940505', 'F', '전라북도 남원시', NULL, '김소혜', '01019940505', '모델');
insert into CUSTOMER values('suzy100', '19850606', 'M', '전라북도 군산시', NULL, '김수지', '01019850606', NULL);
insert into CUSTOMER values('chaaun100', '19701212', 'M', '전라남도 목포시', NULL, '김차언', '01019701212', NULL);
insert into CUSTOMER values('muyeon100', '19870707', 'M', '전라남도 여수시', NULL, '윤무연', '01019870707', NULL);
insert into CUSTOMER values('sayeop100', '19790709', 'M', '전라남도 순천시', NULL, '정사엽', '01019790709', NULL);
insert into CUSTOMER values('jinjin1217', '19591217', 'M', '경상북도 포항시', NULL, '최병진', '01019591217', NULL);
insert into CUSTOMER values('sohee100', '19650605', 'F', '경상북도 안동시', NULL, '한소희', '01019650605', NULL);
insert into CUSTOMER values('seonho100', '19860508', 'M', '경상북도 경주시', NULL, '김선호', '01019860508', NULL);
insert into CUSTOMER values('kai114', '19940114', NULL, '경상남도 창원시', NULL, '김종인', '01019940114', NULL);
insert into CUSTOMER values('jihyun100', '20000130', 'F', '경상남도 김해시', NULL, '남지현', '01020000130', NULL);
insert into CUSTOMER values('mino927', '19730927', 'F', '경상남도 양산시', NULL, '이민호', '01019730927', '의사');
insert into CUSTOMER values('soomanlee', '19520618', 'F', '제주특별자치도 제주시', NULL, '이수만', '01019520618', NULL);
insert into CUSTOMER values('heejinmin', '19770707', 'F', '제주특별자치도 제주시', NULL, '민희진', '01019770707', '디자이너');
insert into CUSTOMER values('dowoodowoo', '19850505', 'F', '제주특별자치도 제주시', NULL, '한도우', '01019850505', NULL);

alter table ITEM add foreign key (Name_of_category) references CATEGORY(Sub_category);
alter table ITEM add foreign key (Item_prod_loca) references PRODUCERLOCATION(Producer_Location);
--alter table SHOPPINGBAG add foreign key (Purchase_item) references ITEM(Item_number);
alter table SHOPPINGBAG add foreign key (Customer_id) references CUSTOMER(Id);
alter table CUSTOMEROPINION add foreign key (Writer_id) references CUSTOMER(Id);
alter table CUSTOMEROPINION add foreign key (Item_num) references ITEM(Item_number);
alter table HAS_A add foreign key (Ino) references ITEM(Item_number);
alter table HAS_A add foreign key (Rno) references RETAILER(RETAILER_number);
alter table ORDER1 add foreign key (Cid) references CUSTOMER(Id);
alter table ORDER1 add foreign key (Delivery_retailer) references RETAILER(Retailer_number);
alter table ORDER_LIST add foreign key (Order_num) references ORDER1(Order_number);
alter table ORDER_LIST add foreign key (Pitem) references ITEM(Item_number);

select HAS_A.Ino, ITEM.Item_name
from HAS_A, ITEM
where HAS_A.Ino = ITEM.Item_number
group by HAS_A.Ino, ITEM.Item_name having sum(HAS_A.Stock) <= 20;

select COUNT(*)
from CUSTOMER;

select ORDER1.Cid, CUSTOMER.Name
from ORDER1, CUSTOMER
where CUSTOMER.Id = ORDER1.Cid
group by ORDER1.Cid, CUSTOMER.Name having count(*) >= 7;

select RETAILER.Retailer_name, ORDER1.Delivery_retailer, count(*)
from ORDER1, RETAILER
where ORDER1.Delivery_retailer = RETAILER.Retailer_number
and '2018-04-28' < ORDER1.Order_date
group by RETAILER.Retailer_name, ORDER1.Delivery_retailer
order by count(*) DESC LIMIT 3;

Select I.Item_name, sum(L.Pquantity)*I.Price as Profit
From ORDER_LIST L, ITEM I, CUSTOMER U, ORDER1 O
WHERE I.Item_number = L.Pitem
AND L.Order_num = O.Order_number
AND O.Cid = U.Id
AND U.Id IN
	(Select C.Id
	FROM CUSTOMER C
	WHERE NOT EXISTS (Select *
                  	FROM SHOPPINGBAG B
                  	WHERE C.Id = B.Customer_id)
	)
GROUP BY L.Pitem, I.Item_name
ORDER BY sum(L.Pquantity)*I.Price DESC LIMIT 5;

Select I.Name_of_category as Category, sum(L.Pquantity) as Male_best_order
From ORDER_LIST L, ITEM I, CUSTOMER C, ORDER1 O
WHERE L.Order_num = O.Order_number
And L.Pitem = I.Item_number
And C.Id = O.Cid
And C.Sex = 'M'
AND '2017.10.28' < O.Order_date
GROUP BY I.Name_of_category
ORDER BY sum(L.Pquantity) DESC LIMIT 1;

Select I.Item_name, count(*)
From ORDER_LIST L1, ORDER_LIST L2, ITEM I
Where L1.Pitem =
             (Select L.Pitem
              From ORDER_LIST L, ITEM I2, CUSTOMER C, ORDER1 O
              WHERE L.Order_num = O.Order_number
              And L.Pitem = I2.Item_number
              And C.Id = O.Cid
              And C.Age = 20
              GROUP BY L.Pitem
              ORDER BY sum(L.Pquantity) DESC LIMIT 1)
AND L1.Pitem != L2.Pitem
And L2.Order_num = L1.Order_num
And I.Item_number = L2.Pitem
GROUP BY I.Item_name
ORDER BY count(*) DESC LIMIT 5;

Select I.Item_number, I.Item_name, I.Price--, I.Item_image --, sum(L.Pquantity)
From ORDER_LIST L, ITEM I, CUSTOMER C, ORDER1 O
WHERE L.Order_num = O.Order_number
And L.Pitem = I.Item_number
And C.Id = O.Cid
And C.Sex = 'M'
--And C.Age between ? and ?;
--GROUP BY I.Item_number, I.Item_name, I.Price, I.Item_image
--ORDER BY sum(L.Pquantity) DESC LIMIT 5;

SELECT distinct C.Name, I.Item_number, I.Item_name, H.Stock, B.Quantity, R.Retailer_number 
FROM SHOPPINGBAG B, CUSTOMER C, RETAILER R, HAS_A H, ITEM I 
WHERE B.Customer_id = C.Id 
AND H.Ino = B.Purchase_item 
AND H.Ino = I.Item_number 
AND H.Rno = R.Retailer_number 
AND EXISTS (SELECT NULL 
            FROM RETAILER R1 
			WHERE C.Address LIKE '%R1.Retailer_name%'
			AND R.Retailer_number = R1.Retailer_number) 
AND EXISTS (SELECT NULL 
            FROM HAS_A H, SHOPPINGBAG B
			WHERE H.Stock < B.Quantity) 
AND C.Id = 'yejin9989'

SELECT R.Retailer_number 
FROM SHOPPINGBAG B, CUSTOMER C, RETAILER R, HAS_A H, ITEM I 
WHERE B.Customer_id = C.Id 
AND H.Ino = B.Purchase_item 
AND H.Ino = I.Item_number 
AND H.Rno = R.Retailer_number 
AND EXISTS (SELECT NULL
            FROM HAS_A H, SHOPPINGBAG B
            WHERE H.Stock >= B.Quantity) 
AND C.Id = ? 
AND rownum = 1
ORDER BY R.Retailer_name DESC

SELECT distinct R.Retailer_number 
					FROM SHOPPINGBAG B, CUSTOMER C, RETAILER R, HAS_A H, ITEM I 
					WHERE B.Customer_id = C.Id 
					AND H.Ino = B.Purchase_item 
					AND H.Ino = I.Item_number 
					AND H.Rno = R.Retailer_number 
					AND EXISTS (SELECT NULL 
					                 FROM RETAILER R1, CUSTOMER C, RETAILER R
					                WHERE C.Address LIKE '%R1.Retailer_name%' 
									AND R.Retailer_number = R1.Retailer_number) 
					AND EXISTS (SELECT NULL 
			                 FROM HAS_A H, SHOPPINGBAG B
						         WHERE H.Stock >= B.Quantity) 
					AND C.Id = 'yejin9989';
                    
SELECT distinct R.Retailer_number, R.Retailer_name, C.Address
					FROM SHOPPINGBAG B, CUSTOMER C, RETAILER R, HAS_A H, ITEM I 
					WHERE B.Customer_id = C.Id 
					AND H.Ino = B.Purchase_item 
					AND H.Ino = I.Item_number 
					AND H.Rno = R.Retailer_number 
					AND C.Address LIKE R.RETAILER_NAME||'%'
					AND  H.Stock >= B.Quantity
					AND C.Id = 'yejin9989';