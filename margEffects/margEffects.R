# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Marginal Effects for a Variety of Logit and Probit Models Use margEffects (ProbMarg) With (In) R Software
install.packages("ProbMarg")
library("ProbMarg")
margEffects = read.csv("https://raw.githubusercontent.com/timbulwidodostp/margEffects/main/margEffects/margEffects.csv",sep = ";")
# Estimation Marginal Effects for a Variety of Logit and Probit Models Use margEffects (ProbMarg) With (In) R Software
margEffects$hRank[margEffects$rank==1 | margEffects$rank==2] <- 1
margEffects$hRank[margEffects$rank==3 | margEffects$rank==4] <- 0
logit1 <- glm(admit ~ gre + hRank + gpa, data = margEffects, binomial)
setval1 <- expand.grid(gre = seq(250, 800, 50), hRank = 0:1, gpa = mean(margEffects$gpa))
margEffects1 <- margEffects(logit1, setval1)
probit1 <- glm(admit ~ gre + hRank + gpa, data = margEffects, binomial(link = probit))
margEffects2 <- margEffects(probit1, setval1, method = "probit")
margEffects1
margEffects2
# Marginal Effects for a Variety of Logit and Probit Models Use margEffects (ProbMarg) With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished