

  CREATE TABLE csv_import_table (
    "debit" TEXT,
    "credit" TEXT
  );
  INSERT INTO csv_import_table VALUES ('', '250.00');
  CREATE TABLE IF NOT EXISTS transactions (
      debit REAL,
      credit REAL,
      amount REAL GENERATED ALWAYS AS (ifnull(credit, 0.0) - ifnull(debit, 0.0))
  ) STRICT;
  INSERT INTO transactions
  SELECT
      nullif(debit, '') AS debit,
      nullif(credit, '') AS credit
  FROM csv_import_table;
  SELECT * FROM transactions;



  CREATE TABLE t1(x REAL, y REAL AS (x)) STRICT;
  INSERT INTO t1 VALUES(5),(4611686018427387904);
  SELECT *, '|' FROM t1;

