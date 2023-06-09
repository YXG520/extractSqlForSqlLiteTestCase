

     CREATE TABLE result2(a,b);
     CREATE TRIGGER r1d INSTEAD OF DELETE ON v1 BEGIN
       INSERT INTO result2(a,b) VALUES(old.y, old.x);
     END;
     DELETE FROM v1 WHERE x=5;
     SELECT * FROM result2;
  


     CREATE TABLE result4(a,b,c,d);
     CREATE TRIGGER r1u INSTEAD OF UPDATE ON v1 BEGIN
       INSERT INTO result4(a,b,c,d) VALUES(old.y, old.x, new.y, new.x);
     END;
     UPDATE v1 SET y=y||'-extra' WHERE x BETWEEN 3 AND 5;
     SELECT * FROM result4 ORDER BY a;
  


     DELETE FROM result2;
     CREATE TRIGGER r2d INSTEAD OF DELETE ON v2 BEGIN
       INSERT INTO result2(a,b) VALUES(old.y, old.x);
     END;
     DELETE FROM v2 WHERE x=5;
     SELECT * FROM result2;
  


     DELETE FROM result4;
     CREATE TRIGGER r2u INSTEAD OF UPDATE ON v2 BEGIN
       INSERT INTO result4(a,b,c,d) VALUES(old.y, old.x, new.y, new.x);
     END;
     UPDATE v2 SET y=y||'-extra' WHERE x BETWEEN 3 AND 5;
     SELECT * FROM result4 ORDER BY a;
  


     CREATE TABLE result1(a);
     CREATE TRIGGER r3d INSTEAD OF DELETE ON v3 BEGIN
       INSERT INTO result1(a) VALUES(old.c1);
     END;
     DELETE FROM v3 WHERE c1 BETWEEN '8' AND 'eight';
     SELECT * FROM result1 ORDER BY a;
  


     DELETE FROM result2;
     CREATE TRIGGER r3u INSTEAD OF UPDATE ON v3 BEGIN
       INSERT INTO result2(a,b) VALUES(old.c1, new.c1);
     END;
     UPDATE v3 SET c1 = c1 || '-extra' WHERE c1 BETWEEN '8' and 'eight';
     SELECT * FROM result2 ORDER BY a;
  


     DELETE FROM result1;
     CREATE TRIGGER r4d INSTEAD OF DELETE ON v4 BEGIN
       INSERT INTO result1(a) VALUES(old.c1);
     END;
     DELETE FROM v4 WHERE c1 BETWEEN '8' AND 'eight';
     SELECT * FROM result1 ORDER BY a;
  


     DELETE FROM result2;
     CREATE TRIGGER r4u INSTEAD OF UPDATE ON v4 BEGIN
       INSERT INTO result2(a,b) VALUES(old.c1, new.c1);
     END;
     UPDATE v4 SET c1 = c1 || '-extra' WHERE c1 BETWEEN '8' and 'eight';
     SELECT * FROM result2 ORDER BY a;
  


     DELETE FROM result2;
     CREATE TRIGGER r5d INSTEAD OF DELETE ON v5 BEGIN
       INSERT INTO result2(a,b) VALUES(old.x, old.b);
     END;
     DELETE FROM v5 WHERE x=5;
     SELECT * FROM result2;
  


     DELETE FROM result4;
     CREATE TRIGGER r5u INSTEAD OF UPDATE ON v5 BEGIN
       INSERT INTO result4(a,b,c,d) VALUES(old.x, old.b, new.x, new.b);
     END;
     UPDATE v5 SET b = b+9900000 WHERE x BETWEEN 3 AND 5;
     SELECT * FROM result4 ORDER BY a;
  


     DELETE FROM result4;
     UPDATE v5 SET b = main.v5.b+9900000 WHERE main.v5.x BETWEEN 3 AND 5;
     SELECT * FROM result4 ORDER BY a;
  
