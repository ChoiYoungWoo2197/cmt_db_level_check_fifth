-- 회원1

CREATE TABLE member (

   member_id     INTEGER     NOT NULL AUTO_INCREMENT, 

   password            VARCHAR(30) NOT NULL,    

   member_name          VARCHAR(30) NOT NULL,     

   birth         VARCHAR(30) NULL,     

   join_date     datetime    NOT NULL,     

   PRIMARY KEY (member_id)

);



-- 사진2

CREATE TABLE image (

   member_id     INTEGER     NOT NULL, 

   path          VARCHAR(120) NOT NULL,    

   file_name          VARCHAR(120) NOT NULL,    

   register_date datetime    NOT NULL,     

   PRIMARY KEY (member_id),

   FOREIGN KEY (member_id) REFERENCES member(member_id)

);





-- 직업 3

CREATE TABLE job (

   job_id INTEGER     NOT NULL AUTO_INCREMENT,

   job_name   VARCHAR(20) NOT NULL,     

   PRIMARY KEY (job_id)

);





-- 작가 4

CREATE TABLE author (

   author_id INTEGER     NOT NULL AUTO_INCREMENT, 

   job_id    INTEGER     NOT NULL, 

   author_name      VARCHAR(30) NULL,    

   introduce VARCHAR(40) NULL,      

   PRIMARY KEY (author_id),

   FOREIGN KEY (author_id) REFERENCES member(member_id),

   FOREIGN KEY (job_id) REFERENCES job(job_id)

);



-- 카테고리 5

CREATE TABLE category (

   category_id INTEGER     NOT NULL AUTO_INCREMENT,

   author_id   INTEGER     NOT NULL, 

   title       VARCHAR(30) NOT NULL,     

   content     VARCHAR(30) NOT NULL,     

   PRIMARY KEY (category_id),

   FOREIGN KEY (author_id) REFERENCES author(author_id)

);





-- 첨부파일 6

CREATE TABLE attachment (

   attachment_id INTEGER     NOT NULL AUTO_INCREMENT,

   author_id     INTEGER     NOT NULL,

   path          VARCHAR(120) NOT NULL,  

   file_name          VARCHAR(120) NOT NULL,    

   register_date datetime    NOT NULL,     

   PRIMARY KEY (attachment_id),

   FOREIGN KEY (author_id) REFERENCES author(author_id)

);





-- 게시글 7

CREATE TABLE board (

   board_id      INTEGER     NOT NULL AUTO_INCREMENT, 

   author_id     INTEGER     NOT NULL,

   attachment_id INTEGER     NOT NULL UNIQUE,

   category_id   INTEGER     NOT NULL,

   title         VARCHAR(20) NOT NULL,    

   sub_title     VARCHAR(20) NULL,    

   content       VARCHAR(1000) NOT NULL, 

   register_date datetime    NOT NULL,    

   PRIMARY KEY (board_id),

   FOREIGN KEY (author_id) REFERENCES author(author_id),

   FOREIGN KEY (attachment_id) REFERENCES attachment(attachment_id),

   FOREIGN KEY (category_id) REFERENCES category(category_id)

);



-- 태그 8

CREATE TABLE hashtag (

   hashtag_name  VARCHAR(30) NOT NULL, 

   register_date datetime    NOT NULL,     

   PRIMARY KEY (hashtag_name)

);







-- 게시글_태그 9

CREATE TABLE board_hashtag (

   board_id     INTEGER     NOT NULL, 

   hashtag_name VARCHAR(30) NOT NULL,  

   PRIMARY KEY (board_id,hashtag_name),

   FOREIGN KEY (board_id) REFERENCES board(board_id),

   FOREIGN KEY (hashtag_name) REFERENCES hashtag(hashtag_name)

);





-- 댓글 10

CREATE TABLE reply (

   reply_id      INTEGER     NOT NULL AUTO_INCREMENT,

   member_id     INTEGER     NOT NULL,

   board_id      INTEGER     NOT NULL,

   register_date datetime    NOT NULL,     

   content       VARCHAR(30) NOT NULL,   

   PRIMARY KEY (reply_id),

   FOREIGN KEY (member_id) REFERENCES member(member_id),

   FOREIGN KEY (board_id) REFERENCES board(board_id)

);



-- 좋아요 11

CREATE TABLE good (

   board_id      INTEGER  NOT NULL, 

   member_id     INTEGER  NOT NULL, 

   register_date datetime NOT NULL,      

   PRIMARY KEY (board_id,member_id),

   FOREIGN KEY (board_id) REFERENCES board(board_id),

   FOREIGN KEY (member_id) REFERENCES member(member_id)

);



-- 공유경로 12

CREATE TABLE sharing_path (

   sharing_path_id    INTEGER     NOT NULL AUTO_INCREMENT, 

   path          VARCHAR(30) NOT NULL,       

   PRIMARY KEY (sharing_path_id)

);



-- 공유 13

CREATE TABLE sharing (

   sharing_id    INTEGER     NOT NULL AUTO_INCREMENT, 

   member_id     INTEGER     NOT NULL, 

   board_id      INTEGER     NOT NULL, 

   sharing_path_id   INTEGER     NOT NULL, 

   register_date datetime    NOT NULL,      

   PRIMARY KEY (sharing_id),

   FOREIGN KEY (member_id) REFERENCES member(member_id),

   FOREIGN KEY (board_id) REFERENCES board(board_id),

   FOREIGN KEY (sharing_path_id) REFERENCES sharing_path(sharing_path_id)

);



-- 구독 14

CREATE TABLE subscribe (

   category_id     INTEGER  NOT NULL, 

   member_id     INTEGER  NOT NULL, 

   register_date datetime NOT NULL,     

   PRIMARY KEY (category_id,member_id),

   FOREIGN KEY (member_id) REFERENCES member(member_id),

   FOREIGN KEY (category_id) REFERENCES category(category_id)

);