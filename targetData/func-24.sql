

    SELECT group_concat(t1) FROM tbl1
  


    SELECT group_concat(t1,' ') FROM tbl1
  


    SELECT group_concat(t1,' ' || rowid || ' ') FROM tbl1
  


    SELECT group_concat(NULL,t1) FROM tbl1
  


    SELECT group_concat(t1,NULL) FROM tbl1
  


    SELECT 'BEGIN-'||group_concat(t1) FROM tbl1
  



    SELECT group_concat(CASE t1 WHEN 'this' THEN '' ELSE t1 END) FROM tbl1
  


    SELECT group_concat(CASE WHEN t1!='software' THEN '' ELSE t1 END) FROM tbl1
  


    SELECT group_concat(CASE t1 WHEN 'this' THEN null ELSE t1 END) FROM tbl1
  


   SELECT group_concat(CASE WHEN t1!='software' THEN null ELSE t1 END) FROM tbl1
  


    SELECT group_concat(CASE t1 WHEN 'this' THEN ''
                          WHEN 'program' THEN null ELSE t1 END) FROM tbl1
  


    SELECT typeof(group_concat(x)) FROM (SELECT '' AS x);
  


    SELECT typeof(group_concat(x,''))
      FROM (SELECT '' AS x UNION ALL SELECT '');
  
