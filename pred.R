# h=data.frame()
# house=edit(h)

house_data<-data.frame(
  Size_sqft=c(1500,1800,2000,2200,2500,3000,3500,4000,4500,5000),
  Bedrooms=c(3,3,4,4,5,5,5,6,6,6),
  Bathrooms=c(2,2,3,3,4,4,3,5,4,4),
  Age_years=c(10,5,8,12,6,3,15,7,4,2),
  Price=c(300000,35000,40000,42000,50000,60000,58000,70000,75000,80000)
)
house_data
View(house_data)

house_model<-lm(Price ~ Size_sqft + Bedrooms + Bathrooms + Age_years, data = house_data)
summary(house_model)

new_house<-data.frame(Size_sqft=3200,Bedrooms=5,Bathrooms=4,Age_years=8)
predicted_price<-predict(house_model, new_house)
cat("Predicted Selling Price:", predicted_price, "\n")
