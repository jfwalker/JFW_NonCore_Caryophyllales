setwd("/home/joe/Desktop/CarnivoryReanalyze/TreeStuff/LogLikelihoodComparison")
am = read.table("Inverted.txt",skip=1)
#am = read.table("CDS_Inverted.txt")
am2 = t(am)
ammn = c(1:length(am2)*0)
ammn2 = c(1:length(am2)*0)
ammn3 = c(1:length(am2)*0)
ammn4 = c(1:length(am2)*0)
for (i in 1:length(am2)){
  ammn[i] = am2[1,i]
  ammn2[i] = am2[2,i]
  ammn3[i] = ammn[i] - ammn2[i]
  ammn4[i] = ammn[i] - ammn2[i]
  if (ammn3[i] < 2 & ammn3[i] > -2){
    ammn3[i] = 0
  }else{
    
    print(i)
  }
}
gene1 = sum(ammn3[1000:5000])
ammn5 <- append(ammn5,gene1)
ammn5 <- gene1

sum(ammn2)
#how much better so 19.41931 is amb sister is this much better
sum(ammn-ammn2)

#plot ml
pdf("CDStest.pdf",h=5,w=9)
plot(ammn-ammn2,t="l",xlab = "site position",ylab="difference in log likelihood",xlim=c(0,2117583))
dev.off()
plot(cumsum(ammn3),t="l",xlab = "site position",ylab="difference in log likelihood",xlim=c(0,800000))

am = read.table("RAxML_perSiteLLs.paired_site.genes12",skip=1,row.names=1)
ammn = c(1:length(am)*0)
ammn2 = c(1:length(am)*0)
for (i in 1:length(am)){
  ammn[i] = am[1,i]
  ammn2[i] = am[2,i]
}

pdf("genes12_pairsites.pdf",h=5,w=9)
plot(ammn-ammn2,t="l",xlab = "site position",ylab="difference in log likelihood")
dev.off()

am = read.table("RAxML_perSiteLLs.TEST",skip=1,row.names=1)
ammn = c(4003:5172*0)
ammn2 = c(4003:5172*0)
for (i in 4003:5172){
  count = 1
  ammn[count] = am[1,i]
  ammn2[count] = am[2,i]
  count = count + 1
}

#how much better so 19.41931 is amb sister is this much better
sum(ammn-ammn2)

#plot ml
pdf("primates_pairsites.pdf",h=5,w=9)
plot(ammn-ammn2,t="l",xlab = "site position",ylab="difference in log likelihood")
dev.off()
