

  BEGIN;
    CREATE VIRTUAL TABLE ft USING fts3;
    INSERT INTO ft VALUES('aback');
    INSERT INTO ft VALUES('abaft');
    INSERT INTO ft VALUES('abandon');
  COMMIT;



  SELECT quote(root) FROM ft_segdir;



  UPDATE ft_segdir SET root = blob(
    '0005616261636B03010200 FFFFFFFF0702 66740302020003046E646F6E03030200'
  );



  SELECT * FROM ft WHERE ft MATCH 'abandon';

