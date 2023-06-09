
select zeroblob(-1)

select zeroblob(-10)

select zeroblob(-100)

select length(zeroblob(-1))

select zeroblob(-1)|1

select length(zeroblob(2147483648))

select zeroblob(2147483648)

select hex(zeroblob(-1))

select typeof(zeroblob(-1))
