

    CREATE TABLE ddd(db, sql, zOld, zNew, bTemp);
    INSERT INTO ddd VALUES(
        'main', 'CREATE TABLE x1(i INTEGER, t TEXT)', 'ddd', NULL, 0
    ), (
        'main', 'CREATE TABLE x1(i INTEGER, t TEXT)', NULL, 'eee', 0
    ), (
        'main', NULL, 'ddd', 'eee', 0
    );
  
