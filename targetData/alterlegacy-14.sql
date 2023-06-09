

    PRAGMA legacy_alter_table = 1;
    CREATE VIRTUAL TABLE rt USING rtree(id, minx, maxx, miny, maxy);

    CREATE TABLE "mytable" ( "fid" INTEGER PRIMARY KEY, "geom" BLOB);

    CREATE TRIGGER tr1 AFTER UPDATE OF "geom" ON "mytable" 
          WHEN OLD."fid" = NEW."fid" AND NEW."geom" IS NULL BEGIN 
      DELETE FROM rt WHERE id = OLD."fid"; 
    END;

    INSERT INTO mytable VALUES(1, X'abcd');
  


    UPDATE mytable SET geom = X'1234'
  


    ALTER TABLE mytable RENAME TO mytable_renamed;
  


    CREATE TRIGGER tr2 AFTER INSERT ON mytable_renamed BEGIN
      DELETE FROM rt WHERE id=(SELECT min(id) FROM rt);
    END;
  


    ALTER TABLE mytable_renamed RENAME TO mytable2;
  


  PRAGMA legacy_alter_table = 1;
  CREATE TABLE t1(a, b, c);
  CREATE VIEW v1 AS SELECT * FROM t1;
  CREATE TRIGGER xyz AFTER INSERT ON t1 BEGIN
    SELECT a, b FROM v1;
  END;



  ALTER TABLE t1 RENAME TO tt1;

