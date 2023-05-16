class GrammarStats
    def initialize 
        @checks_done = 0
        @checks_passed = 0
    end
  
    def check(text) # text is a string
      fail "Not a sentence." if text.empty?
      @checks_done += 1
      first_letter_is_uppercase = text[0] == text[0].upcase
      last_character_is_appropriate_punctuation = [".", "!"].include? text[-1]
      if first_letter_is_uppercase && last_character_is_appropriate_punctuation
        @checks_passed += 1
        return true
      else
        return false
      end
    end
    
    def percentage_good
        fail "No checks done yet." if @checks_done == 0
        return @checks_passed.to_f / @checks_done * 100
    end
  end