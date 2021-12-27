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

## Study Design: MechaCar vs Competition

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

In your description, address the following questions:

* What metric or metrics are you going to test?
* What is the null hypothesis or alternative hypothesis?
* What statistical test would you use to test the hypothesis? And why?
* What data is needed to run the statistical test?
