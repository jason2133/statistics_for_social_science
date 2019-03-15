# CPI

# Clean up Memory
rm(list = ls())

# ��� ����
setwd("C:/Users/jason/Desktop/STAT242/Assignment1")
cpi <- read.table("CPI.txt", header=T)

# Data Structure
str(cpi)

# ���� 6��
head(cpi)

# �ټ� ��ġ ���
summary(cpi)

# �л�
sapply(cpi, var)

# ǥ������
sapply(cpi, sd)

summary(cpi); sapply(cpi, var); sapply(cpi, sd);

# Range ����
range(cpi$Food)
range(cpi$Housing)
range(cpi$Transportation)
range(cpi$Education)
range(cpi$Recreation)

range(cpi$Food); range(cpi$Housing); range(cpi$Transportation); range(cpi$Education); range(cpi$Recreation);

# �ٱ� �� �׸�
stem(cpi$Food)
stem(cpi$Housing)
stem(cpi$Transportation)
stem(cpi$Education)
stem(cpi$Recreation)

# ������׷�
hist(cpi$Food)
hist(cpi$Housing)
hist(cpi$Transportation)
hist(cpi$Education)
hist(cpi$Recreation)

# �ڽ� �÷�
# boxplot(Food~Region, data=cpi)
# boxplot(Housing~Region, data=cpi)

# ������
head(cpi$Food)

# Make a DataFrame
food <- data.frame(cpi$Food)
housing <- data.frame(cpi$Housing)
transportation <- data.frame(cpi$Transportation)
education <- data.frame(cpi$Education)
recreation <- data.frame(cpi$Recreation)

# Data Frame Matrix
cpi_frame <- data.frame(food, housing, transportation, education, recreation)
head(cpi_frame)

# Corrleation of all Variables
cor(cpi_frame)


# ȸ��