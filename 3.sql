# 考察点：IN
# 3. 查询在 SC 表存在成绩的学生信息
select * from student where SId in (select distinct SId from sc);