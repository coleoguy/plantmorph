library(SAGA2)
library(viridis)

# leaf area
dat <- read.csv("../data/datasets/area.csv")
cmat <- as.matrix(read.csv("../data/cmat/cmatNOF1.csv"))
res <- LCA(dat,
           SCS="NSC",
           parental = "calc",
           env=FALSE,
           max.pars = 7, 
           ret.all=F,
           Cmatrix = cmat)
plot(res, col.ramp = viridis(100), main = "Area")
res$estimates
res$varimp


# leaf perimeter
dat <- read.csv("../data/datasets/perimeter.csv")
cmat <- as.matrix(read.csv("../data/cmat/cmatNOF1.csv"))
res <- LCA(dat,
           SCS="NSC",
           parental = "calc",
           env=FALSE,
           max.pars = 7, 
           ret.all=F,
           Cmatrix = cmat)
plot(res, col.ramp = viridis(100), main = "Perimeter")
res$estimates
res$varimp


# ratio of leaf perimeter to leaf area
dat <- read.csv("../data/datasets/RPA.csv")
cmat <- as.matrix(read.csv("../data/cmat/cmatNOF1.csv"))
res <- LCA(dat,
           SCS="NSC",
           parental = "calc",
           env=FALSE,
           max.pars = 7, 
           ret.all=F,
           Cmatrix = cmat)
plot(res, col.ramp = viridis(100), min.vi = 0.35, main = "Ratio of Perimeter to Area")
res$estimates
res$varimp


# areal ratio 
dat <- read.csv("../data/datasets/arealratio.csv")
cmat <- as.matrix(read.csv("../data/cmat/cmatNOF1.csv"))
res <- LCA(dat,
           SCS="NSC",
           parental = "calc",
           env=FALSE,
           max.pars = 7, 
           ret.all=F,
           Cmatrix = cmat)
plot(res, col.ramp = viridis(100), min.vi = 0.35, main = "Areal Ratio")
res$estimates
res$varimp


# leaf length
dat <- read.csv("../data/datasets/length.csv")
cmat <- as.matrix(read.csv("../data/cmat/cmatNOF1.csv"))
res <- LCA(dat,
           SCS="NSC",
           parental = "calc",
           env=FALSE,
           max.pars = 7, 
           ret.all=F,
           Cmatrix = cmat)
plot(res, col.ramp = viridis(100), main = "Length")
res$estimates
res$varimp


# leaf width
dat <- read.csv("../data/datasets/width.csv")
cmat <- as.matrix(read.csv("../data/cmat/cmatNOF1.csv"))
res <- LCA(dat,
           SCS="NSC",
           parental = "calc",
           env=FALSE,
           max.pars = 7, 
           ret.all=F,
           Cmatrix = cmat)
plot(res, col.ramp = viridis(100), main = "Width")
res$estimates
res$varimp


# leaf roundness
dat <- read.csv("../data/datasets/RWL.csv")
cmat <- as.matrix(read.csv("../data/cmat/cmatNOF1.csv"))
res <- LCA(dat,
           SCS="NSC",
           parental = "calc",
           env=FALSE,
           max.pars = 7, 
           ret.all=F,
           Cmatrix = cmat)
plot(res, col.ramp = viridis(100), main = "Ratio of Width to Length")
res$estimates
res$varimp


# seed weight
dat <- read.csv("../data/datasets/seedmass.csv")
cmat <- as.matrix(read.csv("../data/cmat/cmatNOF1.csv"))
res <- LCA(dat,
           SCS="NSC",
           parental = "calc",
           env=FALSE,
           max.pars = 7, 
           ret.all=F,
           Cmatrix = cmat)
plot(res, col.ramp = viridis(100), main = "Seed Mass")
res$estimates
res$varimp
  
