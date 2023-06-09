

  SELECT json_extract(j, '$.b[#-]') FROM t1;



  SELECT json_extract(j, '$.b[#9]') FROM t1;



  SELECT json_extract(j, '$.b[#+2]') FROM t1;



  SELECT json_extract(j, '$.b[#-1') FROM t1;



  SELECT json_extract(j, '$.b[#-1x]') FROM t1;

