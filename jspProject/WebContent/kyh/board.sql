
create table board(
     boardID  serial primary key,
     title varchar(50),
    email varchar(50),
    pw varchar(15),
     tm   TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
     content varchar(2048)
   );

   insert into board values(boardID,tm) values('aaa','qwe132@daum.net','1234','안녕하세요');
