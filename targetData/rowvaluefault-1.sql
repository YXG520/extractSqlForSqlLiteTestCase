

  CREATE TABLE xyz(one, two, thr, fou);
  INSERT INTO xyz VALUES('A', 'A', 'A',  1);
  INSERT INTO xyz VALUES('B', 'B', 'B',  2);
  INSERT INTO xyz VALUES('C', 'C', 'C',  3);
  INSERT INTO xyz VALUES('D', 'D', 'D',  4);

  CREATE UNIQUE INDEX xyz_one_two ON xyz(one, two);

