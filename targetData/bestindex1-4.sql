

  CREATE VIRTUAL TABLE x1 USING tcl(vtab_command);



    SELECT * FROM x1 WHERE a=? AND b BETWEEN ? AND ? AND c IN (1, 2, 3, 4);
  
