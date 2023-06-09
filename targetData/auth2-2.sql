

    CREATE TABLE t2(x,y,z);
  

} main {

}
SQLITE_CREATE_TABLE t2 {

}
SQLITE_UPDATE sqlite_master name main {

}
SQLITE_UPDATE sqlite_master tbl_name main {

}
SQLITE_UPDATE sqlite_master rootpage main {

}
SQLITE_UPDATE sqlite_master sql main {

}
SQLITE_READ sqlite_master ROWID main {

}



    CREATE VIEW v2 AS SELECT x+y AS a, y+z AS b from t2;
  

} main {

}
SQLITE_CREATE_VIEW v2 {

}
SQLITE_UPDATE sqlite_master name main {

}
SQLITE_UPDATE sqlite_master tbl_name main {

}
SQLITE_UPDATE sqlite_master rootpage main {

}
SQLITE_UPDATE sqlite_master sql main {

}
SQLITE_READ sqlite_master ROWID main {

}



    SELECT a, b FROM v2;
  


    CREATE TABLE t3(p,q,r);
  

    SELECT b, a FROM v2;
  
