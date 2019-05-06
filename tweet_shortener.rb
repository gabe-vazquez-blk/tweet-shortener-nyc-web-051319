# Write your code here.
def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
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
  end
  join(" ")
end