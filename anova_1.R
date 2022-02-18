instruments<-c(50,52,54,53,51,65,66,69,64,68,30,32,34,33,31)
portfolios<-factor(rep(LETTERS[1:3],c(5,5,5)))
data.frame(portfolios,instruments)
examp<-data.frame(portfolios,instruments)
summary(aov(instruments~portfolios,examp))


profits<-c(19,24,28,14,50,52,48,51,14,12,17,6,43,45,42,42,23,30,26,12,48,50,51,53)

year<-factor(rep(c("Year 2015","Year 2016","Year 2017"),c(8,8,8)))

portfolios<-factor(rep(LETTERS[1:2],c(4,4)))
examp<-data.frame(year,portfolios,profits)
examp
summary(aov(profits~year+portfolios+year*portfolios,examp))

tapply(examp$profits,list(examp$year,examp$portfolios),mean)
tapply(examp$profits,examp$year,mean)
tapply(examp$profits,examp$portfolios,mean)

col1<-c(2,3,4)
interaction.plot(examp$portfolios,examp$year,examp$profits,fun=mean,col=col1)



col2<-c(2,3,4)
interaction.plot(examp$year,examp$portfolios,examp$profits,fun=mean,col=col2)