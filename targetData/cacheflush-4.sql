

    CREATE TABLE ta(a, aa);
    CREATE TABLE tb(b, bb);
    INSERT INTO ta VALUES('a', randomblob(500));
    INSERT INTO tb VALUES('b', randomblob(500));
    BEGIN;
      UPDATE ta SET a = 'A';
      SAVEPOINT one;
        UPDATE tb SET b = 'B';
  

 
    ROLLBACK TO one;
  

 
    INSERT INTO tb VALUES('c', randomblob(10));
    INSERT INTO tb VALUES('d', randomblob(10));
    INSERT INTO tb VALUES('e', randomblob(10));
  

 
    SAVEPOINT two;
    UPDATE tb SET b = upper(b);
  

 
    ROLLBACK TO two;
  

 
    ROLLBACK TO one;
  

 
    ROLLBACK;
    SELECT a FROM ta;
    SELECT b FROM tb;
  
