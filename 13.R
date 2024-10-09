library(plotly)
library(dplyr)
data("iris")
plot_ly(iris,x=~Sepal.Length,y=~Sepal.Width,
        color=~Species, type= "scatter",
        mode= "markers",
        marker= list(size=10, opacity=0.8)) %>%
  layout(title="Scatter plot of Sepal Length
         vs Sepal width",
         xaxis=list(title="Sepal Length"),
         yaxis=list(title="Sepal width"))
#BOX PLOT
plot_ly(iris,x=~Species, y=~Petal.Length,
        type="box",boxpoint="all",
        jitter = 0.3,
        boxmean = "sd") %>%
  layout(title="Box plot of petal length
         by species", xaxis=list(title="Species"),
         yaxis=list(title="Petal Length"))
#3D Scatter plot
plot_ly(iris,x=~Sepal.Length, y=~Sepal.Width,
        z=~Petal.Length, color=~Species,
        type="scatter3d",mode="markers",
        marker=list(size=8,opacity=0.8)) %>%
  layout(title="3D SCatter Plot",
         scene=list(xaxis=list(title="Sepal Length"),
                    yaxis=list(title="Sepal Width"),
                    zaxis=list(title="Petal Length")))

#Heat MAP
plot_ly(z=~cor(iris[,1:4]), type="heatmap",
        colorscale="viridis", showscale=FALSE) %>%
  layout(title="Correlation Heatmap",
         xaxis=list(ticktext=colnames(iris[,1:4]),
                    tickvals=seq(0.5,4.5,by=1),
                    title="Features"),
         yaxis=list(ticktext=colnames(iris[,1:4]),
                    tickvals=seq(0.5,4.5,by=1),
                    title="Features"))

#Adding the race lines
p <- plot_ly(iris, x=~Sepal.Length,
             y=~Sepal.Width)
add_trace(p,type="scatter",
          mode = "markers+lines")

https://plotly.com/r/
  

library(plotly)
library(quantmod)

getSymbols("AAPL",src='yahoo')

# basic example of ohlc charts
df <- data.frame(Date=index(AAPL),coredata(AAPL))
df <- tail(df, 30)

fig <- df %>% plot_ly(x = ~Date, type="candlestick",
                      open = ~AAPL.Open, close = ~AAPL.Close,
                      high = ~AAPL.High, low = ~AAPL.Low) 
fig <- fig %>% layout(title = "Basic Candlestick Chart")

fig



