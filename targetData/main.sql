SELECT * from T1 where x!!5
SELECT * from T1 where ^x
select 'abc
select "abc
select [abc
select x'4869
select x'4869'
select x'48695'
select x'486x'
select $abc(
select $abc(x
select $::xyz
select $testnamespace::xyz
select $(abc)
select cast(3.14e+4 AS integer)
select cast(3.14e+04 AS integer)
select cast(3.14e+004 AS integer)
select cast(3.14e4 AS integer)
select cast(3.14e04 AS integer)
select cast(3.14e004 AS integer)
select cast(3.14E+4 AS integer)
select cast(3.14E+04 AS integer)
select cast(3.14E+004 AS integer)
select cast(3.14E4 AS integer)
select cast(3.14E04 AS integer)
select cast(3.14E004 AS integer)
select cast(3.14e-4 * 1e8 AS integer)
select cast(3.14E-04 * 1E08 AS integer)
select cast(3.14e-004 * 01.0E+8 AS integer)
select 123/*abc
select 123/***abc
select 123/*/*2
select 123/**/*2
select 123/
select 123--5
create table T1(X REAL);  /* C-style comments allowed */
    insert into T1 values(0.5);
    insert into T1 values(0.5e2);
    insert into T1 values(0.5e-002);
    insert into T1 values(5e-002);
    insert into T1 values(-5.0e-2);
    insert into T1 values(-5.1e-2);
    insert into T1 values(0.5e2);
    insert into T1 values(0.5E+02);
    insert into T1 values(5E+02);
    insert into T1 values(5.0E+03);
    select x*10 from T1 order by x*5;
  
create bogus
create
SELECT 'abc' + #9
ifcapable threadsafe {
    do_test main-4.1 {
      sqlite3_crash_enable 1
      sqlite3_crash_enable 0
    
      sqlite3async_initialize "" 1
      sqlite3async_shutdown
    
      sqlite3_crash_enable 1
      sqlite3async_initialize "" 1
      sqlite3_crash_enable 0
      sqlite3async_shutdown
    
      sqlite3_crash_enable 1
      sqlite3async_initialize "" 1
      sqlite3async_shutdown
      sqlite3_crash_enable 0
    
      sqlite3async_initialize "" 1
      sqlite3_crash_enable 1
      sqlite3_crash_enable 0
      sqlite3async_shutdown
    
      sqlite3async_initialize "" 1
      sqlite3_crash_enable 1
      sqlite3async_shutdown
      sqlite3_crash_enable 0
    
