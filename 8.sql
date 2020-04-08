# 8. 查询至少有一门课与学号为" 01 "的同学所学相同的同学的信息
select distinct student.* from student, sc
where student.SId = sc.SId and CId in (select CId from sc where SId='01') and student.SId != '01';
