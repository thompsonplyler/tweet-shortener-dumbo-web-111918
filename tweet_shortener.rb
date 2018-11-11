#"Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"
#"OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?"
#"I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real."
#"GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"
#"New game. Middle aged tweet followed by #youngPeopleHashTag Example: Gotta get my colonoscopy and mammogram soon. Prevention is key! #swag"

require "pry"

def dictionary
  dictionary = {
      you: "u",
      hello: "hi",
      to: "2",
      two: "2",
      too: "2",
      for: "4",
      four: "4",
      be: "b",
      at: "@",
      and: "&",
  }
end

def word_substituter(tweet)
  changed_tweet = nil
  dictionary


  changed_tweet = (tweet.split(" ").collect do |word|
      dictionary.each do |entry, abbrev|
        if word == entry.to_s
          word = abbrev
        end
      end
      word
    end.join(" "))

    changed_tweet
end

def bulk_tweet_shortener(tweet_arr)
  new_tweet_array = []
  i=0

  while i < tweet_arr.length
    new_tweet_array << word_substituter(tweet_arr[i])
    i+=1
  end
  binding.pry
new_tweet_array
end

def selective_tweet_shortener(tweet_array)
end

def shortened_tweet_truncator(tweet_array)
end
