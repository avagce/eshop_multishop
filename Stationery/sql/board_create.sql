-- 게시글 시퀀스
DROP SEQUENCE BOARD_SEQ;
CREATE SEQUENCE BOARD_SEQ;

DROP TABLE TB_BOARD CASCADE CONSTRAINT;
CREATE TABLE TB_BOARD(
  BOARD_NO VARCHAR2(30),             -- 게시글번호
  USER_CODE VARCHAR2(20),            -- 유저코드
  BOARD_TITLE VARCHAR2(1000),        -- 게시글제목
  BOARD_CONTENTS VARCHAR2(4000),     -- 게시글내용
  BOARD_DATE VARCHAR2(30),           -- 게시글작성날짜
  BOARD_HITS NUMBER DEFAULT 0,     -- 조회수
  CONSTRAINT TB_BOARD_PK PRIMARY KEY(BOARD_NO),
  CONSTRAINT TB_BOARD_FK_USER FOREIGN KEY(USER_CODE) REFERENCES TB_COM_USER(USER_CODE)
);

commit;


CREATE TABLE tb_board_user AS

SELECT * FROM tb_board WHERE 1=2; 

create table tb_board_comu as select * from tb_board_user where 1=2;
 
create table tb_board_producqus as select * from tb_board_user where 1=2;

alter table tb_board_producqus add board_phone default '-' null;

commit;