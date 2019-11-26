-- step1 좋아요 수
SELECT COUNT(board_id)
FROM good
WHERE board_id = 1
;

-- step2 댓글 수
SELECT COUNT(.board_id)
FROM reply 
WHERE board_id = 1
;

-- step3 공유

SELECT COUNT(board_id) 
FROM sharing 
WHERE board_id = 1
;


-- step 4 게시글 
SELECT board.title, board.sub_title, author.author_name, board.register_date, attachment.path, attachment.file_name, board.content, category.category_id, category.title, category.content
FROM board
LEFT JOIN attachment ON attachment.attachment_id = board.attachment_id
LEFT JOIN category ON board.category_id = category.category_id
LEFT JOIN author ON board.author_id = author.author_id
WHERE board.board_id = 1
;

-- step5 해시 태그
SELECT hashtag_name
FROM board_hashtag 
WHERE board_id = 1
;

-- step6 댓글
SELECT member.member_name, reply.content, reply.register_date
from reply
LEFT JOIN member ON member.member_id = reply.member_id
WHERE reply.board_id = 1
;


-- step7 프로필
SELECT author.author_name, job.job_name, author.introduce, image.path, image.file_name
FROM board
LEFT JOIN author ON author.author_id = board.author_id
LEFT JOIN image ON image.member_id = author.author_id
LEFT JOIN job ON job.job_id = author.job_id
WHERE board_id = 1
;

-- step8 구독자 수 (구독자수만 left join을 쓰지 않고 교집합으로 찾아줌.)
SELECT COUNT(subscribe.category_id)
FROM subscribe
LEFT JOIN category
ON category.category_id = subscribe.category_id
WHERE author_id = 1;


-- step9 글리스트
SELECT attachment.path, attachment.file_name, board.title, board.content, board.author_id
FROM board
LEFT JOIN attachment ON attachment.attachment_id = board.attachment_id
WHERE board.author_id != 1
ORDER BY board.board_id DESC
LIMIT 6
;



-- step10 이전글
SELECT title, category_id
FROM board
WHERE board_id < 1
AND category_id = (SELECT category.category_id FROM board LEFT JOIN category ON category.category_id = board.category_id  WHERE board_id = 1)
ORDER BY board_id desc
LIMIT 1
;

-- step11 다음글
SELECT title, category_id
FROM board
WHERE board_id > 1
AND category_id = (SELECT category.category_id FROM board LEFT JOIN category ON category.category_id = board.category_id  WHERE board_id = 1)
ORDER BY board_id 
LIMIT 1
;




