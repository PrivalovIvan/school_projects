--изменился после 1 коммита (сессия 2)

-- Session #1
begin;
set transaction isolation level read committed;
-- Session #2
begin;
set transaction isolation level read committed;

-- Session #1
select * from pizzeria where name = 'Pizza Hut';

-- Session #2
update pizzeria set rating = 4 where name = 'Pizza Hut';
commit;

-- Session #1
select * from pizzeria where name = 'Pizza Hut';
commit;
select * from pizzeria where name = 'Pizza Hut';

-- Session #2
select * from pizzeria where name = 'Pizza Hut';
