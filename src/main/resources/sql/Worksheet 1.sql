

select * from tbl_board;

select * from tbl_reply;


insert into tbl_reply
 (bno, replytext, replyer)
values
 (1, '집에가고 싶다...', 'user01'); 
 
update tbl_board
   set replycnt = replycnt + 1
 where bno = 1;
 
commit;