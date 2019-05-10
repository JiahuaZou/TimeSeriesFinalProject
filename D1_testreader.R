##This script is close to how your prediction files will be read.
##Before running the script, make sure your file is in your working directory. To see what your working directory is, use "getwd()".

##Below, type the name of your file in place of "[filename.txt]". 
## For example, if my file were called "D1_0_1234_123456_NA_NA_NA.txt" (include the extension ".txt"") I would replace "[filename.txt]" with that.

filename <- "D1_7_26209413_3034503655_3034503668_26657181_NA.txt"

####

D1data <- data.frame(matrix(rep(NA,16),nrow=1))
row.names(D1data) <- filename
colnames(D1data) <- c("Group #","SID 1","SID 2","SID 3","SID 4","SID 5","P1","P2","P3","P4","P5","P6","P7","P8","P9","P10")
D1data[1,1:6] <-unlist(strsplit(gsub("D1_|.txt","",filename),split="_"))
D1data[1,7:16] <- scan(filename,sep=",")

View(D1data)

##Make sure you save your .txt file using ANSI encoding. A few other formats introduce invisible null characters to your file which mess up the reading.