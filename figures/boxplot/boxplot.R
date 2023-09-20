library(ggplot2)
library(viridis)

#Area: 
  #Specify variables and values. Then, make data frame.
Genetic_Effect<-c("Ca", "AaAa")
Mean_Weighted_Average<-c(-3.12009146, 3.763220758)
SE <- c(2.137660522, 3.010596063)
Variable_Importance <- c(0.6795377888, 0.6051820279)
area<-data.frame(Genetic_Effect, Mean_Weighted_Average, SE, Variable_Importance)

  #Specify order of variables on x-axis
area$Genetic_Effect <- factor(area$Genetic_Effect, levels = c("Ca", "AaAa"))

  #Create plot 
ggplot(area) +
geom_bar(aes(x= Genetic_Effect, y= Mean_Weighted_Average, fill = Variable_Importance, width = 0.6), stat="identity") +
  scale_fill_viridis_c(limits = c(0, 1))+
  labs(x = "Genetic Effect", y = "Mean Weighted Average", fill = "Variable Importance")+
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
  geom_errorbar(aes(x=Genetic_Effect, y=Mean_Weighted_Average, ymin=Mean_Weighted_Average-SE, ymax=Mean_Weighted_Average+SE), width = 0.3)


#Perimeter:
  #Specify variables and values. Then, make data frame.
Genetic_Effect<-c("Mea")
Mean_Weighted_Average<-c(-2.749762695)
SE <- c(1.775956791)
Variable_Importance <- c(0.6995287738)
perimeter<-data.frame(Genetic_Effect, Mean_Weighted_Average, SE, Variable_Importance)

  #Specify order of variables on x-axis
perimeter$Genetic_Effect <- factor(perimeter$Genetic_Effect, levels = c("Mea"))

  #Create plot 
ggplot(perimeter) +
  geom_bar(aes(x= Genetic_Effect, y= Mean_Weighted_Average, fill = Variable_Importance, width = 0.3), stat="identity") +
  scale_fill_viridis_c(limits = c(0, 1))+
  labs(x = "Genetic Effect", y = "Mean Weighted Average", fill = "Variable Importance")+
  ggtitle("Perimeter")+
  theme_bw() +
  theme(axis.line = element_line(color='black'),
        plot.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(text = element_text(size = 15))+
  theme(axis.text.x = element_text(size=15),
        axis.text.y = element_text(size=15))+
  geom_errorbar(aes(x=Genetic_Effect, y=Mean_Weighted_Average, ymin=Mean_Weighted_Average-SE, ymax=Mean_Weighted_Average+SE), width = 0.15)


#RPA:
  #Specify variables and values. Then, make data frame.
Genetic_Effect<-c("Med", "AaAa", "AaAd")
Mean_Weighted_Average<-c(-0.1369568431, 0.1139389397, -0.2905845854)
SE <- c(0.1597133909, 0.1322238196, 0.3326448158)
Variable_Importance <- c(0.4258123519, 0.4073400531, 0.4254085692)
RPA<-data.frame(Genetic_Effect, Mean_Weighted_Average, SE, Variable_Importance)

  #Specify order of variables on x-axis
RPA$Genetic_Effect <- factor(RPA$Genetic_Effect, levels = c("Med", "AaAa", "AaAd"))

  #Create plot 
ggplot(RPA) +
  geom_bar(aes(x= Genetic_Effect, y= Mean_Weighted_Average, fill = Variable_Importance, width = 0.9), stat="identity") +
  scale_fill_viridis_c(limits = c(0, 1))+
  labs(x = "Genetic Effect", y = "Mean Weighted Average", fill = "Variable Importance")+
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
  geom_errorbar(aes(x=Genetic_Effect, y=Mean_Weighted_Average, ymin=Mean_Weighted_Average-SE, ymax=Mean_Weighted_Average+SE), width = 0.45)


#Length: 
  #Specify variables and values. Then, make data frame.
Genetic_Effect<-c("Mea")
Mean_Weighted_Average<-c(-0.9365666972)
SE <- c(0.7456486838)
Variable_Importance <- c(0.6063269547)
length<-data.frame(Genetic_Effect, Mean_Weighted_Average, SE, Variable_Importance)

  #Specify order of variables on x-axis
length$Genetic_Effect <- factor(length$Genetic_Effect, levels = c("Mea"))

  #Create plot 
ggplot(length) +
  geom_bar(aes(x= Genetic_Effect, y= Mean_Weighted_Average, fill = Variable_Importance, width = 0.3), stat="identity") +
  scale_fill_viridis_c(limits = c(0, 1))+
  labs(x = "Genetic Effect", y = "Mean Weighted Average", fill = "Variable Importance")+
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
  geom_errorbar(aes(x=Genetic_Effect, y=Mean_Weighted_Average, ymin=Mean_Weighted_Average-SE, ymax=Mean_Weighted_Average+SE), width = 0.15)


#Width: 
  #Specify variables and values. Then, make data frame.
Genetic_Effect<-c("Mea", "AaAd")
Mean_Weighted_Average<-c(-0.3713522713, 0.9453393414)
SE <- c(0.02767403819, 0.6751031126)
Variable_Importance <- c(0.9515685789, 0.6226347398)
width<-data.frame(Genetic_Effect, Mean_Weighted_Average, SE, Variable_Importance)

  #Specify order of variables on x-axis
width$Genetic_Effect <- factor(width$Genetic_Effect, levels = c("Mea", "AaAd"))

  #Create plot 
ggplot(width) +
  geom_bar(aes(x= Genetic_Effect, y= Mean_Weighted_Average, fill = Variable_Importance, width = 0.6), stat="identity") +
  scale_fill_viridis_c(limits = c(0, 1))+
  labs(x = "Genetic Effect", y = "Mean Weighted Average", fill = "Variable Importance")+
  ggtitle("Width")+
  theme_bw() +
  theme(axis.line = element_line(color='black'),
        plot.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(text = element_text(size = 15))+
  theme(axis.text.x = element_text(size=15),
        axis.text.y = element_text(size=15))+
  geom_errorbar(aes(x=Genetic_Effect, y=Mean_Weighted_Average, ymin=Mean_Weighted_Average-SE, ymax=Mean_Weighted_Average+SE), width = 0.3)



#RWL:
  #Specify variables and values. Then, make data frame.
Genetic_Effect<-c("Mea")
Mean_Weighted_Average<-c(0.1250522035)
SE <- c(0.06355705333)
Variable_Importance <- c(0.7580060029)
RWL<-data.frame(Genetic_Effect, Mean_Weighted_Average, SE, Variable_Importance)

  #Specify order of variables on x-axis
RWL$Genetic_Effect <- factor(RWL$Genetic_Effect, levels = c("Mea"))

  #Create plot 
ggplot(RWL) +
  geom_bar(aes(x= Genetic_Effect, y= Mean_Weighted_Average, fill = Variable_Importance, width = 0.3), stat="identity") +
  scale_fill_viridis_c(limits = c(0, 1))+
  labs(x = "Genetic Effect", y = "Mean Weighted Average", fill = "Variable Importance")+
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
  geom_errorbar(aes(x=Genetic_Effect, y=Mean_Weighted_Average, ymin=Mean_Weighted_Average-SE, ymax=Mean_Weighted_Average+SE), width = 0.15)


#AR:
  #Specify variables and values. Then, make data frame.
Genetic_Effect<-c("AaAd")
Mean_Weighted_Average<-c(0.05979572867)
SE <- c(0.08175415085)
Variable_Importance <- c(0.3983201134)
AR<-data.frame(Genetic_Effect, Mean_Weighted_Average, SE, Variable_Importance)

  #Specify order of variables on x-axis
AR$Genetic_Effect <- factor(AR$Genetic_Effect, levels = c("AaAd"))

  #Create plot 
ggplot(AR) +
  geom_bar(aes(x= Genetic_Effect, y= Mean_Weighted_Average, fill = Variable_Importance, width = 0.3), stat="identity") +
  scale_fill_viridis_c(limits = c(0, 1))+
  labs(x = "Genetic Effect", y = "Mean Weighted Average", fill = "Variable Importance")+
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
  geom_errorbar(aes(x=Genetic_Effect, y=Mean_Weighted_Average, ymin=Mean_Weighted_Average-SE, ymax=Mean_Weighted_Average+SE), width = 0.15)


#Seed Mass:
  #Specify variables and values. Then, make data frame.
Genetic_Effect<-c("Aa", "Med", "AaAa")
Mean_Weighted_Average<-c(-1.652503735, 0.3208793727, 0.1400274373)
SE <- c(0.01512187671, 0.1445135661, 0.08820070106)
Variable_Importance <- c(0.9900424384, 0.7567851078, 0.6571039417)
seed_mass<-data.frame(Genetic_Effect, Mean_Weighted_Average, SE, Variable_Importance)

  #Specify order of variables on x-axis
seed_mass$Genetic_Effect <- factor(seed_mass$Genetic_Effect, levels = c("Aa", "Med", "AaAa"))

  #Create plot 
ggplot(seed_mass) +
  geom_bar(aes(x= Genetic_Effect, y= Mean_Weighted_Average, fill = Variable_Importance, width = 0.9), stat="identity") +
  scale_fill_viridis_c(limits = c(0, 1))+
  labs(x = "Genetic Effect", y = "Mean Weighted Average", fill = "Variable Importance")+
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
  geom_errorbar(aes(x=Genetic_Effect, y=Mean_Weighted_Average, ymin=Mean_Weighted_Average-SE, ymax=Mean_Weighted_Average+SE), width = 0.45)

