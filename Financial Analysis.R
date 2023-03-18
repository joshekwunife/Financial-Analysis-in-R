#Data
revenue.1000 <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses.1000 <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
#profit for each month
profit <- round(revenue - expenses)
profit

#net profit after 30% tax rounded to two decimal points
tax <- round(profit * 0.3)
tax

# profit after tax
profit.after.tax <- round(profit - tax)
profit.after.tax

#profit margin
profit.margin <- round(profit.after.tax/revenue) * 100
profit.margin

#good months (where profit after tax was greater than the mean of the year)
mean.of.year <- round(mean(profit.after.tax), 2)
mean.of.year
good.months <- profit.after.tax > mean.of.year
good.months

#bad months (where profit after tax was lesser than the mean of the year)
bad.months <- profit.after.tax < mean.of.year
bad.months

#best month
max(round(profit.after.tax))
best.month <- max(profit.after.tax) == profit.after.tax
best.month

#worst month
min(round(profit.after.tax))
worst.month <- min(profit.after.tax) == profit.after.tax
worst.month

#binding the vectors to matrix
Sales.Report <- rbind(
revenue,
expenses,
profit,
tax,
profit.after.tax,
profit.margin,
good.months,
bad.months,
best.month,
worst.month
)

#assigning column names by months
colnames(Sales.Report) <- c("Jan", "Feb", "Mar", "Apr", "May", "June", "July", "Aug", "Sep", "Oct", "Nov", 
                                     "Dec")
