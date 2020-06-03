class PigLatinizer

    def vowel_check(letter)
        letter.match(/[aAeEiIoOuU]/)
    end

    def pig_latin(word)
        if vowel_check(word[0])
            word + "way"
        else
            #find index of first vowel
            first_vowel = word.index(/[aAeEiIoOuU]/)

            #vowel to end of word
            vowel_to_end = word[first_vowel, word.length]
            beginning_constants = word[0, first_vowel]

            vowel_to_end + beginning_constants + "ay"
        end
    end

    def piglatinize(phrase)
        arr = phrase.split(" ")
        pig_latin_arr = arr.map{|word| self.pig_latin(word)}
        pig_latin_arr.join(" ")
    end
end