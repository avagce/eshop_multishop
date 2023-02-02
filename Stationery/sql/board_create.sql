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

alter table tb_board_producqus add board_phone varchar(50)  null;

commit;

insert into tb_product values('dr001','dr1.jpg','dress01',1000,20,'R',TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI'));
insert into tb_product values('dr002','dr2.jpg','dress02',1000,20,'R',TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI'));
insert into tb_product values('dr003','dr3.jpg','dress03',1000,20,'R',TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI'));
insert into tb_product values('dr004','dr4.jpg','dress04',1000,20,'R',TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI'));
insert into tb_product values('dr005','dr5.jpg','dress05',1000,20,'R',TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI'));
insert into tb_product values('dr006','dr6.jpg','dress06',1000,20,'R',TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI'));
insert into tb_product values('dr007','dr7.jpg','dress07',1000,20,'R',TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI'));
insert into tb_product values('dr008','dr8.jpg','dress08',1000,20,'R',TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI'));
insert into tb_product values('dr009','dr9.jpg','dress09',1000,20,'R',TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI'));
insert into tb_product values('dr010','dr10.jpg','dress10',1000,20,'R',TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI'));

insert into tb_com_code values('CODE0101','R','드레스');

--서버 경로가 /Stationery 돼있어야 이미지를 제대로 가져옴