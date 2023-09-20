library(ggplot2)

# input cross, mean, & se for area 
area <- data.frame(
  Proportion_of_P2_Genome = c("0", "1.0", "0.5", "0.25", "0.75"),
  Mean = c(6.533699134, 15.87246193, 10.07699895, 12.34836014, 11.37020341),
  Error = c(0.3543070487, 2.119134833, 0.4799164276, 1.004502884, 0.7940298069),
  labels = c("P1", "P2", "F2", "BC1", "rBC2"))

# specify order of variables on x axis
area$Proportion_of_P2_Genome <- factor(area$Proportion_of_P2_Genome, levels = c("0", "0.25", "0.5", "0.75", "1.0"))

# create scatterplot for area
ggplot(area, aes(x = Proportion_of_P2_Genome, y = Mean)) +
  geom_point() +
  geom_errorbar(aes(ymin = Mean - Error, ymax = Mean + Error), width = 0.2) +
  labs(x = "Proportion of P2 Genome", y = "Mean") +
  theme_bw()+
  ggtitle("Area")+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(text = element_text(size = 20, color= "black"))+
  geom_segment(aes(x = Proportion_of_P2_Genome[1], y = Mean[1], xend = Proportion_of_P2_Genome[2], yend = Mean[2]), lty = 2)+
  geom_text(aes(label = labels), hjust = 0, nudge_x = 0.1, size = 5)
  



# input cross, mean, & se for perimeter 
perimeter <- data.frame(
  Proportion_of_P2_Genome = c("0", "1.0", "0.5", "0.25", "0.75"),
  Mean = c(10.15358106, 23.13941997, 13.11058788, 14.81769361, 17.2413835),
  Error = c(0.2463915756, 1.764763705, 0.3957232954, 0.7623885, 0.8215406456),
  labels = c("P1", "P2", "F2", "BC1", "rBC2"))

# specify order of variables on x axis
perimeter$Proportion_of_P2_Genome <- factor(perimeter$Proportion_of_P2_Genome, levels = c("0", "0.25", "0.5", "0.75", "1.0"))

# create scatterplot for perimeter
ggplot(perimeter, aes(x = Proportion_of_P2_Genome, y = Mean)) +
  geom_point() +
  geom_errorbar(aes(ymin = Mean - Error, ymax = Mean + Error), width = 0.2) +
  labs(x = "Proportion of P2 Genome", y = "Mean") +
  theme_bw()+
  ggtitle("Perimeter")+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(text = element_text(size = 20, color= 'black'))+
  geom_segment(aes(x = Proportion_of_P2_Genome[1], y = Mean[1], xend = Proportion_of_P2_Genome[2], yend = Mean[2]), lty = 2)+
  geom_text(aes(label = labels), hjust = 0, nudge_x = 0.11, nudge_y = 0.1, size = 5)


# input cross, mean, & se for RPA 
RPA <- data.frame(
  Proportion_of_P2_Genome = c("0", "1.0", "0.5", "0.25", "0.75"),
  Mean = c(1.617650199, 1.58563884, 1.328731029, 1.243467581, 1.596873715),
  Error = c(0.05678436813, 0.09525088085, 0.06108472817, 0.03952401332, 0.08196590792),
  labels = c("P1", "P2", "F2", "BC1", "rBC2"))

# specify order of variables on x axis
RPA$Proportion_of_P2_Genome <- factor(RPA$Proportion_of_P2_Genome, levels = c("0", "0.25", "0.5", "0.75", "1.0"))

# create scatterplot for RPA
ggplot(RPA, aes(x = Proportion_of_P2_Genome, y = Mean)) +
  geom_point() +
  geom_errorbar(aes(ymin = Mean - Error, ymax = Mean + Error), width = 0.2) +
  labs(x = "Proportion of P2 Genome", y = "Mean") +
  theme_bw()+
  ggtitle("Ratio of Perimeter to Area")+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(text = element_text(size = 20, color= 'black'))+
  geom_segment(aes(x = Proportion_of_P2_Genome[1], y = Mean[1], xend = Proportion_of_P2_Genome[2], yend = Mean[2]), lty = 2)+
  geom_text(aes(label = labels), hjust = 0, nudge_x = 0.1, nudge_y = 0.02, size = 5)



# input cross, mean, & se for length 
length <- data.frame(
  Proportion_of_P2_Genome = c("0", "1.0", "0.5", "0.25", "0.75"),
  Mean = c(3.207282694, 7.405447356, 4.797399879, 5.215230407, 5.804475124),
  Error = c(0.09949531454, 0.4057783646, 0.2047031112, 0.1784998337, 0.2008419189),
  labels = c("P1", "P2", "F2", "BC1", "rBC2"))

# specify order of variables on x axis
length$Proportion_of_P2_Genome <- factor(length$Proportion_of_P2_Genome, levels = c("0", "0.25", "0.5", "0.75", "1.0"))

# create scatterplot for width
ggplot(length, aes(x = Proportion_of_P2_Genome, y = Mean)) +
  geom_point() +
  geom_errorbar(aes(ymin = Mean - Error, ymax = Mean + Error), width = 0.2) +
  labs(x = "Proportion of P2 Genome", y = "Mean") +
  theme_bw()+
  ggtitle("Length")+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(text = element_text(size = 20, color= 'black'))+
  geom_segment(aes(x = Proportion_of_P2_Genome[1], y = Mean[1], xend = Proportion_of_P2_Genome[2], yend = Mean[2]), lty = 2)+
  geom_text(aes(label = labels), hjust = 0, nudge_x = 0.1, size = 5)



# input cross, mean, & se for width 
width <- data.frame(
  Proportion_of_P2_Genome = c("0", "1.0", "0.5", "0.25", "0.75"),
  Mean = c(2.723302344, 3.494440269, 3.018940253, 3.389376425, 3.043161568),
  Error = c(0.06749890438, 0.2768415185, 0.08663302733, 0.1627969767, 0.1201719855),
  labels = c("P1", "P2", "F2", "BC1", "rBC2"))

# specify order of variables on x axis
width$Proportion_of_P2_Genome <- factor(width$Proportion_of_P2_Genome, levels = c("0", "0.25", "0.5", "0.75", "1.0"))

# create scatterplot for width
ggplot(width, aes(x = Proportion_of_P2_Genome, y = Mean)) +
  geom_point() +
  geom_errorbar(aes(ymin = Mean - Error, ymax = Mean + Error), width = 0.2) +
  labs(x = "Proportion of P2 Genome", y = "Mean") +
  theme_bw()+
  ggtitle("Width")+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(text = element_text(size = 20, color= 'black'))+
  geom_segment(aes(x = Proportion_of_P2_Genome[1], y = Mean[1], xend = Proportion_of_P2_Genome[2], yend = Mean[2]), lty = 2)+
  geom_text(aes(label = labels), hjust = 0, nudge_x = 0.1, size = 5)



# input cross, mean, & se for RWL 
RWL <- data.frame(
  Proportion_of_P2_Genome = c("0", "1.0", "0.5", "0.25", "0.75"),
  Mean = c(0.8559538957, 0.4732852765, 0.638959135, 0.6417597135, 0.5255478908),
  Error = c(0.01687969226, 0.02400445764, 0.02544189235, 0.01554233064, 0.0129555724),
  labels = c("P1", "P2", "F2", "BC1", "rBC2"))

# specify order of variables on x axis
RWL$Proportion_of_P2_Genome <- factor(RWL$Proportion_of_P2_Genome, levels = c("0", "0.25", "0.5", "0.75", "1.0"))

# create scatterplot for RWL
ggplot(RWL, aes(x = Proportion_of_P2_Genome, y = Mean)) +
  geom_point() +
  geom_errorbar(aes(ymin = Mean - Error, ymax = Mean + Error), width = 0.2) +
  labs(x = "Proportion of P2 Genome", y = "Mean") +
  theme_bw()+
  ggtitle("Ratio of Width to Length")+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(text = element_text(size = 20, color= 'black'))+
  geom_segment(aes(x = Proportion_of_P2_Genome[1], y = Mean[1], xend = Proportion_of_P2_Genome[2], yend = Mean[2]), lty = 2)+
  geom_text(aes(label = labels), hjust = 0, nudge_x = 0.1, nudge_y = -0.007, size = 5)



# input cross, mean, & se for AR 
AR <- data.frame(
  Proportion_of_P2_Genome = c("0", "1.0", "0.5", "0.25", "0.75"),
  Mean = c(1.037326488, 1.077977709, 1.005760094, 1.072527783, 0.996782799),
  Error = c(0.0529456587, 0.1313908477, 0.06621789001, 0.0969596023, 0.06751460061),
  labels = c("P1", "P2", "F2", "BC1", "rBC2"))

# specify order of variables on x axis
AR$Proportion_of_P2_Genome <- factor(AR$Proportion_of_P2_Genome, levels = c("0", "0.25", "0.5", "0.75", "1.0"))

# create scatterplot for AR
ggplot(AR, aes(x = Proportion_of_P2_Genome, y = Mean)) +
  geom_point() +
  geom_errorbar(aes(ymin = Mean - Error, ymax = Mean + Error), width = 0.2) +
  labs(x = "Proportion of P2 Genome", y = "Mean") +
  theme_bw()+
  ggtitle("Areal Ratio")+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(text = element_text(size = 20, color= 'black'))+
  geom_segment(aes(x = Proportion_of_P2_Genome[1], y = Mean[1], xend = Proportion_of_P2_Genome[2], yend = Mean[2]), lty = 2)+
  geom_text(aes(label = labels), hjust = 0, nudge_x = 0.1, nudge_y = -0.01, size = 5)



# input cross, mean, & se for seed mass 
seed_mass <- data.frame(
  Proportion_of_P2_Genome = c("0", "1.0", "0.5", "0.25", "0.75"),
  Mean = c(0.4593333333, 3.76, 2.319333333, 1.556, 2.782307692),
  Error = c(0.02426964921, 0.1954725654, 0.5193030739, 0.113035182, 0.2108260732),
  labels = c("P1", "P2", "F2", "BC1", "rBC2"))

# specify order of variables on x axis
seed_mass$Proportion_of_P2_Genome <- factor(seed_mass$Proportion_of_P2_Genome, levels = c("0", "0.25", "0.5", "0.75", "1.0"))

# create scatterplot for seed mass
ggplot(seed_mass, aes(x = Proportion_of_P2_Genome, y = Mean)) +
  geom_point() +
  geom_errorbar(aes(ymin = Mean - Error, ymax = Mean + Error), width = 0.2) +
  labs(x = "Proportion of P2 Genome", y = "Mean") +
  theme_bw()+
  ggtitle("Seed Mass")+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(text = element_text(size = 20, color= 'black'))+
  geom_segment(aes(x = Proportion_of_P2_Genome[1], y = Mean[1], xend = Proportion_of_P2_Genome[2], yend = Mean[2]), lty = 2)+
  geom_text(aes(label = labels), hjust = 0, nudge_x = 0.1, nudge_y = 0.07, size = 5)

