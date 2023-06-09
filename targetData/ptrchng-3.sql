

    SELECT pointer_change(y, 'text', 'noop', 'blob') FROM t1 WHERE x=2
  


    SELECT pointer_change(y, 'blob', 'noop', 'text') FROM t1 WHERE x=2
  


      SELECT pointer_change(y, 'text', 'noop', 'text16') FROM t1 WHERE x=2
    


      SELECT pointer_change(y, 'blob', 'noop', 'text16') FROM t1 WHERE x=2
    


      SELECT pointer_change(y, 'text16', 'noop', 'blob') FROM t1 WHERE x=2
    


      SELECT pointer_change(y, 'text16', 'noop', 'text') FROM t1 WHERE x=2
    


    SELECT pointer_change(y, 'text', 'noop', 'blob') FROM t1 WHERE x=4
  


    SELECT pointer_change(y, 'blob', 'noop', 'text') FROM t1 WHERE x=4
  


      SELECT pointer_change(y, 'text', 'noop', 'text16') FROM t1 WHERE x=4
    


      SELECT pointer_change(y, 'blob', 'noop', 'text16') FROM t1 WHERE x=4
    


      SELECT pointer_change(y, 'text16', 'noop', 'blob') FROM t1 WHERE x=4
    


      SELECT pointer_change(y, 'text16', 'noop', 'text') FROM t1 WHERE x=4
    
