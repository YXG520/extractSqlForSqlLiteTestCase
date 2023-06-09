

    WITH contents(name,mtime,data) AS (
        VALUES('a.txt', 1000000, 'contents of a.txt') UNION ALL
        VALUES('b.txt', 1000000, 'contents of b.txt')
    ) SELECT quote( zipfile(name,NULL,mtime,data) ) FROM contents;
  


  SELECT name,mtime,data FROM zipfile($blob)



    SELECT name,mtime,data FROM zipfile($blob)
  


    SELECT name,data FROM zipfile($blob)
  


    SELECT name,data FROM zipfile($blob)
  
