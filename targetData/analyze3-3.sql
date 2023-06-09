

    BEGIN;
    CREATE TABLE t1(a, b, c);
    CREATE INDEX i1 ON t1(b);
  
 INSERT INTO t1 VALUES($i, $i, $i) 

SELECT * FROM t1 WHERE b>?

abc


SELECT * FROM t1 WHERE b=?

abc


SELECT * FROM t1 WHERE a=? AND b>?

abc

def

ghi




    SELECT * FROM t1 WHERE a IN (
      ?1, ?2, ?3, ?4, ?5, ?6, ?7, ?8, ?9, ?10,
      ?11, ?12, ?13, ?14, ?15, ?16, ?17, ?18, ?19, ?20,
      ?21, ?22, ?23, ?24, ?25, ?26, ?27, ?28, ?29, ?30, ?31
    ) AND b>?32;
  

abc

def



    SELECT * FROM t1 WHERE a IN (
      ?1, ?2, ?3, ?4, ?5, ?6, ?7, ?8, ?9, ?10,
      ?11, ?12, ?13, ?14, ?15, ?16, ?17, ?18, ?19, ?20,
      ?21, ?22, ?23, ?24, ?25, ?26, ?27, ?28, ?29, ?30, ?31, ?32
    ) AND b>?33;
  

abc

def



    SELECT * FROM t1 WHERE a IN (
      ?1, ?2, ?3, ?4, ?5, ?6, ?7, ?8, ?9, ?33,
      ?11, ?12, ?13, ?14, ?15, ?16, ?17, ?18, ?19, ?20,
      ?21, ?22, ?23, ?24, ?25, ?26, ?27, ?28, ?29, ?30, ?31, ?32
    ) AND b>?10;
  

abc

def

def



    CREATE TABLE t4(x, y TEXT COLLATE NOCASE);
    CREATE INDEX i4 ON t4(y);
  


    SELECT * FROM t4 WHERE x != ? AND y LIKE ?
  

abc

def

ghi%


ghi%def


%ab


%de


