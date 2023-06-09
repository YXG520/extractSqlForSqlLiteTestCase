
CREATE TABLE xyz(x UNIQUE)
ALTER TABLE xyz RENAME TO xyz\u1234abc
SELECT name FROM sqlite_master WHERE name GLOB 'xyz*'

SELECT name FROM sqlite_master WHERE name GLOB 'sqlite_autoindex*'

ALTER TABLE xyz\u1234abc RENAME TO xyzabc
SELECT name FROM sqlite_master WHERE name GLOB 'xyz*'

SELECT name FROM sqlite_master WHERE name GLOB 'sqlite_autoindex*'
