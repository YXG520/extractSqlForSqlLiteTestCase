

      register_echo_module [sqlite3_connection_pointer db]
      db eval {
        CREATE TABLE t1(a,b);
        CREATE VIRTUAL TABLE t2 USING echo(t1);
      
