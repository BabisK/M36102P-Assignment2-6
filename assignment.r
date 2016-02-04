lottery_data <- read.csv("lottery_data.csv", header = FALSE)

par(mfrow=c(3,1))

single_file <- stack(lottery_data)[1]
single_file <- factor(single_file[[1]])
frequencies <- summary(single_file)
barplot(frequencies, xlab = "Balls", ylab = "Times drawn", main = "Frequency diagram of lottery balls drawn in 10,000 draws")
chisq.test(frequencies)

single_file_1000 <- stack(lottery_data[1:1000,])[1]
single_file_1000 <- factor(single_file_1000[[1]])
frequencies_1000 <- summary(single_file_1000)
barplot(frequencies_1000, xlab = "Balls", ylab = "Times drawn", main = "Frequency diagram of lottery balls drawn in 1,000 draws")
chisq.test(frequencies_1000)

single_file_100 <- stack(lottery_data[1:100,])[1]
single_file_100 <- factor(single_file_100[[1]])
frequencies_100 <- summary(single_file_100)
barplot(frequencies_100, xlab = "Balls", ylab = "Times drawn", main = "Frequency diagram of lottery balls drawn in 100 draws")
chisq.test(frequencies_100)