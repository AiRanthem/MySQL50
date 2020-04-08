# 考察点：集合运算
# 7. 查询没有学全所有课程的同学的信息
# 思路：左表为所有可能的S-C组合，右表为存在的S-C组合，左连接，右面为null就是没出现这种选课，换言之就是这个S没有选C
select distinct t1.SId, t1.Sname, t1.Sage, t1.Ssex from
    (select student.*,CId from student, course) as t1 left join
    (select SId,CId from sc) as t2 on t1.CId = t2.CId and t1.SId = t2.SId
where t2.SId is null;