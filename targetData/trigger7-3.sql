

    CREATE TABLE t2(x,y,z);
    CREATE TRIGGER t2r1 AFTER INSERT ON t2 BEGIN SELECT 1; END;
    CREATE TRIGGER t2r2 BEFORE INSERT ON t2 BEGIN SELECT 1; END;
    CREATE TRIGGER t2r3 AFTER UPDATE ON t2 BEGIN SELECT 1; END;
    CREATE TRIGGER t2r4 BEFORE UPDATE ON t2 BEGIN SELECT 1; END;
    CREATE TRIGGER t2r5 AFTER DELETE ON t2 BEGIN SELECT 1; END;
    CREATE TRIGGER t2r6 BEFORE DELETE ON t2 BEGIN SELECT 1; END;
    CREATE TRIGGER t2r7 AFTER INSERT ON t2 BEGIN SELECT 1; END;
    CREATE TRIGGER t2r8 BEFORE INSERT ON t2 BEGIN SELECT 1; END;
    CREATE TRIGGER t2r9 AFTER UPDATE ON t2 BEGIN SELECT 1; END;
    CREATE TRIGGER t2r10 BEFORE UPDATE ON t2 BEGIN SELECT 1; END;
    CREATE TRIGGER t2r11 AFTER DELETE ON t2 BEGIN SELECT 1; END;
    CREATE TRIGGER t2r12 BEFORE DELETE ON t2 BEGIN SELECT 1; END;
    DROP TRIGGER t2r6;
  
