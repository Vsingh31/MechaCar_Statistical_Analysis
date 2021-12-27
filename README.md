# MechaCar_Statistical_Analysis
Statisitical analysis of automobile performance with R

## Overview
AutosRUs' new MechaCar is "suffering from production troubles" and the company is hoping that an analytical review may help provide some insight. The goal of this project is to:

* discover which variables predict the MPG for vehicle prototypes;
* collect summary stats on the PSI of suspension coils;
* determine if manufacturing lots are statistically different from the mean population;
* design a study to compare the MechaCar performance against vehicles from other manufacturers.
## Results
### Linear Regression to Predict MPG

![deliverable1](https://user-images.githubusercontent.com/90277142/147416010-a6366935-b53e-42fd-8b0d-d47c256509fd.png)

* Variance of a non-random variable is usually 0. Given this fact, **vehicle_length, and ground_clearance** coeeficients provided a non-random amount of variance to the mpg       values in the dataset.

* The p-Value for this model (p-Value: 5.35e-11) is much smaller than the assumed significance level of 0.05%. This indicates there is sufficient evidence to reject our null hypothesis, which further indcates that the slope of this linear model is not zero.

* This linear model has an r-squared value of 0.7149, which means that approximately 71% of all mpg predictions will be determined by this model. Relatively speaking, his multiple regression model does predict mpg of MechaCar prototypes effectively.

### Summary Statistics on Suspension Coils
![total_summary](https://user-images.githubusercontent.com/90277142/147428616-b89c8d03-ff13-4b33-9d0e-71740a6b9271.png)

![lot_summary](https://user-images.githubusercontent.com/90277142/147428626-cdd7c32a-67e8-4126-902a-87bf3b18848e.png)

* While the overall variance, as shown in the Total Summary data above, is under 100 psi and meets specifications, there is a problem with one of the individual lots. As shown in the Lot Summary stats, the variance for Lot 3 is well over the acceptable threshold, at 170.28.
### T-Tests on Suspension Coils
* A review of the results of the T-test for the suspension coils across all manufacturing lots shows that they are not statistically different from the population mean, and the   p-value is not low enough (0.0603) for us to reject the null hypothesis.
![t-test](https://user-images.githubusercontent.com/90277142/147429447-68fbf0f5-04cc-4aa2-8510-86d608cfd7e7.png)
* A review of the results of the T-test for the suspension coils for Lot 1 shows that they are not statistically different from the population mean, and the p-value is not low     enough (1) for us to reject the null hypothesis.
![lot1](https://user-images.githubusercontent.com/90277142/147429490-dad7299c-bb23-40ae-81e8-d26b0c118cd4.png)
* A review of the results of the T-test for the suspension coils for Lot 2 shows that they are not statistically different from the population mean, and the p-value is not low     enough (0.6072) for us to reject the null hypothesis.
![lot2](https://user-images.githubusercontent.com/90277142/147429512-1c0c5e14-09bd-4ae8-a94e-ddaaf0c6d689.png)
* A review of the results of the T-test for the suspension coils for Lot 3 shows that they are slightly statistically different from the population mean, and the p-value is just   low enough (0.0417) for us to reject the null hypothesis. This lot may be need to be discarded, or at least more closely evaluated.

![lot3](https://user-images.githubusercontent.com/90277142/147429514-26d90e55-940e-48c3-80f3-9b83c344578d.png)


## Study Design: MechaCar vs Competition
There are many factors that consumers take into consideration when evaluating a car to purchase. However, in a world where ridesharing is becoming more ubiquitous and it's easy and cheap to get around in other people's vehicles, customers looking to purchase a car are looking for more than just a conveyance. They will be looking to buy a car that is an economical means to regularly transport themselves and their items on a reliable, regular basis.

* Metric to test
  To narrow down our test, we should evaluate MechaCar's carrying capacity, in cubic inches, in comparison to various competitors' vehicles.

* Null and Alternate Hypothesis
  H0: MechaCar prototypes' average carrying capacity is similar to competitor's vehicles in the same vehicle class Ha: MechaCar prototypes' average carrying capacity is           statistically above or below that of competitor vehicles.

* Statistical Test Used
  The best statistical test for this would be two-sample t-tests.

* What data is needed
  We would need to gather cubic space data from the carrying compartments of all MechaCar prototypes, as well as from all major competitor vehicles.
