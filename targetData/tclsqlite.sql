append r " ?-key CODECKEY?"

sqlite3
sqlite3
CREATE TABLE t1(a int, b int)
INSERT INTO t1 VALUES(10,20)
INSERT INTO t1 SELECT a*2, b*2 FROM t1;
    INSERT INTO t1 SELECT a*2+1, b*2+1 FROM t1;
    INSERT INTO t1 SELECT a*2+3, b*2+3 FROM t1;
  
INSERT INTO t1 VALUES(99,510)
CREATE TABLE t3(a,b,c)
INSERT INTO t3 VALUES($::x(1),$::x(2),$::x(3));
      SELECT * FROM t3
    
SELECT typeof(a), typeof(b), typeof(c) FROM t3
    
UPDATE t3 SET a=$::x;
    
SELECT typeof(a), typeof(b), typeof(c) FROM t3
    
INSERT INTO t1 VALUES(30,NULL)
SELECT typeof(ret_str())
SELECT typeof(ret_dbl())
SELECT typeof(ret_int())
SELECT r1(10)
SELECT r1(100)
CREATE TABLE t6(x);
  INSERT INTO t6 VALUES(1);

CREATE TABLE t1(a,b);
  INSERT INTO t1 VALUES(1,2),(2,NULL),(3,'xyz');

SELECT quote( add_i(2, 3) );
  SELECT quote( add_r(2, 3) ); 
  SELECT quote( add_t(2, 3) ); 
  SELECT quote( add_b(2, 3) ); 
  SELECT quote( add_a(2, 3) ); 

SELECT quote( add_i(2.2, 3.3) );
  SELECT quote( add_r(2.2, 3.3) ); 
  SELECT quote( add_t(2.2, 3.3) ); 
  SELECT quote( add_b(2.2, 3.3) ); 
  SELECT quote( add_a(2.2, 3.3) ); 

SELECT quote( ret_i(2.5) );
  SELECT quote( ret_r(2.5) ); 
  SELECT quote( ret_t(2.5) ); 
  SELECT quote( ret_b(2.5) ); 
  SELECT quote( ret_a(2.5) ); 

SELECT quote( ret_i('2.5') );
  SELECT quote( ret_r('2.5') ); 
  SELECT quote( ret_t('2.5') ); 
  SELECT quote( ret_b('2.5') ); 
  SELECT quote( ret_a('2.5') ); 

SELECT quote( ret_i('abc') );
  SELECT quote( ret_r('abc') ); 
  SELECT quote( ret_t('abc') ); 
  SELECT quote( ret_b('abc') ); 
  SELECT quote( ret_a('abc') ); 

SELECT quote( ret_i(X'616263') );
  SELECT quote( ret_r(X'616263') ); 
  SELECT quote( ret_t(X'616263') ); 
  SELECT quote( ret_b(X'616263') ); 
  SELECT quote( ret_a(X'616263') ); 

SELECT typeof($mno);

SELECT $e01;

SELECT $abc, typeof($abc), $def, typeof($def), $ghi, typeof($ghi);

