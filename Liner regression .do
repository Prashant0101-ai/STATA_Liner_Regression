*Describe and summarize data
describe
summarize

*Tabulate foreign variable
tab foreign

*OLS regression of price against foreign
reg price foreign

*Explore predicted values by foreign
margins, over(foreign)
marginsplot

*OLS regression
reg price foreign mpg
*OLS regression
reg price foreign mpg weight

*Test for heteroskedasticity
estat hettest

*Residual versus fitted plot
rvfplot

*Transform price to logprice
gen logprice = log(price)

*OLS regression
reg logprice foreign mpg weight

*Test for heteroskedasticity
estat hettest

*Residual versus fitted plot
rvfplot

*Collinearity test
estat vif

*OLS regression with quadratic weight
reg logprice foreign mpg c.weight##c.weight

*Predict values
margins, at(weight=(1500(250)5000))

*Plot predictions
marginsplot

*Table of regressions
reg price foreign
estimates store a1
reg price foreign mpg
estimates store a2
reg price foreign mpg weight
estimates store a3
reg logprice foreign mpg weight
estimates store a4
reg logprice foreign mpg c.weight##c.weight
estimates store a5

esttab a1 a2 a3 a4 a5, b(3) se(3) star compress nogap s(N r2) 
