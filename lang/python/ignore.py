# 正常版本
s = sum((i for i in range(10)))
# 省略括号
s = sum(i for i in range(10))
# 正常版本
s = "".join((i for i in "hello world"))
# 省略括号
s = "".join(i for i in "hello world")
# 字典
s = {(1, 2, 3): "hello world"}
print(s[(1, 2, 3)], s[1, 2, 3])