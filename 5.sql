# 考察点：like
# 5. 查询「李」姓老师的数量
select count(TId) from teacher where Tname like "李%";