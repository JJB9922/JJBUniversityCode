rm(list=ls())

setwd("/home/JJB/Documents/NORWAY/Dissertation/Results/Data/71")

#NotSona
finalconsent <- read.csv("data_exp_71312-v6_questionnaire-3f3a.csv")
demographics <- read.csv("data_exp_71312-v6_questionnaire-5y3z.csv")
DASS <- read.csv("data_exp_71312-v6_questionnaire-6gi7.csv")
SocMed <- read.csv("data_exp_71312-v6_questionnaire-9i5t.csv")
demographics2 <- read.csv("data_exp_71312-v6_questionnaire-9rvg.csv")
consent <- read.csv("data_exp_71312-v6_questionnaire-34ma.csv")
DASS2 <- read.csv("data_exp_71312-v6_questionnaire-fw5b.csv")
SocMed2 <- read.csv("data_exp_71312-v6_questionnaire-huvo.csv")
NPI <- read.csv ("data_exp_71312-v6_questionnaire-ijz2.csv")
NPI2 <- read.csv("data_exp_71312-v6_questionnaire-lrai.csv")
NPI3 <- read.csv("data_exp_71312-v6_questionnaire-qi2u.csv")
DASS3 <- read.csv("data_exp_71312-v6_questionnaire-s3nm.csv")
DASS4 <- read.csv("data_exp_71312-v6_questionnaire-skto.csv")
SocMed3 <- read.csv("data_exp_71312-v6_questionnaire-uyvk.csv")
NPI4 <- read.csv("data_exp_71312-v6_questionnaire-xtxc.csv")
SocMed4 <- read.csv("data_exp_71312-v6_questionnaire-za32.csv")
finalconsent2 <- read.csv("data_exp_71312-v6_questionnaire-zey3.csv")

setwd("/home/JJB/Documents/NORWAY/Dissertation/Results/Data/77")
#Sona
Sfinalconsent <- read.csv("data_exp_77569-v3_questionnaire-3f3a.csv")
Sdemographics <- read.csv("data_exp_77569-v3_questionnaire-5y3z.csv")
SDASS <- read.csv("data_exp_77569-v3_questionnaire-6gi7.csv")
SSocMed <- read.csv("data_exp_77569-v3_questionnaire-9i5t.csv")
Sdemographics2 <- read.csv("data_exp_77569-v3_questionnaire-9rvg.csv")
Sconsent <- read.csv("data_exp_77569-v3_questionnaire-34ma.csv")
SDASS2 <- read.csv("data_exp_77569-v3_questionnaire-fw5b.csv")
SSocMed2 <- read.csv("data_exp_77569-v3_questionnaire-huvo.csv")
SNPI <- read.csv ("data_exp_77569-v3_questionnaire-ijz2.csv")
SNPI2 <- read.csv("data_exp_77569-v3_questionnaire-lrai.csv")
SNPI3 <- read.csv("data_exp_77569-v3_questionnaire-qi2u.csv")
SDASS3 <- read.csv("data_exp_77569-v3_questionnaire-s3nm.csv")
SDASS4 <- read.csv("data_exp_77569-v3_questionnaire-skto.csv")
SSocMed3 <- read.csv("data_exp_77569-v3_questionnaire-uyvk.csv")
SNPI4 <- read.csv("data_exp_77569-v3_questionnaire-xtxc.csv")
SSocMed4 <- read.csv("data_exp_77569-v3_questionnaire-za32.csv")
Sfinalconsent2 <- read.csv("data_exp_77569-v3_questionnaire-zey3.csv")

setwd("/home/JJB/Documents/NORWAY/Dissertation/Results/Data")
results <- rbind(finalconsent, demographics, DASS, SocMed,
                 demographics2, consent, DASS2, SocMed2,
                 NPI, NPI2, NPI3, NPI4, DASS3, DASS4,
                 SocMed3, SocMed4, finalconsent2, Sfinalconsent,
                 Sdemographics, SDASS, SSocMed, Sdemographics2,
                 Sconsent, SDASS2, SSocMed2, SNPI, SNPI2, SNPI3, SDASS3,
                 SDASS4, SSocMed3, SNPI4, SSocMed4, Sfinalconsent2)

rm(finalconsent, demographics, DASS, SocMed,
                 demographics2, consent, DASS2, SocMed2,
                 NPI, NPI2, NPI3, NPI4, DASS3, DASS4,
                 SocMed3, SocMed4, finalconsent2, Sfinalconsent,
                 Sdemographics, SDASS, SSocMed, Sdemographics2,
                 Sconsent, SDASS2, SSocMed2, SNPI, SNPI2, SNPI3, SDASS3,
                 SDASS4, SSocMed3, SNPI4, SSocMed4, Sfinalconsent2)

results <- subset(results,Task.Name=="DASS")
results$Response <- as.numeric(results$Response)

pptlist <- unique(results$Participant.Private.ID)
DASSSummary <- data.frame(matrix(nrow=length(pptlist), ncol=4))
names(DASSSummary) <- c("id", "depression_score", "anxiety_score",
                        "stress_score" )

for (i in 1:length(pptlist)){
  currentppt = pptlist[i]
  DASSSummary[i,"id"] <- currentppt
}

