# Generate sales data


num_transactions = 10
sales_data <- data.frame(
  product = sample(c("Product A", "Product B", "Product C")
                   num_transactions, replace = TRUE),
  price = round(runif(num_transactions, min = 10, max = 100), 2),
  quantity = sample(1:10, num_transactions, replace = TRUE),
  transaction_data = sample(seq(as.data('2022/01/01'),
                                as.data('2022/12/31'), by = "day"), num_transactions,
                            replace = TRUE))
)

# view the first few rows
head(sales_data)

print(str(sales_data))
total_revenue <- sum(sales_data$price * sales_data$quantity)
print(paste("Total Revenue",total_revenue))

#Identify the product with the highet revenue
product_revenue <- aggregate((price * quantity ~ product,
                              ))