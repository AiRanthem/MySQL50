# 9. 查询和" 01 "号的同学学习的课程 完全相同的其他同学的信息
select * from student where SId not in
    (select distinct at.SId from
        (select * from student,(select distinct CId from sc where SId = '01') as ct) as at
        left join sc on at.SId=sc.SId and at.CId=sc.CId
    where sc.score is null);
