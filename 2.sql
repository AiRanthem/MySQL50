# 考察点：函数，inner join
# 2.查询平均成绩大于等于 60 分的同学的学生编号和学生姓名和平均成绩
select * from
    (select SId, AVG(score) average from sc group by SId) as av INNER JOIN student ON av.SId = student.SId
where av.SId = student.SId and average >= 60;