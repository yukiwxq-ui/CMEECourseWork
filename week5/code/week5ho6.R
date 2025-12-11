rm(list=ls())
require(WebPower)

# Power analysis for dragon horns
effect_size <- 0.3/1.2  # Cohen's d
wp.t(d=effect_size, power=0.8, type="two.sample", alternative="two.sided")

# Power curve
res <- wp.t(n1=seq(20,300,20), n2=seq(20,300,20), d=effect_size, 
            type="two.sample.2n", alternative="two.sided")
plot(res, xvar='n1', yvar='power')

# Exercise 1:
  
# Power calculation for bacterial experiment
power_result <- wp.t(n1=300, n2=300, d=0.11, type="two.sample", 
                     alternative="two.sided", alpha=0.05)
# Interpretation: The statistical power is [calculated value]. With power < 0.8, there's high risk of Type II error. The PI should be cautious about the result and consider replication.

# Exercise 2: Methods section should describe the power analysis procedure, effect size calculation, and justification for alpha = 0.05 and power = 0.8. Results should present the power estimate and sample size requirements.

# Exercise 3: Philosophical discussion points:
# Type I errors lead to false positives in literature
# Type II errors mean missed discoveries
# Solutions: replication studies, meta-analyses, pre-registration, larger sample sizes