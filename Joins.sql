-- joins
use june7th;
-- cross join/cartesian join---X
-- Inner Join/Equi Join
-- Outer Join
            -- Left outer Join
            -- Right outer Join
            -- Full outer Join
-- Self Join
-- Natural Join----X

#cross Join
select *
from student cross join hod;
select *
from hod;
-- ANSI-->American National Standard Institute(Universal syntax)
-- Oracle Syntax

-- Inner Join
-- t1.colname = t2.colname
select * from hod;
select * from student;
#Outer Join
-- Left outer join
-- select * from t1 left join t2 on <join condition>;
select *
from student left join hod
on student.hod_id = hod.hod_id;
select * from student;
commit;
update student set hod_id=null where s_id in(3,6,8);

#right outer join
-- select * from t1 right join t2 on <join condition>;

select * from hod;
insert into hod values(1105,"Mr.akhil","EEE"),
                      (1106,"Mrs.ankita","ECE");
                      commit;
select *
from student right join hod
on student.hod_id = hod.hod_id;

#full outer join
-- select * from t1 left join t2 on <join condition> UNION select * from t1 right join t2 on <join condition>;
select * from student left join hod on student.hod_id = hod.hod_id union 
select * from student right join hod on student.hod_id = hod.hod_id;

#Natural join
-- select * from t1 natural join t2;
select *
from student natural join hod;

select *
from student natural join emp1;
select * from myemp;
update student set marks=95 where s_id=4;
update student set marks=98 where s_id=1;
update student set marks=35 where s_id=2;
update student set marks=71 where s_id=3;
commit;

#self join
-- select * from t1 t join t1 tt on <join condition>;--->t.mgr_id = tt.emp_id
select *
from myemp e1 join myemp e2
on e1.mgr_id =e2.emp_id;

select e1.first_name,e2.first_name
from myemp e1 join myemp e2
on e1.mgr_id =e2.emp_id;

select *
from myemp e1 join myemp e2 join myemp e3
on e1.mgr_id = e2.emp_id and e2.mgr_id = e3.emp_id;

select e1.first_name,e2.first_name,e3.first_name,e4.first_name
from myemp e1 join myemp e2 join myemp e3 join myemp e4
on e1.mgr_id = e2.emp_id and e2.mgr_id = e3.emp_id and e3.mgr_id = e4.emp_id;
use june7th;
select * 
from myemp
where mod(emp_id,2)=1;
select * from myemp where first_name like '%a';
-- task ans

select e1.first_name,e1.salary+e1.salary*10/100,e2.first_name,e2.salary-e2.salary*12/100,e3.first_name,e3.salary*12+e3.salary*12*10/100,e4.first_name,e4.salary
from myemp e1 join myemp e2 join myemp e3 join myemp e4
where e1.mgr_id = e2.emp_id and e2.mgr_id = e3.emp_id and e3.mgr_id = e4.emp_id and e4.job_id="ad_pres";