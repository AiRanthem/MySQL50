# 考察点：子查询
# 6. 查询学过「张三」老师授课的同学的信息
select student.* from student inner join
(
    select distinct Sid from
        (select distinct CId from course inner join teacher on course.TId = teacher.TId where Tname="张三") as t1
    inner join sc on t1.CId = sc.CId
) as t on t.SId = student.SId;