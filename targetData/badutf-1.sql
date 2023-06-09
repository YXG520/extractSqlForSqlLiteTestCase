
PRAGMA encoding=UTF8
SELECT hex('%80') AS x

SELECT hex('%81') AS x

SELECT hex('%bf') AS x

SELECT hex('%c0') AS x

SELECT hex('%e0') AS x

SELECT hex('%f0') AS x

SELECT hex('%ff') AS x


PRAGMA encoding=UTF16be
SELECT hex('%80') AS x

SELECT hex('%81') AS x

SELECT hex('%bf') AS x

SELECT hex('%c0') AS x

SELECT hex('%c1') AS x

SELECT hex('%c0%bf') AS x

SELECT hex('%c1%bf') AS x

SELECT hex('%c3%bf') AS x

SELECT hex('%e0') AS x

SELECT hex('%f0') AS x

SELECT hex('%ff') AS x
