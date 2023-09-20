# SAS marco: Bayesian Survival Meta-Experimental Design (BSMED)

The macro is developed to calculate a Bayesian type I error and power under the general meta design framework incorporating mixed types of historical datasets.

Ibrahim JG, **Gwon Y**, and Chen MH. (2015) Bayesian Survival Meta-Experimental Design Using Historical Data In: Modern Approaches to Clinical Trials Using SAS: Classical, Adaptive, and Bayesian Methods, edited by Menon SM and Zink R. Gary, NC: SAS Institute Inc, pp. 107-131.

README Document for Using SAS Macro BSMED

The SAS macro BSMED could be stored in a folder names “BSMED”. Then BSMED can be access by including the following lines:

%include BSMED (macroBSMED.sas);
%BSMED (HIST=, CURR=, delta=, eta0=, NMCS=, nbi=, a0=, REP=, sigma0=, sigma1=, tau0=, tau=, SEEDGEN=, OUTPUT=);
Inputs for BSMED

HIST: Dataset with the first three columns, K (trial ID), y (total subject year duration), ν (total number of events), and additional column for treatment indicator (x), where K, y, and ν should be arranged in the first, second, and third columns, and x should be placed after column 3. Note that x is an indicator variable of the treatment arm, which takes a value of 0 if it comes from the control arm and 1 if it comes from the experimental arm. The values of K should be consecutive integers starting with 1. For example, if the total number of historical datasets is 5, the values of K should be enumerated as 1, 2, 3, 4, and 5.  Optional.

CURR: Dataset with the seven columns, K (trial ID) in the same format as for the historical data, n (the total sample size), p (the proportion of subjects in the control arm), r (the annualized event rate), TD (the trial duration), and TA (the accrual time), where all variables should be arranged as mentioned columns. TF (the minimal follow-up time) is easily calculated using TA and TD. Required.

delta: Indicates a prespecified design margin of non-inferiority trial. Required.

eta0 : Indicates the user choice of a Bayesian credible level in calculating the Bayesian type I error and power. Required.

NMCS: Indicates the number of Markov chain Monte Carlo (MCMC) samples. Required.

nbi: Indicates the number of burn-in samples in each run of PROC MCMC. Required.

a0: Indicates a discounting parameter for the historical survival meta-experimental data. Required.

REP: Indicates the number of simulated datasets. Required.

sigma0: Indicates the initial prior variance of the parameter γ_0. Required.

sigma1: Indicates the initial prior variance of the parameter γ_1. Required.

tau0: Indicates the initial prior variance of the parameters, θ_0k, for the historical datasets. Required.

tau: Indicates the initial prior variance of the parameters, θ_k, for the current datasets. Required.

SEEDGEN: Indicates the initial seed to generate sets of seed numbers in generating predictive data and running MCMC. Required.

OUTPUT: Name of the output rich text file (rtf). One can also specify a directory/folder in which the file will be stored. For example, the output file named “output_a0” will be stored in “C:\...\BSMED” by %BSMED (…,OUTPUT=C:\...\BSMED);”. If OUTPUT is not specified, the file will be indexed by the name “BSMED_Output_a0” as default. In the file name, a0 indicates a discounting parameter for the historical survival meta-experimental data which the user specifies in the macro.

Note 1: (i) The name of the K (trial ID) variable in HIST should be the same as that of the K (trial ID) variable in CURR; (ii) TD and TA should be in the same time unit such as years; (iii) TD is always greater than TA, and TD is allowed to be greater than or equal to or less than or equal to the sum of TA and TF; and (iv) the indicator variable x must be coded as 0 and 1.

Note 2: No missing values are allowed in both datasets. However, it is possible to leave a blank in historical datasets if not available.

Note 3: Four different types of historical datasets are allowed: (i) hist1: only the control arm; (ii) hist2: only the experimental arm; (iii) hist3: both the control and experimental arms; and (iv) hist4: mixed control and experimental arms.
 
Note 4: The total number of trials in the current data is allowed to be 1 or greater and the total number of trials in the historical data is also allowed to be 1 or greater.  

Outputs for BSMED

The macro automatically produces an rtf file indexed by the user specified name. If a user does not specify the file name, the macro uses the file name as “BSMED_Output_a0.rtf” as default. The rtf file includes five tables: (i) Historical Data if a file name is specified in “HIST=” ; (ii) Current Data with the Input Variables; (iii) Design Values; (iv) Type I Error for the Bayesian Survival Meta-Experimental Design; and (v) Power for the Bayesian Survival Meta-Experimental Design.

Note: In the absence of historical data, the macro does not produce the table for historical data and thus, it produces only four tables instead. For historical data, the macro allows users to input four different types of datasets. In the construction of tables for the Bayesian type I error and power, the macro produces three default Bayesian credible levels 0.90, 0.95, and 0.975 and one user choice Bayesian credible level.

Running Time for BSMED

It may take about 2 hours to run this macro for 5,000 simulated datasets.
![image](https://github.com/GYJ0526/Bayesian-Survival-Meta-Experimental-Design/assets/142708157/eecb4135-593a-4a55-b07a-9e8fb1c1d584)
