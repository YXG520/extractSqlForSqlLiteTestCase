
CREATE INDEX index1 ON sqlite_master(name)

SELECT name FROM sqlite_master WHERE type!='meta'
