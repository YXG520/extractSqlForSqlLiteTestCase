
SELECT count(*) FROM manycol

SELECT count(*) FROM manycol $::where

SELECT count(*) FROM manycol $::where AND rowid>0

DELETE FROM manycol $::where

SELECT count(*) FROM manycol

DELETE FROM manycol $::where AND rowid>0

SELECT x1 FROM manycol WHERE x0=100

UPDATE manycol SET x1=x1+1 $::where

SELECT x1 FROM manycol WHERE x0=100

UPDATE manycol SET x1=x1+1 $::where AND rowid>0

SELECT x1 FROM manycol WHERE x0=100
