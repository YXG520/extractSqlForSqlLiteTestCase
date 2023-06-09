

    CREATE TABLE log(t TEXT);

    INSERT INTO t1 VALUES(1, 'i',   'one');
    INSERT INTO t1 VALUES(2, 'ii',  'two');
    INSERT INTO t1 VALUES(3, 'iii', 'three');
    INSERT INTO t1 VALUES(4, 'iv',  'four');
  


      CREATE TRIGGER tr1 BEFORE UPDATE ON t1 BEGIN
        INSERT INTO log VALUES(old.z || '->' || new.z);
      END;
      CREATE TRIGGER tr2 AFTER UPDATE ON t1 BEGIN
        INSERT INTO log VALUES(old.y || '->' || new.y);
      END;
    
