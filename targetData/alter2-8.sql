

      CREATE TRIGGER trig1 BEFORE UPDATE ON t1 BEGIN
      SELECT set_val(
          old.b||' '||typeof(old.b)||' '||old.c||' '||typeof(old.c)||' '||
          new.b||' '||typeof(new.b)||' '||new.c||' '||typeof(new.c) 
      );
      END;
    


    UPDATE t1 SET c = 10 WHERE a = 1;
    SELECT a, typeof(a), b, typeof(b), c, typeof(c) FROM t1 LIMIT 1;
  

