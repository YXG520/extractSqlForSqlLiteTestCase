

  CREATE TABLE aaa (id INTEGER PRIMARY KEY, type INTEGER,
                    fk INTEGER DEFAULT NULL, parent INTEGER,
                    position INTEGER, title LONGVARCHAR,
                    keyword_id INTEGER, folder_type TEXT,
                    dateAdded INTEGER, lastModified INTEGER);
  CREATE INDEX aaa_111 ON aaa (fk, type);
  CREATE INDEX aaa_222 ON aaa (parent, position);
  CREATE INDEX aaa_333 ON aaa (fk, lastModified);
  CREATE TABLE bbb (id INTEGER PRIMARY KEY, type INTEGER,
                    fk INTEGER DEFAULT NULL, parent INTEGER,
                    position INTEGER, title LONGVARCHAR,
                    keyword_id INTEGER, folder_type TEXT,
                    dateAdded INTEGER, lastModified INTEGER);
  CREATE INDEX bbb_111 ON bbb (fk, type);
  CREATE INDEX bbb_222 ON bbb (parent, position);
  CREATE INDEX bbb_333 ON bbb (fk, lastModified);


S
Q

S
Q

S
Q

S
Q
