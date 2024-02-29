library(ggplot2)

# input cross, mean, & se for area 
area <- data.frame(
  Cross = c("P1", "P2", "F2", "BC1", "rBC2"),
  Mean = c(6.533699134, 15.87246193, 10.07699895, 12.34836014, 11.37020341),
  Error = c(0.3543070487, 2.119134833, 0.4799164276, 1.004502884, 0.7940298069))

# specify order of variables on x axis
area$Cross <- factor(area$Cross, levels = c("P1", "P2", "F2", "BC1", "rBC2"))

# create scatterplot for area
ggplot(area, aes(x = Cross, y = Mean)) +
  geom_point() +
  geom_errorbar(aes(ymin = Mean - Error, ymax = Mean + Error), width = 0.2) +
  labs(x = "Cross", y = "Mean") +
  theme_bw()+
  ggtitle("Area")+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(text = element_text(size = 15))
  



# input cross, mean, & se for perimeter 
perimeter <- data.frame(
  Cross = c("P1", "P2", "F2", "BC1", "rBC2"),
  Mean = c(10.15358106, 23.13941997, 13.11058788, 14.81769361, 17.2413835),
  Error = c(0.2463915756, 1.764763705, 0.3957232954, 0.7623885, 0.8215406456))

# specify order of variables on x axis
perimeter$Cross <- factor(perimeter$Cross, levels = c("P1", "P2", "F2", "BC1", "rBC2"))

# create scatterplot for perimeter
ggplot(perimeter, aes(x = Cross, y = Mean)) +
  geom_point() +
  geom_errorbar(aes(ymin = Mean - Error, ymax = Mean + Error), width = 0.2) +
  labs(x = "Cross", y = "Mean") +
  theme_bw()+
  ggtitle("Perimeter")+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(text = element_text(size = 15))



# input cross, mean, & se for RPA 
RPA <- data.frame(
  Cross = c("P1", "P2", "F2", "BC1", "rBC2"),
  Mean = c(1.617650199, 1.58563884, 1.328731029, 1.243467581, 1.596873715),
  Error = c(0.05678436813, 0.09525088085, 0.06108472817, 0.03952401332, 0.08196590792))

# specify order of variables on x axis
RPA$Cross <- factor(RPA$Cross, levels = c("P1", "P2", "F2", "BC1", "rBC2"))

# create scatterplot for RPA
ggplot(RPA, aes(x = Cross, y = Mean)) +
  geom_point() +
  geom_errorbar(aes(ymin = Mean - Error, ymax = Mean + Error), width = 0.2) +
  labs(x = "Cross", y = "Mean") +
  theme_bw()+
  ggtitle("RPA")+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(text = element_text(size = 15))



# input cross, mean, & se for RWL 
RWL <- data.frame(
  Cross = c("P1", "P2", "F2", "BC1", "rBC2"),
  Mean = c(0.8559538957, 0.4732852765, 0.638959135, 0.6417597135, 0.5255478908),
  Error = c(0.01687969226, 0.02400445764, 0.02544189235, 0.01554233064, 0.0129555724))

# specify order of variables on x axis
RWL$Cross <- factor(RWL$Cross, levels = c("P1", "P2", "F2", "BC1", "rBC2"))

# create scatterplot for RWL
ggplot(RWL, aes(x = Cross, y = Mean)) +
  geom_point() +
  geom_errorbar(aes(ymin = Mean - Error, ymax = Mean + Error), width = 0.2) +
  labs(x = "Cross", y = "Mean") +
  theme_bw()+
  ggtitle("RWL")+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(text = element_text(size = 15))



# input cross, mean, & se for AR 
AR <- data.frame(
  Cross = c("P1", "P2", "F2", "BC1", "rBC2"),
  Mean = c(1.037326488, 1.077977709, 1.005760094, 1.072527783, 0.996782799),
  Error = c(0.0529456587, 0.1313908477, 0.06621789001, 0.0969596023, 0.06751460061))

# specify order of variables on x axis
AR$Cross <- factor(AR$Cross, levels = c("P1", "P2", "F2", "BC1", "rBC2"))

# create scatterplot for AR
ggplot(AR, aes(x = Cross, y = Mean)) +
  geom_point() +
  geom_errorbar(aes(ymin = Mean - Error, ymax = Mean + Error), width = 0.2) +
  labs(x = "Cross", y = "Mean") +
  theme_bw()+
  ggtitle("AR")+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(text = element_text(size = 15))



# input cross, mean, & se for seed mass 
seed_mass <- data.frame(
  Cross = c("P1", "P2", "F2", "BC1", "rBC2"),
  Mean = c(0.4593333333, 3.76, 2.319333333, 1.556, 2.782307692),
  Error = c(0.02426964921, 0.1954725654, 0.5193030739, 0.113035182, 0.2108260732))

# specify order of variables on x axis
seed_mass$Cross <- factor(seed_mass$Cross, levels = c("P1", "P2", "F2", "BC1", "rBC2"))

# create scatterplot for seed mass
ggplot(seed_mass, aes(x = Cross, y = Mean)) +
  geom_point() +
  geom_errorbar(aes(ymin = Mean - Error, ymax = Mean + Error), width = 0.2) +
  labs(x = "Cross", y = "Mean") +
  theme_bw()+
  ggtitle("Seed Mass")+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(text = element_text(size = 15))

