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
      For: "4",
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
  tweet_arr.collect do |tweet|
    puts word_substituter(tweet)
  end
end



def selective_tweet_shortener(tweet)

  if tweet.length < 140
    tweet
  else
    word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0...137]+"..."
  else
    word_substituter(tweet)
  end

end
