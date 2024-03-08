library(ggplot2)
library(viridis)

#Area: 
  #Specify variables and values. Then, make data frame.
Genetic_Effect<-c("Ca", "AaAa")
Model_Weighted_Average<-c(-5.07390824394398, 6.71508423776777)
SE <- c(0.190304678437209, 0.457132985379296)
Variable_Importance <- c(0.996129631289555, 0.994067692445289)
area<-data.frame(Genetic_Effect, Model_Weighted_Average, SE, Variable_Importance)

  #Specify order of variables on x-axis
area$Genetic_Effect <- factor(area$Genetic_Effect, levels = c("Ca", "AaAa"))

  #Create plot 
ggplot(area) +
geom_bar(aes(x= Genetic_Effect, y= Model_Weighted_Average, fill = Variable_Importance, width = 0.6), stat="identity") +
  scale_fill_viridis_c(limits = c(0, 1))+
  labs(x = "Genetic Effect", y = "Model Weighted Average", fill = "Variable Importance")+
  ggtitle("Area")+
  theme_bw() +
  theme(axis.line = element_line(color='black'),
        plot.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(text = element_text(size = 15))+
  theme(axis.text.x = element_text(size=15),
        axis.text.y = element_text(size=15))+
  geom_errorbar(aes(x=Genetic_Effect, y=Model_Weighted_Average, ymin=Model_Weighted_Average-SE, ymax=Model_Weighted_Average+SE), width = 0.3) +
  geom_hline(yintercept = 0, linetype = "dotted")


#Perimeter:
  #Specify variables and values. Then, make data frame.
Genetic_Effect<-c("Ca", "AaAa", "AaAd")
Model_Weighted_Average<-c(-6.53649027058263, 9.83392766727657, -6.68867396957119)
SE <- c(0.0177173016063826, 0.0423997847313664, 0.0561067693449913)
Variable_Importance <- c(0.980174705758085, 0.979885975453766, 0.979533768976558)
perimeter<-data.frame(Genetic_Effect, Model_Weighted_Average, SE, Variable_Importance)

  #Specify order of variables on x-axis
perimeter$Genetic_Effect <- factor(perimeter$Genetic_Effect, levels = c("Ca", "AaAa", "AaAd"))

  #Create plot 
ggplot(perimeter) +
  geom_bar(aes(x= Genetic_Effect, y= Model_Weighted_Average, fill = Variable_Importance, width = 0.9), stat="identity") +
  scale_fill_viridis_c(limits = c(0, 1))+
  labs(x = "Genetic Effect", y = "Model Weighted Average", fill = "Variable Importance")+
  ggtitle("Perimeter")+
  theme_bw() +
  theme(axis.line = element_line(color='black'),
        plot.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(text = element_text(size = 15))+
  theme(axis.text.x = element_text(size=13),
        axis.text.y = element_text(size=15))+
  geom_errorbar(aes(x=Genetic_Effect, y=Model_Weighted_Average, ymin=Model_Weighted_Average-SE, ymax=Model_Weighted_Average+SE, width = 0.45))+
  geom_hline(yintercept = 0, linetype = "dotted")


#RPA:
  #Specify variables and values. Then, make data frame.
Genetic_Effect<-c("AaAd")
Model_Weighted_Average<-c(-0.403008433600262)
SE <- c(0.333646856344577)
Variable_Importance <- c(0.587160847257714)
RPA<-data.frame(Genetic_Effect, Model_Weighted_Average, SE, Variable_Importance)

  #Specify order of variables on x-axis
RPA$Genetic_Effect <- factor(RPA$Genetic_Effect, levels = c("AaAd"))

  #Create plot 
ggplot(RPA) +
  geom_bar(aes(x= Genetic_Effect, y= Model_Weighted_Average, fill = Variable_Importance, width = 0.3), stat="identity") +
  scale_fill_viridis_c(limits = c(0, 1))+
  labs(x = "Genetic Effect", y = "Model Weighted Average", fill = "Variable Importance")+
  ggtitle("Ratio of Perimeter to Area")+
  theme_bw() +
  theme(axis.line = element_line(color='black'),
        plot.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(text = element_text(size = 15))+
  theme(axis.text.x = element_text(size=15),
        axis.text.y = element_text(size=15))+
  geom_errorbar(aes(x=Genetic_Effect, y=Model_Weighted_Average, ymin=Model_Weighted_Average-SE, ymax=Model_Weighted_Average+SE), width = 0.15)+
  geom_hline(yintercept = 0, linetype = "dotted")


#Length: 
  #Specify variables and values. Then, make data frame.
Genetic_Effect<-c("Aa")
Model_Weighted_Average<-c(-1.41400501208421)
SE <- c(0.901582066652321)
Variable_Importance <- c(0.685609019184249)
length<-data.frame(Genetic_Effect, Model_Weighted_Average, SE, Variable_Importance)

  #Specify order of variables on x-axis
length$Genetic_Effect <- factor(length$Genetic_Effect, levels = c("Aa"))

  #Create plot 
ggplot(length) +
  geom_bar(aes(x= Genetic_Effect, y= Model_Weighted_Average, fill = Variable_Importance, width = 0.3), stat="identity") +
  scale_fill_viridis_c(limits = c(0, 1))+
  labs(x = "Genetic Effect", y = "Model Weighted Average", fill = "Variable Importance")+
  ggtitle("Length")+
  theme_bw() +
  theme(axis.line = element_line(color='black'),
        plot.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(text = element_text(size = 15))+
  theme(axis.text.x = element_text(size=15),
        axis.text.y = element_text(size=15))+
  geom_errorbar(aes(x=Genetic_Effect, y=Model_Weighted_Average, ymin=Model_Weighted_Average-SE, ymax=Model_Weighted_Average+SE), width = 0.15)+
  geom_hline(yintercept = 0, linetype = "dotted")


#Width: 
  #Specify variables and values. Then, make data frame.
Genetic_Effect<-c("Mea", "AaAd")
Model_Weighted_Average<-c(-0.441989828321209, 0.761073656070445)
SE <- c(0.000160411680135943, 0.652349114080603)
Variable_Importance <- c(0.999999978865205, 0.5714285587473)
width<-data.frame(Genetic_Effect, Model_Weighted_Average, SE, Variable_Importance)

  #Specify order of variables on x-axis
width$Genetic_Effect <- factor(width$Genetic_Effect, levels = c("Mea", "AaAd"))

  #Create plot 
ggplot(width) +
  geom_bar(aes(x= Genetic_Effect, y= Model_Weighted_Average, fill = Variable_Importance, width = 0.6), stat="identity") +
  scale_fill_viridis_c(limits = c(0, 1))+
  labs(x = "Genetic Effect", y = "Model Weighted Average", fill = "Variable Importance")+
  ggtitle("Width")+
  theme_bw() +
  theme(axis.line = element_line(color='black'),
        plot.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(text = element_text(size = 15))+
  theme(axis.text.x = element_text(size=12),
        axis.text.y = element_text(size=15))+
  geom_errorbar(aes(x=Genetic_Effect, y=Model_Weighted_Average, ymin=Model_Weighted_Average-SE, ymax=Model_Weighted_Average+SE), width = 0.3)+
  geom_hline(yintercept = 0, linetype = "dotted")



#RWL:
  #Specify variables and values. Then, make data frame.
Genetic_Effect<-c("Aa", "Ca")
Model_Weighted_Average<-c(0.0983503081515926, 0.0854515062721672)
SE <- c(0.0721171671523961, 0.0692571863416293)
Variable_Importance <- c(0.632449162926565, 0.628934731371935)
RWL<-data.frame(Genetic_Effect, Model_Weighted_Average, SE, Variable_Importance)

  #Specify order of variables on x-axis
RWL$Genetic_Effect <- factor(RWL$Genetic_Effect, levels = c("Aa", "Ca"))

  #Create plot 
ggplot(RWL) +
  geom_bar(aes(x= Genetic_Effect, y= Model_Weighted_Average, fill = Variable_Importance, width = 0.6), stat="identity") +
  scale_fill_viridis_c(limits = c(0, 1))+
  labs(x = "Genetic Effect", y = "Model Weighted Average", fill = "Variable Importance")+
  ggtitle("Ratio of Width to Length")+
  theme_bw() +
  theme(axis.line = element_line(color='black'),
        plot.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(text = element_text(size = 15))+
  theme(axis.text.x = element_text(size=15),
        axis.text.y = element_text(size=15))+
  geom_errorbar(aes(x=Genetic_Effect, y=Model_Weighted_Average, ymin=Model_Weighted_Average-SE, ymax=Model_Weighted_Average+SE), width = 0.3)+
  geom_hline(yintercept = 0, linetype = "dotted")


#AR:
  #Specify variables and values. Then, make data frame.
Genetic_Effect<-c("AaAa")
Model_Weighted_Average<-c(0.0192488764686584)
SE <- c(0.0324190628833856)
Variable_Importance <- c(0.259080329401834)
AR<-data.frame(Genetic_Effect, Model_Weighted_Average, SE, Variable_Importance)

  #Specify order of variables on x-axis
AR$Genetic_Effect <- factor(AR$Genetic_Effect, levels = c("AaAa"))

  #Create plot 
ggplot(AR) +
  geom_bar(aes(x= Genetic_Effect, y= Model_Weighted_Average, fill = Variable_Importance, width = 0.3), stat="identity") +
  scale_fill_viridis_c(limits = c(0, 1))+
  labs(x = "Genetic Effect", y = "Model Weighted Average", fill = "Variable Importance")+
  ggtitle("Areal Ratio")+
  theme_bw() +
  theme(axis.line = element_line(color='black'),
        plot.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(text = element_text(size = 15))+
  theme(axis.text.x = element_text(size=15),
        axis.text.y = element_text(size=15))+
  geom_errorbar(aes(x=Genetic_Effect, y=Model_Weighted_Average, ymin=Model_Weighted_Average-SE, ymax=Model_Weighted_Average+SE), width = 0.15)+
  geom_hline(yintercept = 0, linetype = "dotted")


#Seed Mass:
  #Specify variables and values. Then, make data frame.
Genetic_Effect<-c("Aa", "Med", "AaAa")
Model_Weighted_Average<-c(-1.652503735, 0.3208793727, 0.1400274373)
SE <- c(0.01512187671, 0.1445135661, 0.08820070106)
Variable_Importance <- c(0.9900424384, 0.7567851078, 0.6571039417)
seed_mass<-data.frame(Genetic_Effect, Model_Weighted_Average, SE, Variable_Importance)

  #Specify order of variables on x-axis
seed_mass$Genetic_Effect <- factor(seed_mass$Genetic_Effect, levels = c("Aa", "Med", "AaAa"))

  #Create plot 
ggplot(seed_mass) +
  geom_bar(aes(x= Genetic_Effect, y= Model_Weighted_Average, fill = Variable_Importance, width = 0.9), stat="identity") +
  scale_fill_viridis_c(limits = c(0, 1))+
  labs(x = "Genetic Effect", y = "Model Weighted Average", fill = "Variable Importance")+
  ggtitle("Seed Mass")+
  theme_bw() +
  theme(axis.line = element_line(color='black'),
        plot.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(text = element_text(size = 15))+
  theme(axis.text.x = element_text(size=15),
        axis.text.y = element_text(size=15))+
  geom_errorbar(aes(x=Genetic_Effect, y=Model_Weighted_Average, ymin=Model_Weighted_Average-SE, ymax=Model_Weighted_Average+SE), width = 0.45)+
  geom_hline(yintercept = 0, linetype = "dotted")

