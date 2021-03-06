require 'despamilator/filter_base'

module DespamilatorFilter

  class NaughtyWords < Despamilator::FilterBase

    def name
      'Naughty Words'
    end

    def description
      'Detects cheeky words'
    end

    def parse text
      text.downcase!

      naughty_words.each do |word|
        self.append_score = 0.1 if text =~ /\b#{word}s?\b/
      end
    end

    def naughty_words
      %w{
    underage
    penis
    viagra
    bondage
    cunt
    fuck
    shit
    dick
    tits
    nude
    dicks
    shemale
    dildo
    porn
    cock
    pussy
    clit
    preteen
    lolita
   }
    end

  end
end
