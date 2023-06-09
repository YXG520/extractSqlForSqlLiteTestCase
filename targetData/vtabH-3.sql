

    SELECT name FROM fsdir WHERE dir = '.' AND name = 'test.db';
    SELECT name FROM fsdir WHERE dir = '.' AND name = '.'
  


      SELECT path FROM fstree WHERE path NOT GLOB '*\$*' LIMIT $num_root_files;
    


    SELECT path FROM fstree WHERE path GLOB $pwd ORDER BY 1
  



      SELECT path, size FROM fstree 
       WHERE path GLOB $pwd || '/subdir/*' ORDER BY 1
    


      SELECT path, size FROM fstree
       WHERE path LIKE $pwd || '/subdir/%' ORDER BY 1
    


      SELECT sum(size) FROM fstree WHERE path LIKE $pwd || '/subdir/%'
    


      SELECT size FROM fstree WHERE path = $pwd || '/subdir/x1.txt'
    
