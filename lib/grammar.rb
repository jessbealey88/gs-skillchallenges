def grammar_checker(text)
    fail "Not a sentence." if text.empty?
    first_letter_is_uppercase = text[0] == text[0].upcase
    last_character_is_appropriate_punctuation = [".", "!"].include? text[-1]
    if first_letter_is_uppercase && last_character_is_appropriate_punctuation
        return "This text has good grammar."
    else
        return  "This text has poor grammar."
    end
end