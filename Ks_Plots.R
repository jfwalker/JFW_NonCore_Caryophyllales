setwd("/home/joe/Desktop/CarnivoryReanalyze/ks_plots")
a<-read.table('DrolusSFB.ks.ng')
hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,500),main='Drosophyllaceae Drosophyllum lusitanicum',axes=TRUE)
hist(a[,1],breaks=60,col='grey',xlab='',ylab='',ylim = c(0,500),main='',axes=FALSE)
a<-read.table('Beta.ks.ng')
hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,500),main='Amaranthaceae Beta vulgaris',axes=TRUE)
hist(a[,1],breaks=60,col='grey',xlab='',ylab='',ylim = c(0,500),main='',axes=FALSE)

a<-read.table('Dino.ks.ng')
hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,1000),main='Droseraceae Dionaea muscipula',axes=TRUE)
hist(a[,1],breaks=60,col='grey',xlab='',ylab='',ylim = c(0,1000),main='',axes=FALSE)

a<-read.table('DrobinSFB.ks.ng')
hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,500),main='Droseraceae Drosera binata',axes=TRUE)
hist(a[,1],breaks=60,col='grey',xlab='',ylab='',ylim = c(0,500),main='',axes=FALSE)

a<-read.table('MJM1652.ks.ng')
hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,500),main='Droseraceae Aldrovanda vesiculosa',axes=TRUE)
hist(a[,1],breaks=60,col='grey',xlab='',ylab='',ylim = c(0,500),main='',axes=FALSE)

a<-read.table('MJM2940.ks.ng')
hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,1000),main='Ancistrocladaceae Ancistrocladus robertsoniorum',axes=TRUE)
hist(a[,1],breaks=60,col='grey',xlab='',ylab='',ylim = c(0,1000),main='',axes=FALSE)
a<-read.table('Neam.ks.ng')
hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,2000),main='Nepentheaceae Nepenthes ampullaria',axes=TRUE)
hist(a[,1],breaks=60,col='grey',xlab='',ylab='',ylim = c(0,2000),main='',axes=FALSE)
a<-read.table('NepSFB.ks.ng')
hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,2000),main='Nepentheaceae Nepenthes alata',axes=TRUE)
hist(a[,1],breaks=60,col='grey',xlab='',ylab='',ylim = c(0,2000),main='',axes=FALSE)

a<-read.table('Nera.ks.ng')
hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,10000),main='Nepentheaceae Nepenthes rafflesia',axes=TRUE)
a<-read.table('Retr.ks.ng')
hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,500),main='Tamaricaceae Reaumuria trigyna',axes=TRUE)
hist(a[,1],breaks=60,col='grey',xlab='',ylab='',ylim = c(0,500),main='',axes=FALSE)

a<-read.table('RuprSFB.ks.ng')
hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,3000),main='Polygonaceae Ruprechtia salicifolia',axes=TRUE)
hist(a[,1],breaks=60,col='grey',xlab='',ylab='',ylim = c(0,3000),main='',axes=FALSE)

a<-read.table('Spol.ks.ng')
hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,500),main='Chenopodiaceae Spinacia oleracea',axes=TRUE)
hist(a[,1],breaks=60,col='grey',xlab='',ylab='',ylim = c(0,500),main='',axes=FALSE)

a<-read.table('WOBD.ks.ng')
hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,400),main='Plumbaginaceae Limonium spectabile',axes=TRUE)
a<-read.table('WPYJ.ks.ng')
hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,400),main='Frankeniaceae Frankenia laevis',axes=TRUE)
hist(a[,1],breaks=60,col='grey',xlab='',ylab='',ylim = c(0,400),main='',axes=FALSE)

a<-read.table('MJM3360.ks.ng')
hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,1000),main='Plumbaginaceae Plumbago auriculata',axes=TRUE)
hist(a[,1],breaks=60,col='grey',xlab='',ylab='',ylim = c(0,1000),main='',axes=FALSE)


#Multi Species
a<-read.table('AllotherNonCore.ks.ng')
hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,3000),main='Other Non Core',axes=TRUE)
hist(a[,1],breaks=60,col='grey',xlab='',ylab='',ylim = c(0,500),main='',axes=FALSE)

a<-read.table('All_Nepenthes.ks.ng')
hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,7000),main='Nepenthes & Ancistrocladus',axes=TRUE)

a<-read.table('Dion_Drob.ks.ng')
hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,4000),main='Dionaea x Drosera',axes=TRUE)


b<-read.table('MJM1652.ks.ng')
d <- b[,1]
hist(d,breaks=60,col=rgb(0,1,1,0.4),xlab='KS',ylab='Paralogs',main="Aldrovanda x All_droseraceae",ylim = c(0,500),axes=TRUE)
par(new=TRUE)
a<-read.table('All_Droseraceae.ks.ng')
c <- a[,1]
hist(c,breaks=60,col=rgb(1,1,0,0.7),xlab='KS',ylab='Paralogs',ylim = c(0,2000),main='',axes=TRUE)

#a<-read.table('NepSFB.ks.ng')
#hist(a[,1],breaks=60,col=rgb(0,1,1,0.4),xlab='KS',ylab='Paralogs',ylim = c(0,2000),main='Nepenthes alata x Ancistrocladus robersoniorum',axes=TRUE)
#par(new=TRUE)
#a<-read.table('MJM2940.ks.ng')
#hist(a[,1],breaks=60,col=rgb(1,1,0,0.7),xlab='KS',ylab='Paralogs',main = "", ylim = c(0,1000),axes=TRUE)
#setwd("/home/joe/Desktop/CarnivoryReanalyze/ks_plots")
#a<-read.table('MJM2940.ks.ng')
#hist(a[,1],breaks=60,col=rgb(1,1,0,0.7),xlab='KS',ylab='Paralogs',main = "", ylim = c(0,2000),axes=TRUE)
setwd("/home/joe/Desktop/CarnivoryReanalyze/MultiSpeciesKsPlot/AncNep/")
a<-read.table('Ks')
hist(a[,1],breaks=300,col=rgb(0,1,1,0.4),xlab='',ylab='',xlim=c(0,3),main=substitute(paste(italic('Ancistrocladus robersoniorum x Nepenthes alata'))),axes=FALSE)
par(new=TRUE)
setwd("/home/joe/Desktop/CarnivoryReanalyze/ks_plots")
a<-read.table('MJM2940.ks.ng')
hist(a[,1],breaks=60,col=rgb(1,1,0,0.7),xlab='',ylab='',main = "", xlim=c(0,3),axes=FALSE)
par(new=TRUE)
a<-read.table('NepSFB.ks.ng')
hist(a[,1],breaks=60,col=rgb(1,0,1,0.2),xlab='',ylab='',xlim=c(0,3),ylim=c(0,2000),main='',axes=FALSE)
setwd("/home/joe/Desktop/CarnivoryReanalyze/MultiSpeciesKsPlot/NepDrob/")
a<-read.table('Ks')
hist(a[,1],breaks=600,col=rgb(0,1,1,0.4),xlab='',ylab='',xlim=c(0,3),main=substitute(paste(italic('Nepenthes alata x Drosera binata'))),axes=FALSE)
par(new=TRUE)
setwd("/home/joe/Desktop/CarnivoryReanalyze/ks_plots")
a<-read.table('DrobinSFB.ks.ng')
hist(a[,1],breaks=60,col=rgb(1,1,0,0.7),xlab='',ylab='',main = "", xlim=c(0,3),ylim=c(0,500),axes=FALSE)
par(new=TRUE)
a<-read.table('NepSFB.ks.ng')
hist(a[,1],breaks=60,col=rgb(1,0,1,0.2),xlab='',ylab='',xlim=c(0,3),ylim=c(0,2000),main='',axes=FALSE)
setwd("/home/joe/Desktop/CarnivoryReanalyze/MultiSpeciesKsPlot/Rupr_MJM3360/")
a<-read.table('Ks')
hist(a[,1],breaks=200,col=rgb(0,1,1,0.4),xlab='',ylab='',xlim=c(0,3),main=substitute(paste(italic('Ruprechtia salicifolia x Plumbago auriculata'))),axes=FALSE)
par(new=TRUE)
setwd("/home/joe/Desktop/CarnivoryReanalyze/ks_plots")
a<-read.table('RuprSFB.ks.ng')
hist(a[,1],breaks=60,col=rgb(1,1,0,0.7),xlab='',ylab='',main = "", xlim=c(0,3),ylim=c(0,2000),axes=FALSE)
par(new=TRUE)
a<-read.table('MJM3360.ks.ng')
hist(a[,1],breaks=60,col=rgb(1,0,1,0.2),xlab='',ylab='',xlim=c(0,3),ylim=c(0,2000),main='',axes=FALSE)
setwd("/home/joe/Desktop/CarnivoryReanalyze/MultiSpeciesKsPlot/")
a<-read.table('Ks')
hist(a[,1],breaks=200,col=rgb(0,1,1,0.4),xlab='',ylab='',xlim=c(0,3),main=substitute(paste(italic('Ancistrocladus robertsonianum x Drosera binata'))),axes=FALSE)
par(new=TRUE)
setwd("/home/joe/Desktop/CarnivoryReanalyze/ks_plots")
a<-read.table('DrobinSFB.ks.ng')
hist(a[,1],breaks=60,col=rgb(1,1,0,0.7),xlab='',ylab='',main = "", xlim=c(0,3),ylim=c(0,1000),axes=FALSE)
par(new=TRUE)
a<-read.table('MJM2940.ks.ng')
hist(a[,1],breaks=60,col=rgb(1,0,1,0.2),xlab='',ylab='',xlim=c(0,3),ylim=c(0,1000),main='',axes=FALSE)
######################################################################
#Double Comparison
######################################################################
setwd("/home/joe/Desktop/CarnivoryReanalyze/Ks_DrosPosition/Ks_Results/")
#Sister is blue, Basal is yellow, overlap is green
#AVG = .63592
a<-read.table('Anc_Nep_BasalKs.txt')
hist(a[,1],breaks=20,col=rgb(1,1,0,0.2),xlab='',ylab='',xlim=c(0,1.5),ylim=c(0,80),main='',axes=TRUE)
par(new=TRUE)
#AVG = .6358
a<-read.table('Sister_AncNep_Ks.txt')
hist(a[,1],breaks=20,col=rgb(0,1,1,0.4),xlab='Ks',ylab='Orthologs',main=substitute(paste(italic('Ancistrocladus robertsoniorum x Nepenthes alata'))),xlim=c(0,1.5),ylim=c(0,80),axes=TRUE)
legend(1, 80, c("Sister relationship","Basal Relationship", "Overlap"), 
       fill=c(rgb(0,1,1,0.4),rgb(1,1,0,0.2), "aquamarine"));
#Drosophyllum Comp
#AVG = .85467
a<-read.table('DrolusBasal_Ks.txt')
hist(a[,1],breaks=20,col=rgb(1,1,0,0.2),xlab='Ks',main=substitute(paste(italic('Drosophyllum lusitanicum x Nepenthes alata'))),ylab='Orthologs',xlim=c(0,1.5),ylim=c(0,80),axes=TRUE)
par(new=TRUE)
#AVG = 0.85861
a<-read.table('DrolusSisterKs.txt')
hist(a[,1],breaks=40,col=rgb(0,1,1,0.4),xlab='',ylab='',xlim=c(0,1.5),ylim=c(0,80),main='',axes=TRUE)
legend(1, 80, c("Sister relationship","Basal Relationship", "Overlap"), 
       fill=c(rgb(0,1,1,0.4),rgb(1,1,0,0.2), "aquamarine"));
#########################################################################################################
#Multispecies Ks Density Plots                                                                                  #
#########################################################################################################
par(mfrow=c(1,1))
setwd("/home/joe/Desktop/CarnivoryReanalyze/MultiSpeciesKsPlot/Rupr_MJM3360/")
a<-read.table('Ks')
count = 0
Z <- c()
h = a[,1]
h <- h[a[,1] > 0.25]
d <- density(h)
plot(d,col="Blue",xlim=c(0,3),ylim=c(0,1.1),xlab='Ks',main=substitute(paste(italic('Ruprechtia salicifolia x Plumbago auriculata'))))
par(new=TRUE)
setwd("/home/joe/Desktop/CarnivoryReanalyze/ks_plots")
a<-read.table('RuprSFB.ks.ng')
h = a[,1]
h <- h[a[,1] > 0.25]
d <- density(h)
plot(d,col="Red",xlim=c(0,3),ylim=c(0,1.1),xlab='',main='')
par(new=TRUE)
a<-read.table('MJM3360.ks.ng')
h = a[,1]
h <- h[a[,1] > 0.25]
d <- density(h)
plot(d,col="Orange",xlim=c(0,3),ylim=c(0,1.1),xlab='',,main='')
legend(1.75, 1.1, c("Orthologs","R. salicifolia", "P. auriculata"), 
       fill=c("Blue","Red", "Orange"));
points(0.72,0.56,col="Orange",pch=20,cex=2)
points(0.46,0.99,col="Red",pch=20,cex=2)
points(1.04,1.07,col="Blue",pch=20,cex=2)
setwd("/home/joe/Desktop/CarnivoryReanalyze/MultiSpeciesKsPlot/NepDrob/")
#par(mfrow=c(1,1))
a<-read.table('Ks')
h = a[,1]
h <- h[a[,1] > 0.25]
d <- density(h)
plot(d,col="Blue",xlim=c(0,3),ylim=c(0,1.7),xlab='Ks',main=substitute(paste(italic('Drosera binata x Nepenthes alata'))))
par(new=TRUE)
setwd("/home/joe/Desktop/CarnivoryReanalyze/ks_plots/")
a<-read.table('DrobinSFB.ks.ng')
h = a[,1]
h <- h[a[,1] > 0.25]
d <- density(h)
plot(d,col="Red",xlim=c(0,3),ylim=c(0,1.7),xlab='',main='')
par(new=TRUE)
a<-read.table('NepSFB.ks.ng')
h = a[,1]
h <- h[a[,1] > 0.25]
d <- density(h)
plot(d,col="Orange",xlim=c(0,3),ylim=c(0,1.7),xlab='',main='')
legend(2.0, 1.6, c("Orthologs","D. binata", "N. alata"), 
       fill=c("Blue","Red", "Orange"));
points(0.5,0.82,col="Orange",pch=20,cex=2)
points(0.8,0.45,col="Red",pch=20,cex=2)
points(.95,1.05,col="Blue",pch=20,cex=2)
setwd("/home/joe/Desktop/CarnivoryReanalyze/MultiSpeciesKsPlot/AncNep/")
#par(mfrow=c(1,1))
a<-read.table('Ks')
h = a[,1]
h <- h[a[,1] > 0.25]
d <- density(h)
plot(d,col="Blue",xlim=c(0,3),ylim=c(0,1.7),xlab='Ks',main=substitute(paste(italic('Ancistrocladus robertsoniorum x Nepenthes alata'))))
par(new=TRUE)
setwd("/home/joe/Desktop/CarnivoryReanalyze/ks_plots/")
a<-read.table('MJM2940.ks.ng')
h = a[,1]
h <- h[a[,1] > 0.25]
d <- density(h)
plot(d,col="Red",xlim=c(0,3),ylim=c(0,1.7),xlab='',main='')
par(new=TRUE)
a<-read.table('NepSFB.ks.ng')
h = a[,1]
h <- h[a[,1] > 0.25]
d <- density(h)
plot(d,col="Orange",xlim=c(0,3),ylim=c(0,1.7),xlab='',main='')
legend(1.75, 1.6, c("Orthologs","A. robertsoniorum", "N. alata"), 
       fill=c("Blue","Red", "Orange"));
points(0.5,0.82,col="Orange",pch=20,cex=2)
points(0.4,.95,col="Red",pch=20,cex=2)
points(.61,1.67,col="Blue",pch=20,cex=2)
setwd("/home/joe/Desktop/CarnivoryReanalyze/MultiSpeciesKsPlot/")
#par(mfrow=c(1,1))
a<-read.table('Ks')
h = a[,1]
h <- h[a[,1] > 0.25]
d <- density(h)
plot(d,col="Blue",xlim=c(0,3),ylim=c(0,1.7),xlab='Ks',main=substitute(paste(italic('Ancistrocladus robertsoniorum x Drosera binata'))))
par(new=TRUE)
setwd("/home/joe/Desktop/CarnivoryReanalyze/ks_plots/")
a<-read.table('MJM2940.ks.ng')
h = a[,1]
h <- h[a[,1] > 0.25]
d <- density(h)
plot(d,col="Red",xlim=c(0,3),ylim=c(0,1.7),xlab='',main='')
par(new=TRUE)
a<-read.table('DrobinSFB.ks.ng')
h = a[,1]
h <- h[a[,1] > 0.25]
d <- density(h)
plot(d,col="Orange",xlim=c(0,3),ylim=c(0,1.7),xlab='',main='')
legend(2, 1.6, c("Orthologs","A. robertsoniorum", "D. binata"), 
       fill=c("Blue","Red", "Orange"));
points(0.8,0.45,col="Orange",pch=20,cex=2)
points(0.4,.95,col="Red",pch=20,cex=2)
points(.95,1.27,col="Blue",pch=20,cex=2)
##############################################################################
#Species Ks Plots
##############################################################################
par(mfrow=c(4,4))
setwd("/home/joe/Desktop/CarnivoryReanalyze/ks_plots")
a<-read.table('DrolusSFB.ks.ng')
h <- a[,1]
d <- density(h)
plot(d,col="Blue",xlim=c(0,3),ylim=c(0,1.7),xlab='Ks',main=substitute(paste(italic('Drosophyllaceae Drosophyllum lusitanicum'))))
polygon(d, col="Grey",border="Black")
#hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,500),main='Drosophyllaceae Drosophyllum lusitanicum',axes=TRUE)
a<-read.table('Beta.ks.ng')
h <- a[,1]
d <- density(h)
plot(d,col="Blue",xlim=c(0,3),ylim=c(0,1.7),xlab='Ks',main=substitute(paste(italic('Amaranthaceae Beta vulgaris'))))
polygon(d, col="Grey",border="Black")
#hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,500),main='Amaranthaceae Beta vulgaris',axes=TRUE)
a<-read.table('Dino.ks.ng')
h <- a[,1]
d <- density(h)
plot(d,col="Blue",xlim=c(0,3),ylim=c(0,1.7),xlab='Ks',main=substitute(paste(italic('Droseraceae Dionaea muscipula'))))
polygon(d, col="Grey",border="Black")
#hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,1000),main='Droseraceae Dionaea muscipula',axes=TRUE)
a<-read.table('DrobinSFB.ks.ng')
h <- a[,1]
d <- density(h)
plot(d,col="Blue",xlim=c(0,3),ylim=c(0,1.7),xlab='Ks',main=substitute(paste(italic('Droseraceae Drosera binata'))))
polygon(d, col="Grey",border="Black")
#hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,500),main='Droseraceae Drosera binata',axes=TRUE)
a<-read.table('MJM1652.ks.ng')
h <- a[,1]
d <- density(h)
plot(d,col="Blue",xlim=c(0,3),ylim=c(0,1.7),xlab='Ks',main=substitute(paste(italic('Droseraceae Aldrovanda vesiculosa'))))
polygon(d, col="Grey",border="Black")
#hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,500),main='Droseraceae Aldrovanda vesiculosa',axes=TRUE)
a<-read.table('MJM2940.ks.ng')
h <- a[,1]
d <- density(h)
plot(d,col="Blue",xlim=c(0,3),ylim=c(0,1.7),xlab='Ks',main=substitute(paste(italic('Ancistrocladaceae Ancistrocladus robertsoniorum'))))
polygon(d, col="Grey",border="Black")
#hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,1000),main='Ancistrocladaceae Ancistrocladus robertsoniorum',axes=TRUE)
a<-read.table('Neam.ks.ng')
h <- a[,1]
d <- density(h)
plot(d,col="Blue",xlim=c(0,3),ylim=c(0,1.7),xlab='Ks',main=substitute(paste(italic('Nepentheaceae Nepenthes ampullaria'))))
polygon(d, col="Grey",border="Black")
#hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,2000),main='Nepentheaceae Nepenthes ampullaria',axes=TRUE)
a<-read.table('NepSFB.ks.ng')
h <- a[,1]
d <- density(h)
plot(d,col="Blue",xlim=c(0,3),ylim=c(0,1.7),xlab='Ks',main=substitute(paste(italic('Nepentheaceae Nepenthes alata'))))
polygon(d, col="Grey",border="Black")
#hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,2000),main='Nepentheaceae Nepenthes alata',axes=TRUE)
a<-read.table('Retr.ks.ng')
h <- a[,1]
d <- density(h)
plot(d,col="Blue",xlim=c(0,3),ylim=c(0,1.7),xlab='Ks',main=substitute(paste(italic('Tamaricaceae Reaumuria trigyna'))))
polygon(d, col="Grey",border="Black")
#hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,500),main='Tamaricaceae Reaumuria trigyna',axes=TRUE)
a<-read.table('RuprSFB.ks.ng')
h <- a[,1]
d <- density(h)
plot(d,col="Blue",xlim=c(0,3),ylim=c(0,1.7),xlab='Ks',main=substitute(paste(italic('Polygonaceae Ruprechtia salicifolia'))))
polygon(d, col="Grey",border="Black")
#hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,3000),main='Polygonaceae Ruprechtia salicifolia',axes=TRUE)
a<-read.table('Spol.ks.ng')
h <- a[,1]
d <- density(h)
plot(d,col="Blue",xlim=c(0,3),ylim=c(0,1.7),xlab='Ks',main=substitute(paste(italic('Chenopodiaceae Spinacia oleracea'))))
polygon(d, col="Grey",border="Black")
#hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,500),main='Chenopodiaceae Spinacia oleracea',axes=TRUE)
a<-read.table('WPYJ.ks.ng')
h <- a[,1]
d <- density(h)
plot(d,col="Blue",xlim=c(0,3),ylim=c(0,1.7),xlab='Ks',main=substitute(paste(italic('Frankeniaceae Frankenia laevis'))))
polygon(d, col="grey")
#hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,400),main='Frankeniaceae Frankenia laevis',axes=TRUE)
par(mfrow=c(1,1))
a<-read.table('MJM3360.ks.ng')
h <- a[,1]
d <- density(h)
hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,1000),main='Plumbaginaceae Plumbago auriculata',axes=TRUE)
par(new=TRUE)
plot(d,col="Blue",xlim=c(0,3),ylim=c(0,1.7),xlab='Ks',main=substitute(paste(italic('Plumbaginaceae Plumbago auriculata'))))
polygon(d, col="Red",border="Black")

##############################################################################
#Superimposed
##############################################################################
par(mfrow=c(4,4))
setwd("/home/joe/Desktop/CarnivoryReanalyze/ks_plots")
a<-read.table('DrolusSFB.ks.ng')
h <- a[,1]
d <- density(h)
hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,500),main='Drosophyllaceae Drosophyllum lusitanicum',axes=TRUE)
par(new=TRUE)
plot(d,col="Black",xlim=c(0,3),ylim=c(0,1.7),xlab='',main='',ylab='',axes=FALSE)
polygon(d, col=adjustcolor("Blue", alpha.f = 0.2),border="Black")
a<-read.table('Beta.ks.ng')
h <- a[,1]
d <- density(h)
hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,500),main='Amaranthaceae Beta vulgaris',axes=TRUE)
par(new=TRUE)
plot(d,col="Black",xlim=c(0,3),ylim=c(0,1.7),xlab='',main='',ylab='',axes=FALSE)
polygon(d, col=adjustcolor("Blue", alpha.f = 0.2),border="Black")
a<-read.table('Dino.ks.ng')
h <- a[,1]
d <- density(h)
hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,1000),main='Droseraceae Dionaea muscipula',axes=TRUE)
par(new=TRUE)
plot(d,col="Black",xlim=c(0,3),ylim=c(0,1.7),xlab='',main='',ylab='',axes=FALSE)
polygon(d, col=adjustcolor("Blue", alpha.f = 0.2),border="Black")
a<-read.table('DrobinSFB.ks.ng')
h <- a[,1]
d <- density(h)
hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,500),main='Droseraceae Drosera binata',axes=TRUE)
par(new=TRUE)
plot(d,col="Black",xlim=c(0,3),ylim=c(0,1.7),xlab='',main='',ylab='',axes=FALSE)
polygon(d, col=adjustcolor("Blue", alpha.f = 0.2),border="Black")
a<-read.table('MJM1652.ks.ng')
h <- a[,1]
d <- density(h)
hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,500),main='Droseraceae Aldrovanda vesiculosa',axes=TRUE)
par(new=TRUE)
plot(d,col="Black",xlim=c(0,3),ylim=c(0,1.7),xlab='',main='',ylab='',axes=FALSE)
polygon(d, col=adjustcolor("Blue", alpha.f = 0.2),border="Black")
a<-read.table('MJM2940.ks.ng')
h <- a[,1]
d <- density(h)
hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,1000),main='Ancistrocladaceae Ancistrocladus robertsoniorum',axes=TRUE)
par(new=TRUE)
plot(d,col="Black",xlim=c(0,3),ylim=c(0,1.7),xlab='',main='',ylab='',axes=FALSE)
polygon(d, col=adjustcolor("Blue", alpha.f = 0.2),border="Black")
a<-read.table('Neam.ks.ng')
h <- a[,1]
d <- density(h)
hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,2000),main='Nepentheaceae Nepenthes ampullaria',axes=TRUE)
par(new=TRUE)
plot(d,col="Black",xlim=c(0,3),ylim=c(0,1.7),xlab='',main='',ylab='',axes=FALSE)
polygon(d, col=adjustcolor("Blue", alpha.f = 0.2),border="Black")
a<-read.table('NepSFB.ks.ng')
h <- a[,1]
d <- density(h)
hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,2000),main='Nepentheaceae Nepenthes alata',axes=TRUE)
par(new=TRUE)
plot(d,col="Black",xlim=c(0,3),ylim=c(0,1.7),xlab='',main='',ylab='',axes=FALSE)
polygon(d, col=adjustcolor("Blue", alpha.f = 0.2),border="Black")
a<-read.table('Retr.ks.ng')
h <- a[,1]
d <- density(h)
hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,500),main='Tamaricaceae Reaumuria trigyna',axes=TRUE)
par(new=TRUE)
plot(d,col="Black",xlim=c(0,3),ylim=c(0,1.7),xlab='',main='',ylab='',axes=FALSE)
polygon(d, col=adjustcolor("Blue", alpha.f = 0.2),border="Black")
a<-read.table('RuprSFB.ks.ng')
h <- a[,1]
d <- density(h)
hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,3000),main='Polygonaceae Ruprechtia salicifolia',axes=TRUE)
par(new=TRUE)
plot(d,col="Black",xlim=c(0,3),ylim=c(0,1.7),xlab='',main='',ylab='',axes=FALSE)
polygon(d, col=adjustcolor("Blue", alpha.f = 0.2),border="Black")
a<-read.table('Spol.ks.ng')
h <- a[,1]
d <- density(h)
hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,500),main='Chenopodiaceae Spinacia oleracea',axes=TRUE)
par(new=TRUE)
plot(d,col="Black",xlim=c(0,3),ylim=c(0,1.7),xlab='',main='',ylab='',axes=FALSE)
polygon(d, col=adjustcolor("Blue", alpha.f = 0.2),border="Black")
a<-read.table('WPYJ.ks.ng')
h <- a[,1]
d <- density(h)
hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,400),main='Frankeniaceae Frankenia laevis',axes=TRUE)
par(new=TRUE)
plot(d,col="Black",xlim=c(0,3),ylim=c(0,1.7),xlab='',main='',ylab='',axes=FALSE)
polygon(d, col=adjustcolor("Blue", alpha.f = 0.2),border="Black")
a<-read.table('MJM3360.ks.ng')
h <- a[,1]
d <- density(h)
hist(a[,1],breaks=60,col='grey',xlab='KS',ylab='Paralogs',ylim = c(0,1000),main='Plumbaginaceae Plumbago auriculata',axes=TRUE)
par(new=TRUE)
plot(d,col="Black",xlim=c(0,3),ylim=c(0,1.7),xlab='',main='',ylab='',axes=FALSE)
polygon(d, col=adjustcolor("Blue", alpha.f = 0.2),border="Black")

