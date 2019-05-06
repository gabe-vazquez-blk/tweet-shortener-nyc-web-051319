# Write your code here.
def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "For" =>"4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  dictionary = dictionary()
  tweet = tweet.split(" ")
  tweet.map do |w|
    w = dictionary[w] if dictionary.keys.include?(w)
    w
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener (tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end  

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    new_tweet = word_substituter(tweet)
    if new_tweet.length > 140
      new_tweet.truncate(140)
    end
  end
end






