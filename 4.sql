# 考察点：函数，Join
# 4. 查询所有同学的学生编号、学生姓名、选课总数、所有课程的总成绩(没成绩的显示为 null )
select s.SId, Sname, count(CId) cnt, sum(score) total from
    sc right join student s on sc.SId = s.SId
group by Sid;

# 4.1 查有成绩的学生信息
select s.SId, Sname, count(CId) cnt, sum(score) total from
    sc inner join student s on sc.SId = s.SId
group by Sid;