

-- 1

INSERT INTO member (password, member_name, birth, join_date) 

VALUES 

('1234', '최영우', '19920811', '2019-01-12 10:47:51'),

('147', '나연', '19950922', '2019-01-22 8:47:51'),

('258', '정연', '19961101', '2019-01-12 4:44:51'),

('369', '모모', '19961109', '2019-04-22 13:47:51'),

('789', '사나', '19961229', '2019-05-25 15:47:51'),

('456', '지효', '19970201', '2019-11-27 17:47:51'),

('123', '미나', '19970324', '2019-12-22 18:47:51'),

('753', '다현', '19980528', '2019-09-22 17:47:51'),

('951', '채영', '19990423', '2019-08-11 16:47:51'),

('183', '쯔위', '19990614', '2019-04-29 10:47:51')

 ;



-- 2

INSERT INTO image (member_id, path, file_name, register_date) 

VALUES 

(1, 'C:\\Users\\cmt_dg\\Pictures\\Saved Pictures\\twice\\', 'youngwoo.jpg', '2019-11-25 15:27:55'),

(2, 'C:\\Users\\cmt_dg\\Pictures\\Saved Pictures\\twice\\','naeon.jpg', '2019-01-22 8:47:51'),

(3, 'C:\\Users\cmt_dg\\Pictures\\Saved Pictures\\twice\\', 'geayeon.jpg','2019-01-12 4:44:51'),

(4, 'C:\\Users\cmt_dg\\Pictures\\Saved Pictures\\twice\\', 'momo.jpg','2019-04-22 13:47:51'),

(5, 'C:\\Users\cmt_dg\\Pictures\\Saved Pictures\\twice\\', 'sana.jpg','2019-05-25 15:47:51')

;

-- 3

INSERT INTO job (job_name) 

VALUES

 ('개발자'),

 ('소방관'),

 ('디자이너'),

 ('의사'),

 ('아이돌'),

 ('경찰'),

 ('승무원'),

 ('회사원'),

 ('사장'),

 ('무직')

 ;



-- 4

INSERT INTO author (job_id, author_name, introduce) 

VALUES 

(1, '영챙', '데이터 들어가여'),

(2, '맏내', '트와이스 맏내'),

(3, '노잼형', '트와이스 노잼형'),

(4, '몬지알쥐', '트와이스 몬지알쥐'),

(5, '사땅', '트와이스 사땅')

;







-- 5

INSERT INTO category (author_id, title, content) 

VALUES

('1', '매거진', '그래 괜찮아 토닥토닥'),

('2', '매거진', '나연랜드'),

('3', '매거진', '정연랜드'),

('4', '매거진', '모모랜드'),

('5', '매거진', '사나랜드') 

 ;



-- 6 

INSERT INTO attachment (author_id,path, file_name, register_date) 

VALUES 

(1, 'C:\\Users\\cmt_dg\\Pictures\\Saved Pictures\\attachment\\','attach1.jpg', '2019-11-22 11:12:20'),

(3, 'C:\\Users\\cmt_dg\\Pictures\\Saved Pictures\\attachment\\', 'attach2.jpg','2019-11-22 12:12:20'),

(4, 'C:\\Users\\cmt_dg\\Pictures\\Saved Pictures\\attachment\\', 'attach3.jpg','2019-11-22 13:12:20')

 ;





-- 7

INSERT INTO board (author_id, attachment_id, category_id, title, sub_title, content, register_date) 

VALUES 

(1, 1, 1, 'qwe', 'qwe', 'qwe', '2019-11-25 16:01:24'),

(3, 2, 2,'제목', '소제목2','"힘을내요 슈퍼퐈월~~~~".', '2019-09-15 15:12:42'),

(4, 3, 3,'제목3', '소제목3', '"우쥬 라이크 썸띵 드링크?".', '2019-10-23 16:30:42')
;





-- 8



INSERT INTO hashtag (hashtag_name, register_date)

 VALUES 

 ('트와이스', '2019-01-12 09:26:14'),

 ('instagood', '2019-02-19 15:24:14'),

 ('me', '2019-05-22 13:26:14'),

 ('followme', '2019-09-23 18:20:14'),

 ('happy', '2019-11-22 13:26:14')

 ;



-- 9

INSERT INTO board_hashtag (board_id, hashtag_name)

 VALUES 

(1, '트와이스'),

(1, 'happy'),

(1, 'me'),

(1, 'followme'),

(3, 'happy'),

(3, 'followme')

 ;



-- 10

INSERT INTO reply (member_id, board_id, register_date, content)

 VALUES

(2, 1, '2019-11-22 11:05:29', '좋아요댓글'),

(3, 1, '2019-11-22 11:07:23', '사랑해열~'),

(4, 1, '2019-11-22 11:09:24', '미쳤따!!!!!!'),

(1, 1, '2019-11-22 13:48:29', '모두 사랑해열~~~!~!@!!'),

(2, 3, '2019-11-22 15:43:21', '댓글달아따ㅡㅡ'),

(3, 2, '2019-11-22 18:12:29', '하 인생'),

(10, 1, '2019-11-22 18:12:29', '놀고있네')

;



-- 11

INSERT INTO good (board_id, member_id, register_date)

 VALUES 

 (1, 1, '2019-05-22 13:55:10'),

 (1, 2, '2019-05-23 13:52:10'),

 (1, 3, '2019-06-01 08:20:10'),

 (1, 4, '2019-06-12 09:50:10'),

 (1, 5, '2019-06-26 13:25:10'),

 (2, 2, '2019-07-22 13:45:10'),

 (3, 3, '2019-12-22 15:01:10'),

 (1, 6, '2019-06-26 10:01:10'),

 (1, 7, '2019-06-03 12:11:10'),

 (1, 8, '2019-10-15 16:41:10'),

 (1, 9, '2019-11-23 17:15:10')

 ;



-- 12

INSERT INTO sharing_path (sharing_path_id, path)

 VALUES 

(1, '페이스북'),

(2, '카카오톡'),

(3, '인스타그램'),

(4, '세이클럽')

 ;



-- 13

INSERT INTO sharing (member_id, board_id, sharing_path_id, register_date)

 VALUES

  (1, 2, 2, '2019-01-12 05:24:46'),

  (1, 1, 3, '2019-01-13 06:30:46'),

  (1, 1, 4, '2019-01-13 06:35:46'),

  (2, 1, 1, '2019-01-13 07:52:46')

  ;



-- 14

INSERT INTO subscribe (member_id, category_id, register_date)

 VALUES 

 (10, 1, '2019-04-22 13:20:19'),

(2, 1, '2019-08-15 08:22:19'),

(3, 1, '2019-10-18 13:22:19'),

(7, 1, '2019-08-13 13:29:19'),

(7, 3, '2019-11-13 13:02:19')

 ;