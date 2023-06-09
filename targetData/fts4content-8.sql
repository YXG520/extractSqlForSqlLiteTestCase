

  CREATE TABLE t10(a, b);
  INSERT INTO t10 VALUES(
      'abasia abasic abask', 'Abassin abastardize abatable');
  INSERT INTO t10 VALUES(
      'abate abatement abater', 'abatis abatised abaton');
  INSERT INTO t10 VALUES(
      'abator abattoir Abatua', 'abature abave abaxial');

  CREATE VIRTUAL TABLE ft10 USING fts4(content=t10, prefix="2,4", a, b);


 SELECT * FROM ft10 WHERE a MATCH 'ab*';          

 INSERT INTO ft10(ft10) VALUES('rebuild');        

 SELECT rowid FROM ft10 WHERE a MATCH 'ab*';      
1 2 3

 SELECT rowid FROM ft10 WHERE b MATCH 'abav*';    
3

 SELECT rowid FROM ft10 WHERE ft10 MATCH 'abas*'; 
1
