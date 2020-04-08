# 考察知识点：
# 子查询，连接，联表(Join)

# 1 查询" 01 "课程比" 02 "课程成绩高的学生的信息及课程分数
select t1.SId SId, t1.Sage Sage, t1.Sname Sname, t1.Ssex Ssex, t1.score score1, t2.score score2 from
    (select student.SID,student.Sage, student.Sname, student.Ssex, score from student,sc where student.SId = sc.SId and CId='01') as t1,
    (select student.SID, score from student,sc where student.SId = sc.SId and CId='02') as t2
where t1.SId = t2.SId and t1.score > t2.score;

# 1.1 查询同时存在" 01 "课程和" 02 "课程的情况
select t1.SId Sid, t1.score score1, t2.score score2 from
    (select SId,score from sc where CId='01') as t1,
    (select SId,score from sc where CId='02') as t2
where t1.SId = t2.SId;

# 1.2 查询存在" 01 "课程但可能不存在" 02 "课程的情况(不存在时显示为 null )
select t1.SId Sid, t1.score score1, t2.score score2 from
    (select SId,score from sc where CId='01') as t1 LEFT JOIN (select SId,score from sc where CId='02') as t2
    ON t1.SId = t2.SId;

# 1.3 查询不存在" 01 "课程但存在" 02 "课程的情况
select t2.SId Sid, t1.score score1, t2.score score2 from
    (select SId,score from sc where CId='01') as t1 RIGHT JOIN (select SId,score from sc where CId='02') as t2
    ON t1.SId = t2.SId
WHERE t1.SId is null;