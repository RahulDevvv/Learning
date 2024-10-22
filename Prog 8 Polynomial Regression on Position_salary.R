# Polynomial Regression

#Linear regression assumes a straight-line relationship between job level and salary.
#Polynomial regression fits a curve to capture more complicated patterns in the data.
#We use plots to see how well each model fits the data, and we predict salaries for a given level using both models.
#We will observe that the polynomial model usually gives better predictions because real-world data often doesn’t follow a simple straight line.

# Importing the dataset
dataset = read.csv(file.choose())
dataset = dataset[2:3]
dataset

# Fitting Linear Regression to the dataset
lin_reg = lm(formula = Salary ~ .,
             data = dataset)
summary(lin_reg)

# Fitting Polynomial Regression to the dataset
#Polynomial regression fits a curved line by adding extra features (like Level², Level³, and Level⁴).
#These extra columns allow the model to capture more complex patterns in the data, rather than just a straight line.
dataset$Level2 = dataset$Level^2
dataset$Level3 = dataset$Level^3
dataset$Level4 = dataset$Level^4
dataset
poly_reg = lm(formula = Salary ~ .,
              data = dataset)
summary(poly_reg)

dataset$Level
dataset$Level2
dataset$Level3
dataset$Level4


# Visualising the Linear Regression results
install.packages('ggplot2')
library(ggplot2)
ggplot() +
  geom_point(aes(x = dataset$Level, y = dataset$Salary),
             colour = 'red') +
  geom_line(aes(x = dataset$Level, y = predict(lin_reg, newdata = dataset)),
            colour = 'blue') +
  ggtitle('Truth or Bluff (Linear Regression)') +
  xlab('Level') +
  ylab('Salary')

# Visualising the Polynomial Regression results
install.packages('ggplot2')
library(ggplot2)
ggplot() +
  geom_point(aes(x = dataset$Level, y = dataset$Salary),
             colour = 'red') +
  geom_line(aes(x = dataset$Level, y = predict(poly_reg, newdata = dataset)),
            colour = 'blue') +
  ggtitle('Truth or Bluff (Polynomial Regression)') +
  xlab('Level') +
  ylab('Salary')

# Visualising the Regression Model results (for higher resolution and smoother curve)
install.packages('ggplot2')
library(ggplot2)
x_grid = seq(min(dataset$Level), max(dataset$Level), 0.1)
ggplot() +
  geom_point(aes(x = dataset$Level, y = dataset$Salary),
             colour = 'red') +
  geom_line(aes(x = x_grid, y = predict(poly_reg,
                                        newdata = 
                                          data.frame
                                        (Level = x_grid,
                                                   Level2 = x_grid^2,
                                                  Level3 = x_grid^3,
                                                  Level4 = x_grid^4))),
            colour = 'blue') +
  ggtitle('Truth or Bluff (Polynomial Regression)') +
  xlab('Level') +
  ylab('Salary')
# Predicting a new result with Linear Regression
predict(lin_reg, data.frame(Level = 6.5))
#The value 6.5 is chosen to demonstrate the model's ability to make predictions for unseen data.
# Predicting a new result with Polynomial Regression
predict(poly_reg, data.frame(Level = 6.5,
                             Level2 = 6.5^2,
                             Level3 = 6.5^3,
                             Level4 = 6.5^4))
#6.5 is not a whole number, so it’s used to test
#if the model can predict values between the known levels (in this case, between Level 6 and Level 7).
#This is called interpolation—predicting within the range of known data.
