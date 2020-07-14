api_key <- 'XXX'
api_secret <- 'XXX'
access_token <- 'XXX'
access_token_secret <- 'XXX'

library(twitteR)
setup_twitter_oauth(api_key,api_secret, access_token, access_token_secret)


tweets <- searchTwitter('$aapl',n=10, lang='en')
tweets
tweetsdf <- twListToDF(tweets)
write.csv(tweetsdf, file='D:\apple.csv', row.names = F)
tweets

trend <- availableTrendLocations()
head(trend)
trend

world <- getTrends(2295378)
world


t <- getUser('NarendraModi')
t
userTimeline(t, n=2)
