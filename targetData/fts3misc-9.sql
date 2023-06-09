

  CREATE VIRTUAL TABLE t1 using fts4(mailcontent);
  insert into t1(rowid, mailcontent) values
      (-4764623217061966105, 'we are going to upgrade'),
      (8324454597464624651, 'we are going to upgrade');



  INSERT INTO t1(t1) VALUES('integrity-check');



  SELECT rowid FROM t1 WHERE t1 MATCH 'upgrade';

