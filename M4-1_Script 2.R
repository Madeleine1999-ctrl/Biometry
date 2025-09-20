ttnc <- read.csv(file = "Titanic_Dataset_M4.csv")

# I have some code here where I break the ttnc dataset 
# Data Cleaning below 


#AGE
hist(x = ttnc$Age)
hist(x = ttnc$Age)

testVec <- 1:10

print(testVec <= 4)
which(testVec <= 4)
sub1 <- which(testVec <= 4)

testVec[sub1]

weirdAges <- which(ttnc$Age >= 100)
ttnc$Age[weirdAges]

removeAges <- which(ttnc$Age > 110)

ttnc <- ttnc[- removeAges, ]
hist(ttnc$Age)
#FARE



ttnc$Fare <- as.numeric(ttnc$Fare)

hist(ttnc$Fare)
removeFares <- which(ttnc$Fare < 0)
ttnc <- ttnc[-removeFares,]
hist(ttnc$Fare)

#SURVIVED
table(ttnc$Survived)

#PCLASS
table(ttnc$Pclass)

removePclass <- which(ttnc$Pclass == 9)
ttnc$Pclass[removePclass] <-NA

table(ttnc$Pclass)

#SEX
table(ttnc$Sex)

#SIBSP

table(ttnc$SibSp)

#PARCH
table(ttnc$Parch)

#EMBARKED

#From the data dictionary:
#All passengers departing from Q are 1st class
#All the passengers departing from C are 2nd class
#All passengers departing from S are 3rd Class

table(ttnc$Embarked)

removeEmbarked <- which(ttnc$Embarked == "")
ttnc$Embarked[removeEmbarked] <- NA

table(ttnc$Embarked, ttnc$Pclass)


removeEmbarked2 <- which(ttnc$Embarked == "Q" &
                           ttnc$Pclass == 3)

ttnc$Embarked[removeEmbarked2] <- NA

table (ttnc$Embarked, ttnc$Pclass)
              

#Summary of common logical/boolean operators:
# > : Greater than
# < : Less than 
# >= : Greater than or equal too 
# >= : Less than or equal too
# == : Equal to
# ! : Not
# & :And 

testVec2 <- 1:10

# Select values that are less than 3 OR greater than 8. 

sel1 <- which(testVec2 < 3 | testVec2 > 8 )
testVec2[sel1]

#Selct values that are NOT greater than 6. 



#Trying this doesnt work:



#'Not' is a bit weird; we have to express it like this:

sel2b <- which(!(testVec > 6))
testVec2[sel2b]



write.csv(x = ttnc, file = "TTNC_M4_Clean1.csv",
          row.names = FALSE)

