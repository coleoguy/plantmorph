# read in results file
dat <- read.csv("../results/resultsNOF1.csv")
#ref <- read.csv("ref.csv")

# function that takes in raw LCA results and returns the proportion of additive, 
# dominance, and epistatic genetic effects for each dataset
procLCA <- function(x){
  mcomp <- rep(0, 3)
  est <- x[1, 3:12] #beta coefficients
  
  # following two lines are checking if the se overlaps zero and if the variable importance
  # is greater than or equal to 0.5 for each cge. only keeping cges that meet those criteria
  est[1, ] <- abs(est[1,]) #taking the absolute value of beta coefficients - keep the abs for later
  magcheck <- est[1, ] > x[2, 3:12] #is the beta coeff larger than the se? if so, keep that cge
  vicheck <- x[3,3:12] >= .5 #is the variable importance above 0.5? if so, keep that cge
  
  cge <- colnames(est)[magcheck & vicheck]
  cge.est <- est[1, ][magcheck & vicheck]
  
  # identifying possible cges for each type of genetic effects
  additive <- c("Aa", "Ca", "Mea", "Xa", "Ya","Ma")    
  dominance <- c("Ad", "Med", "Xd", "Md")   
  epistatic <- c("AaXa", "AaXd", "AdXd", "XaXd", "XdXd", "XdCa", "AaYa",
                 "AaAa", "AaAd", "AaCa", "AdAd", "AdXa", "AdYa", "XaYa", 
                 "YaCa", "XaXa", "XaCa", "AdCa", "XaAa", "XaAd", "CaXa", 
                 "CaYa", "CaXd", "AaWa") 
  
  #taking the sum of the cges that go into each category (add, dom, epi)
  mcomp[1] <- sum(cge.est[cge %in% additive])
  mcomp[2] <- sum(cge.est[cge %in% dominance])
  mcomp[3] <- sum(cge.est[cge %in% epistatic])
  
  #scale and sum the components to one
  names(mcomp) <- c("add","dom", "epi")
  mcomp <- mcomp/sum(mcomp)
  return(mcomp)
}
# loop that completes procLCA function on result file
final.results <- as.data.frame(matrix(NA, 1,4))
colnames(final.results) <- c("add","dom","epi","file")

# add counter for which row to put results in 
counter<-1
for(i in seq(from=1, by=3, length.out=(nrow(dat)/3))){
  curdat <- dat[i:(i+2),]
  final.results[counter, 1:3] <- procLCA(curdat) #add, dom, epi component for each dataset
  final.results[counter, 4] <- dat$file[i] #file name
  counter <- counter + 1
}

# saving final.results as a csv to desktop 
directory <-getwd()
directory
write.csv(final.results, "../results/final.resultsNOF1.csv")
