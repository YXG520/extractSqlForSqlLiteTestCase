

    CREATE TABLE t3(
       c0,  c1,  c2,  c3,  c4,  c5,  c6,  c7,  c8,  c9,
       c10, c11, c12, c13, c14, c15, c16, c17, c18, c19,
       c20, c21, c22, c23, c24, c25, c26, c27, c28, c29,
       c30, c31, c32, c33, c34, c35, c36, c37, c38, c39,
       c40, c41, c42, c43, c44, c45, c46, c47, c48, c49,
       c50, c51, c52, c53, c54, c55, c56, c57, c58, c59,
       c60, c61, c62, c63, c64, c65
    );
    CREATE TABLE t3_changes(colnum, oldval, newval);
    INSERT INTO t3 VALUES(
       'a0', 'a1', 'a2', 'a3', 'a4', 'a5', 'a6', 'a7', 'a8', 'a9',
       'a10','a11','a12','a13','a14','a15','a16','a17','a18','a19',
       'a20','a21','a22','a23','a24','a25','a26','a27','a28','a29',
       'a30','a31','a32','a33','a34','a35','a36','a37','a38','a39',
       'a40','a41','a42','a43','a44','a45','a46','a47','a48','a49',
       'a50','a51','a52','a53','a54','a55','a56','a57','a58','a59',
       'a60','a61','a62','a63','a64','a65'
    );
  

      CREATE TRIGGER t3c$i AFTER UPDATE ON t3
         WHEN old.c$i!=new.c$i BEGIN
          INSERT INTO t3_changes VALUES($i, old.c$i, new.c$i);
      END
    

    SELECT * FROM t3_changes
  


      UPDATE t3 SET c$i='b$i';
      SELECT * FROM t3_changes ORDER BY rowid DESC LIMIT 1;
    


      SELECT count(*) FROM t3_changes
    


      SELECT * FROM t3_changes WHERE colnum=$i
    
