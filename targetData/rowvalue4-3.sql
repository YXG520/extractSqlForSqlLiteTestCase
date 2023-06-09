

    CREATE TABLE c1(a, b, c, d);
    INSERT INTO c1(a, b) VALUES(1, 'a');
    INSERT INTO c1(a, b) VALUES(1, 'b');
    INSERT INTO c1(a, b) VALUES(1, 'c');
    INSERT INTO c1(a, b) VALUES(1, 'd');
    INSERT INTO c1(a, b) VALUES(1, 'e');
    INSERT INTO c1(a, b) VALUES(1, 'f');
    INSERT INTO c1(a, b) VALUES(1, 'g');
    INSERT INTO c1(a, b) VALUES(1, 'h');
    INSERT INTO c1(a, b) VALUES(1, 'i');
    INSERT INTO c1(a, b) VALUES(1, 'j');
    INSERT INTO c1(a, b) VALUES(1, 'k');
    INSERT INTO c1(a, b) VALUES(1, 'l');
    INSERT INTO c1(a, b) VALUES(1, 'm');
    INSERT INTO c1(a, b) VALUES(1, 'n');
    INSERT INTO c1(a, b) VALUES(1, 'o');
    INSERT INTO c1(a, b) VALUES(1, 'p');
    INSERT INTO c1(a, b) VALUES(2, 'a');
    INSERT INTO c1(a, b) VALUES(2, 'b');
    INSERT INTO c1(a, b) VALUES(2, 'c');
    INSERT INTO c1(a, b) VALUES(2, 'd');
    INSERT INTO c1(a, b) VALUES(2, 'e');
    INSERT INTO c1(a, b) VALUES(2, 'f');
    INSERT INTO c1(a, b) VALUES(2, 'g');
    INSERT INTO c1(a, b) VALUES(2, 'h');

    INSERT INTO c1(c, d) SELECT a, b FROM c1;

    CREATE INDEX c1ab ON c1(a, b);
    CREATE INDEX c1cd ON c1(c, d);
    ANALYZE;
  

S

S

S

S

S

S

S

S

S
