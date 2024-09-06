sms_raw <- read.csv(file.choose(), stringsAsFactors = FALSE)
str(sms_raw)
sms_raw
sms_raw$type <- factor(sms_raw$type)
str(sms_raw$type)
table(sms_raw$type)


#text mining

install.packages("tm")
library(tm)
sms_corpus<-iconv(sms_raw$text)
sms_corpus<-Corpus((VectorSource(sms_corpus)))
print(sms_corpus)
inspect(sms_corpus[1:2])
as.character(sms_corpus[[1]])
lapply(sms_corpus[1:4], as.character)


sms_corpus_clean<-tm_map(sms_corpus,
                          content_transformer(tolower))
as.character(sms_corpus[[1]])
as.character(sms_corpus_clean[[1]])
sms_corpus_clean<-tm_map(sms_corpus_clean, removeNumbers)
sms_corpus_clean<-tm_map(sms_corpus_clean,
                         removeWords, stopwords())
sms_corpus_clean<-tm_map(sms_corpus_clean, removePunctuation)
sms_corpus_clean
inspect(sms_corpus_clean[1:5])

#stemming-reducing
install.packages("SnowballC")
library(SnowballC)
wordStem(c("learn","learned","learning","learns"))
sms_corpus_clean<-tm_map(sms_corpus_clean, stemDocument)

sms_corpus_clean<tm_map(sms_corpus_clean, stripWhitespace)
sms_dtm<-DocumentTermMatrix(sms_corpus_clean)
sms_dtm_train<-sms_dtm[1:4169, ]
sms_dtm_test<-sms_dtm[4170:5559, ]
sms_train_labels<-sms_raw[1:4169, ]
sms_test_labels<-sms_raw[4170:5559, ]

install.packages("wordcloud")
library(wordcloud)
wordcloud(sms_corpus_clean, min.freq = 50,
          random.order = FALSE,colors-brewer.pal(5,"Dark2"))
