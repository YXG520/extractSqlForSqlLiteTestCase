

	insert into vw values(102,1002);
	insert into vw select a+2, b+2 from vw;
	insert into vw select a+4, b+4 from vw;
	insert into vw select a+8, b+8 from vw;
	insert into vw select a+16, b+16 from vw;
	insert into vw select a+32, b+32 from vw;
	insert into vw select a+64, b+64 from vw;
    

select count(*) from vw
