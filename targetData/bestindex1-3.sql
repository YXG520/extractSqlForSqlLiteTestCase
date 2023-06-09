

  CREATE VIRTUAL TABLE VirtualTableA USING tcl(vtab_command);
  CREATE VIRTUAL TABLE VirtualTableB USING tcl(vtab_command);


 SELECT primarykey FROM VirtualTableA 
1 2 3 4


  SELECT * FROM 
  VirtualTableA a CROSS JOIN VirtualTableB b ON b.PrimaryKey=a.PrimaryKey
  WHERE a.ColumnA IN ('ValueA', 'ValueB') AND a.FlagA=0



  SELECT * FROM 
  VirtualTableA a CROSS JOIN VirtualTableB b ON b.PrimaryKey=a.PrimaryKey
  WHERE a.FlagA=0 AND a.ColumnA IN ('ValueA', 'ValueB') 

