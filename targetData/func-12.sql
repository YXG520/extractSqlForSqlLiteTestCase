

      SELECT test_destructor('hello world'), test_destructor_count();
    


          SELECT test_destructor16('hello world'), test_destructor_count();
        


    SELECT test_destructor_count();
  


    SELECT test_destructor('hello')||' world'
  


    SELECT test_destructor_count();
  


    CREATE TABLE t4(x);
    INSERT INTO t4 VALUES(test_destructor('hello'));
    INSERT INTO t4 VALUES(test_destructor('world'));
    SELECT min(test_destructor(x)), max(test_destructor(x)) FROM t4;
  


    SELECT test_destructor_count();
  


    DROP TABLE t4;
  
