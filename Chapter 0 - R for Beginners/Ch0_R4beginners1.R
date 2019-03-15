rm(list = ls()) 
# Remove
# ls : Objects
# ����ϰ� ����
# Remove everything in machine

# creating objects
n <- 15
n
print(n)

# case sensitive
x <- 5
x
X <- 2
X

n <- 10 + 2
n

(10 + 2) * 5

# Vector ����
# y�� 1, 2, 3
y <- c(1,2,3)
y

# z�� 2, 3, 4
z <- c(2,3,4)
z

# Combine Column (��)
u <- cbind(y, z)
u
str(u)

v <- rbind(y, z)
v

# Data Frame�� rbind ������ �������� �ľ��ϴ� ���� �߿��ϴ�!
M <- data.frame(y, z)
M

# Structure  ������ ������ ��� �˷��ִ� str
str(M)

# online help
?lm # linear regression
# lm = Linear Model
# ? ����ǥ�� ġ�� Linear Regression�� ���� R�� ģ���ϰ� �˷��ش�!

# Keyword Ű���带 �𸥴ٸ� ?? ����ǥ 2���� �տ� ���̸� �ȴ�!
??lm # keyword search
??linear.model

# generating sequence
x <- 1:30
# Sequence 1���� 30����
x

1:10 - 1

# 1���� 5����, ������ 0.5�� ��������
seq(1, 5, by = 0.5)

# ���ó� �տ� ?�� �ٿ��ָ� seq = sequence�� ���� ģ���ϰ� �˷��ش�!
?seq(1, 5, by = 0.5)

# 1���� 5����, ��ü ������ 5���� ��
seq(1, 5, length = 5)

# �̰� ����ϸ� 1�� ����
seq(1, 5, 5)

# 1�� 5�� �ݺ��ض� rep = repeat
rep(1, 5)

set.seed(1)
# set.seed �̰� �߿��ϴ�!
# fix your code
# ��ȣ�� ���� �ƹ����̳� �ְ� �����ϸ� 
# ������ ������ȣ�� �߻����� ���������� �����ϴ� ȿ���� ����.

# generating random variables
rnorm(10, 0, 1)   # N(0,1)
rnorm(10) # Standard Normal Distribution
# �׳� ������ ������ �ڵ����� ǥ�����Ժ����� �Ǿ N(0, 1)�� �ȴ�!
# ���Ժ���
# 10�� �̾Ƴ���

rbinom(4, 5, 0.2) # B(5, 0.2)
# ���׺���
# 4�� �̾Ƴ���

rpois(5, 3)       # Poisson(3)
# ���Ƽ�
# 5�� �̾Ƴ��� 

# types of objects
# vector
x <- c(1,2,5,7)
x
str(x)
# Vector��� ����ϸ� ��ǻ�ʹ� ������ "Column" Vector��� ���Ѵ�!

# factor
# ����
y <- factor(1:3) 
y
str(y)

# matrix
z1 <- matrix(1:6, 3, 2)
z1
str(z1)
# ����� �⺻���δ� �Ʒ��� ��������
# 1 4
# 2 5
# 3 6
# Vector��� ����ϸ� ��ǻ�ʹ� ������ "Column" Vector��� ���Ѵ�!

z2 <- matrix(1:6, 3, 2, byrow = T)
z2
# �ٵ� Column�� �ƴ϶� Row�� �����ϰ� �ʹٸ� byrow = T��� ������ �ȴ�!

t(z2) # transpose
# ��ġ���

# data.frame
x <- 1:4
n <- rep(10, 4) # 10�� 4�� �ݺ��ض�!
data.frame(x, n)

# list
x <- "names" # the Character
y <- 1:4 # Number
L1 <- list(x, y)
L1

cbind(x, y)
# cbind(x, y)�� L1�� ���غ���.
# cbind(x, y)�� ���� ���ϴ°� �ƴϴ�. �̻ڰ� �� ���´�
# �̶��� LIST�� Ȱ���ؼ� list(x, y) �̷��� �ϸ� �ȴ�!

data.frame(x, y)
# cbind�� ������ �� "" ū ����ǥ�� �������ٴ� ���� Ȯ��
# Data Frame�� Raw Data�� �ٷ���� �� �� ���ϴ�!

str(data.frame(x, y))

# Object Oriented Programming
# ��ü ���� ���α׷���
# ��ǻ�Ͱ� � �� �޾Ƶ��� �� "��ü"�� �޾Ƶ��δ�
# ��ü�� ����� �ľ��ϴ� ���� �߿��ϴ�
# data frame�� �׸𳺰� ����ٰ� �ؼ� Matrix �����ϸ� Error�� ���!

L2 <- list(x = x, y = y)
L2

# indexing
y
y[3]

z1
z1[1:3]
z1[4:5]
z1[2,2] # ��� (2, 2) ��ġ�� �ִ°� Print �ض�

L1[[1]]

# element in the data
# list is broken
# Single Character

str(L1[[1]])

L1[1]
# first element
# This is List

str(L1[1])

L2[["x"]]
L2["x"]
L2$x

# matrix computation
# check dimension
z1; dim(z1) # dim�� ������ ���Ѵ�
z2; dim(z2)
# ; ����Ŭ���� Ȱ���ؼ� �� �ٿ� ���� �ڵ带 ����� �� �ִ�

z1 + z2 
z1 - z2 

z1 + c(1, 2)

z1
z2

z1 * z2 # ���� ��ġ�� �ִ� ���ҳ��� ���� ��
z1 / z2 # ���� ���� ��ġ�� �ִ� ���ҳ��� ���� ��

# z1 * z2�� z1 %*% z2�� ��������!

z1 %*% z2 # matrix(multiplication) error!
# ��� ���� ����� �� �±� ������ Error�� ���

t(z1) %*% z2 # works
t(z2) %*% z1 # again, works!

