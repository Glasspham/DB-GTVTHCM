create database phepjoin;
use phepjoin;

create table R (
	X int,
    Y int
);
create table R2 (
	Y int,
    Z int
);
insert into R1 values (1,2), (3,4);
insert into R2 values (2,5), (6,7);

select *
from R1 A inner join R2 B on A.Y = B.Y;
select *
from R1 A  join R2 B on A.Y = B.Y;

select *
from R1 A left  join R2 B on A.Y = B.Y;

select *
from R1 A right join R2 B on A.Y = B.Y;

select *
from R1 A left join R2 B on A.Y = B.Y
where B.Y is null;
select *
from R1 A right join R2 B on A.Y = B.Y
where A.Y is null;

select *
from R1 A left join R2 B on A.Y = B.Y
union
select *
from R1 A right join R2 B on A.Y = B.Y;

select *
from R1 A left join R2 B on A.Y = B.Y
where B.Y is null
union
select *
from R1 A right join R2 B on A.Y = B.Y
where A.Y is null;