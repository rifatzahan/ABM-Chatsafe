library(foreign)
library(ggplot2)
library(hrbrthemes)

EffectsAxBData <- read.csv("EffectsAxBData.csv", header = T)

pAxB <- ggplot(EffectsAxBData, aes(x = `Chatsafe.SC.reduction`, 
                                      y = `Fraction.of.deaths.reduced.from.Baseline`, 
                                      colour = factor(`Influenced.by.Chatsafe`),
                                      group = factor(`Influenced.by.Chatsafe`)
)
) + 
  geom_line() + 
  geom_point() + 
  facet_wrap(~ EffectsAxBData$Scaling.Coefficient, ncol = 2) +
  theme_bw() +
  labs(title="",
       x ="Reduction in Scaling coefficient of probability of re-sharing attempt news due to #chatsafe", 
       y = "Fraction reduction in the # of deaths from Baseline (no #Chatsafe)"
  ) +
  labs(color='') 


pAxB




EffectsAxBxCData <- read.csv("EffectsAxBxCData.csv", header = T)

pAxBxC <- ggplot(EffectsAxBxCData, aes(x = `Chatsafe.SC.reduction`, 
                                       y = `Fraction.of.deaths.reduced.from.Baseline`, 
                                       colour = factor(`Influenced.by.Chatsafe`),
                                       group = factor(`Influenced.by.Chatsafe`)
)
) + 
  geom_line() + 
  geom_point() + 
  facet_wrap(~ EffectsAxBxCData$Scaling.Coefficient, ncol = 2) +
  theme_bw() +
  labs(title="",
       x ="Reduction in Scaling coefficient of probability of re-sharing attempt news due to #chatsafe", 
       y = "Fraction reduction in the # of deaths from Baseline (no #Chatsafe)"
  ) +
  labs(color='') 


pAxBxC

EffectsAxBxDData <- read.csv("EffectsAxBxDData.csv", header = T)


pAxBxD <- ggplot(EffectsAxBxDData, aes(x = `Chatsafe.SC.reduction`, 
                                       y = `Fraction.of.deaths.reduced.from.Baseline`, 
                                       colour = factor(`Influenced.by.Chatsafe`),
                                       group = factor(`Influenced.by.Chatsafe`)
)
) + 
  geom_line() + 
  geom_point() + 
  facet_wrap(~ EffectsAxBxDData$Scaling.Coefficient, ncol = 2) +
  theme_bw() +
  labs(title="",
       x ="Reduction in Scaling coefficient of probability of re-sharing attempt news due to #chatsafe", 
       y = "Fraction reduction in the # of deaths from Baseline (no #Chatsafe)"
  ) +
  labs(color='') 


pAxBxD



EffectsAxBxEData <- read.csv("EffectsAxBxEData.csv", header = T)

pAxBxE <- ggplot(EffectsAxBxEData, aes(x = `Chatsafe.SC.reduction`, 
                                       y = `Fraction.of.deaths.reduced.from.Baseline`, 
                                       colour = factor(`Influenced.by.Chatsafe`),
                                       group = factor(`Influenced.by.Chatsafe`)
)
) + 
  geom_line() + 
  geom_point() + 
  facet_wrap(~ EffectsAxBxEData$Scaling.Coefficient, ncol = 2) +
  theme_bw() +
  labs(title="",
       x ="Reduction in Scaling coefficient of probability of re-sharing attempt news due to #chatsafe", 
       y = "Fraction reduction in the # of deaths from Baseline (no #Chatsafe)"
  ) +
  labs(color='') 


pAxBxE

df <- as.data.frame(rbind(EffectsAxBData, EffectsAxBxCData, EffectsAxBxDData, EffectsAxBxEData))
# colnames(df)[1] <- "new_col"


p <- ggplot(df, aes(x = `Chatsafe.SC.reduction`, 
                    y = `Fraction.of.deaths.reduced.from.Baseline`, 
                    colour = factor(`Influenced.by.Chatsafe`),
                    group = factor(`Influenced.by.Chatsafe`)
)
) + 
  geom_line() + 
  geom_point() + 
  facet_grid(df$Effects ~ df$Scaling.Coefficient, scales = "free_x") +
  theme(strip.placement = "outside", 
        strip.text = element_text(size = 10),
        axis.text = element_text(size = 10, angle = 30),
        axis.title = element_text(size = 10)
        ) +
  labs(title="",
       x ="Reduction in Scaling coefficient of probability of re-sharing attempt news due to #chatsafe", 
       y = "Fraction reduction in the # of deaths from Baseline (no #Chatsafe)"
  ) +
  labs(color='') 

p
