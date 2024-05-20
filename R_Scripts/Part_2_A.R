# Prepare the data
cancer_data <- na.omit(cancer_data)  # Removing rows with missing data

# Create the regression model
model <- lm(incidenceRate ~ medIncome + PovertyEst, data = cancer_data)

# Display the model summary
summary(model)


# Part C

# Residuals vs. Fitted values plot
plot(model$fitted.values, resid(model),
     xlab = "Fitted values", ylab = "Residuals",
     main = "Residuals vs. Fitted")
abline(h = 0, col = "red")

# Normality tests
qqnorm(resid(model))
qqline(resid(model), col = "red")
shapiro.test(resid(model))