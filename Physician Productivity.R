# Poisson regression

# Multivariate Poisson regression
fit <- glm(Total ~ `Total Day Presentations`+Block2+Time+`Shift Type`+`No of junior doctors`+`In charge`+`Years of registration`, data=PP, family=poisson())
summary(fit)

# Multivariate Quasipoisson regression
fit <- glm(Total ~ `Total Day Presentations`+Block2+Time+`Shift Type`+`No of junior doctors`+`In charge`+`Years of registration`, data=PP, family=quasipoisson())
summary(fit)

# Multivariate Poisson regression with significant predictors
fit <- glm(Total ~ Time+`Shift Type`+`Years of registration`, data=PP, family=poisson())
summary(fit)

# Univariate Poisson regression
fit <- glm(Total ~ Time, data=PP, family=poisson())
summary(fit)

fit <- glm(Total ~ `Shift Type`, data=PP, family=poisson())
summary(fit)

fit <- glm(Total ~ `Years of registration`, data=PP, family=poisson())
summary(fit)

# Plotting significant preditors
plot(PP$Total ~ PP$Time)
plot(PP$Total ~ PP$`Shift Type`)
plot(PP$Total ~ PP$`Years of registration`)
