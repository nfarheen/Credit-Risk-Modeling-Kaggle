#read in the file first
glmreg <- glm(cs_training$Sdl2 ~ cs_training$Factor1 + cs_training$Factor2 + cs_training$Factor3 +
                cs_training$Factor4, data = cs_training, family = binomial(link = "logit"))
summary(glmreg)
anova(glmreg, test = "Chisq")

## odds ratios and 95% CI
exp(cbind(OR = coef(glmreg), confint(glmreg)))

library(ggplot2)
library(ROCR)

prob <- predict(glmreg, newdata=cs_training, type="response")
pred <- prediction(prob, cs_training$Sdl2)
perf <- performance(pred, measure = "tpr", x.measure = "fpr")

auc <- performance(pred, measure = "auc")
auc <- auc@y.values[[1]]

roc.data <- data.frame(fpr=unlist(perf@x.values), tpr=unlist(perf@y.values),  model="GLM")
ggplot(roc.data, aes(x=fpr, ymin=0, ymax=tpr)) +
  geom_ribbon(alpha=0.2) +
  geom_line(aes(y=tpr)) +
  ggtitle(paste0("ROC Curve w/ AUC=", auc))

# do it again for testing data
