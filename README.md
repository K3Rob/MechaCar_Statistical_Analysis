# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

The dataset shows only two variables with non random amounts of variance. Using a standard test with an alpha of .05 only MPG and Vehicle Length meet the benchmark. If you have reason to use an alpha of .1 you could count vehicle weight.

![linear_regression](https://github.com/K3Rob/MechaCar_Statistical_Analysis/blob/main/MechaCar_Statistical_Analysis/Images/linear_regression.PNG)

None of the variables produce a slope of zero. But with a slope of .001245 vehicle weight comes quite close. This would indicate there is no good reason to use an alpha of .1 to recognize the variance as non random.


The r<sup>2</sup> for the data indicates this model predicts approx 71.5% of the variance in the model. For compairison the adjusted r<sup>2</sup> indicates only 68.2%. The signs point to this being a relatively good model. 

## Summary Statistics on Suspension Coils
Taken as a whole the variance falls well within the 100 PSI variance. Once you separate out the lots you find that Lot 3 exceeds the allowable variance.

![total_summary](https://github.com/K3Rob/MechaCar_Statistical_Analysis/blob/main/MechaCar_Statistical_Analysis/Images/total_summary.PNG)
![lot_summary](https://github.com/K3Rob/MechaCar_Statistical_Analysis/blob/main/MechaCar_Statistical_Analysis/Images/lot_summary.PNG)

## T-Tests on Suspension Coils
To check and make sure that the population mean is equal to 1,500 PSI t-tests were run on the full population and the three lots individually. Assuming an alpha of >.05 we will accept the null that the means are statistically similar. 

    T-test of all lots returns a p-value of .06: accept the null/ the means are statistically similar.
![t-test_coil_data](https://github.com/K3Rob/MechaCar_Statistical_Analysis/blob/main/MechaCar_Statistical_Analysis/Images/t-test_coil_data.PNG)

    T-test of all lots returns a p-value of 1: accept the null/ the means are statistically similar.
![t-test_lot1](https://github.com/K3Rob/MechaCar_Statistical_Analysis/blob/main/MechaCar_Statistical_Analysis/Images/t-test_lot1.PNG)

    T-test of all lots returns a p-value of .6: accept the null/ the means are statistically similar.
![t-test_lot2](https://github.com/K3Rob/MechaCar_Statistical_Analysis/blob/main/MechaCar_Statistical_Analysis/Images/t-test_lot2.PNG)

    T-test of all lots returns a p-value of .04: reject the null/ the means are not statistically similar.
![t-test_lot3](https://github.com/K3Rob/MechaCar_Statistical_Analysis/blob/main/MechaCar_Statistical_Analysis/Images/t-test_lot3.PNG)

The population as a whole with lots 1 & 2 all have means statistically equal to 1,500 PSI, while lot 3 fails to meet the benchmark.

# Study Design: MechaCar vs Competition
To compare the MechaCar against competitors we should run a study on consumer rating by compairing mpg, price, maintenance cost, safety rating, and consumer rating. Our hypothesis should be that the MechaCar mean consumer rating is greater than the average consumer rating, with the null being that the MechaCar mean consumer rating is equal to the average consumer rating. Running a multiple linear regression we should be able to show whether these variables have a statistically significant impact on the consumer rating a t-test will show w
