def make_snippet(word)
    word_arr = word.split(" ")
    if word_arr.length <= 5
        return word
    else
        word = word_arr[0,5].join(" ")
        return word + "..."
    end
end
