# install.packages("wordcloud")
# install.packages("RColorBrewer")
# install.packages("wordcloud2")
# install.packages("tm")
# install.packages("snoballc")
# install.packages("readtext")

library(wordcloud)
library(RColorBrewer)
library(wordcloud2)
library(tm)
library(SnowballC)
library(readtext)
text <- readtext(file.choose())
print(text)
corp <- Corpus(VectorSource(text))
corp <- tm_map(corp,PlainTextDocument)
corp <- tm_map(corp,removePunctuation)
corp <- tm_map(corp,removeNumbers)
corp <- tm_map(corp,tolower)
corp <- tm_map(corp,removeWords,stopwords(kind = "en"))
wordcloud(corp,max.words = 100, random.order = FALSE)

color <- brewer.pal(8,"Spectral")
wordcloud(corp,max.words = 100, min.freq = 5, random.order = FALSE, colors=color)



