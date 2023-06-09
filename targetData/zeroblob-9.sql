
SELECT x'0000' IN (x'000000')

SELECT x'0000' IN (x'0000')

SELECT zeroblob(2) IN (x'000000')

SELECT zeroblob(2) IN (x'0000')

SELECT x'0000' IN (zeroblob(3))

SELECT x'0000' IN (zeroblob(2))

SELECT zeroblob(2) IN (zeroblob(3))

SELECT zeroblob(2) IN (zeroblob(2))
