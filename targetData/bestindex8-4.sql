

  CREATE TABLE t1(a, b, c);
  CREATE VIRTUAL TABLE vt1 USING tcl(vtab_command t1);


  1 "SELECT * FROM vt1 WHERE b = 10" {10

SELECT $selectlist FROM $src$where$order$L$O

        set real_sql "
          WITH c(i) AS ( SELECT 1 UNION ALL SELECT i+1 FROM c WHERE i<$off )
          SELECT 0,0,0,0 FROM c
          UNION ALL SELECT * FROM (
            $sql
          )
        "
      
