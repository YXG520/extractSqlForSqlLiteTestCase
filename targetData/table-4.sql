
CREATE TABLE [format test%03d $i] (
field$k text,
last_field text)
SELECT name FROM sqlite_master WHERE type!='meta' ORDER BY name

SELECT name FROM sqlite_master WHERE type!='meta' ORDER BY name

pragma vdbe_trace=on
DROP TABLE [format TEST%03d $i]
SELECT name FROM sqlite_master WHERE type!='meta' ORDER BY name

DROP TABLE [format test%03d $i]
SELECT name FROM sqlite_master WHERE type!='meta' ORDER BY name
