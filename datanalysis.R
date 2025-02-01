#' - Data Import
#'
setwd("D:/Profiles/user/Desktop/R Project")
list.files()

df <- read.csv("Mango.csv")

#'- Data Exploration
#'
View(df)
df

head(df)
str(df)
summary(df)

#'- Data Summary, Table using gtsummary package
#'

library(gtsummary)
tbl_summary(df, statistic=all_continuous()~"{mean}, ({sd})")


library(psych)
describe(df)


#'- Data Manipulation
#'

library(tidyr)

df_long <- df %>% pivot_longer(cols=1:10,names_to = "varieties",values_to = "weight")

library(dplyr)

df_summary <- df_long %>% group_by(field,varieties) %>% summarise(meanwt=mean(weight),sdwt=sd(weight))


#'- Data Visualization
#'

library(ggplot2)

ggplot(df_long, aes(weight, fill = varieties))+
  geom_histogram(color="gray80")


ggplot(df_long, aes(weight, fill = varieties))+
  geom_density(color="gray80", alpha=0.5)


ggplot(df_long, aes(field, weight, fill = varieties))+
  geom_boxplot()


ggplot(df_long, aes(field, weight, fill = varieties))+
  geom_violin()


ggplot(df_long, aes(field, weight, fill = varieties))+
  geom_violin()+
  geom_boxplot(alpha=0.3)


#'- Hypothesis Testing
#' null hypothesis: there is no difference alpha= 0.05
#' alternative hypothesis: there is statistically significant difference in means


tt <- t.test(weight~field, df_long)
tt

mod_anova <- aov(weight~varieties, df_long)
summary(mod_anova)

mod_anova2 <- aov(weight~varieties+field, df_long) 
summary(mod_anova2)

TukeyHSD(mod_anova)

library(report)
report(tt)

library(webr)  
class(tt)
plot(tt)

report(mod_anova2)
class(mod_anova2)
plot(mod_anova2)


#'- Report making using R markdown
#'
