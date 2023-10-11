# test_optimal_vcmax_code.R
## script to test the optimal vcmax r code and develop some hypotheses

## load packages
# install.packages('R.utils')
library(R.utils)

## source the code
source('../../optimal_vcmax_r/calc_optimal_vcmax.R')
sourceDirectory('../../optimal_vcmax_r/functions')

## run the model
test_default <- calc_optimal_vcmax() # default output
test_co2_response <- calc_optimal_vcmax(cao=c(400, 800, 1200))
test_co2_response_2 <- calc_optimal_vcmax(cao=seq(400, 1200, 100))

## make simple plot
plot_co2_response_2 <- plot(test_co2_response_2$cao, 
                            test_co2_response_2$vcmax)

