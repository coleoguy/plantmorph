library(SAGA2)
library(viridis)

# leaf area excluding F1
dat <- read.csv("area.csv")
cmat <- as.matrix(read.csv("cmatNOF1.csv"))
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


# leaf perimeter excluding F1
dat <- read.csv("perimeter.csv")
cmat <- as.matrix(read.csv("cmatNOF1.csv"))
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


# RPA excluding F1
dat <- read.csv("RPA.csv")
cmat <- as.matrix(read.csv("cmatNOF1.csv"))
res <- LCA(dat,
           SCS="NSC",
           parental = "calc",
           env=FALSE,
           max.pars = 7, 
           ret.all=F,
           Cmatrix = cmat)
plot(res, col.ramp = viridis(100), main = "Ratio of Perimeter to Area")
res$estimates
res$varimp


# symmetry excluding F1
dat <- read.csv("AR.csv")
cmat <- as.matrix(read.csv("cmatNOF1.csv"))
res <- LCA(dat,
           SCS="NSC",
           parental = "calc",
           env=FALSE,
           max.pars = 7, 
           ret.all=F,
           Cmatrix = cmat)
plot(res, col.ramp = viridis(100), min.vi = 0.25, main = "Areal Ratio")
res$estimates
res$varimp


# length excluding F1
dat <- read.csv("length.csv")
cmat <- as.matrix(read.csv("cmatNOF1.csv"))
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


# width excluding F1
dat <- read.csv("width.csv")
cmat <- as.matrix(read.csv("cmatNOF1.csv"))
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


# roundness excluding F1
dat <- read.csv("RWL.csv")
cmat <- as.matrix(read.csv("cmatNOF1.csv"))
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


# seed weight excluding F1
dat <- read.csv("seed mass.csv")
cmat <- as.matrix(read.csv("cmatNOF1.csv"))
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
  
