class PigLatinizer

  def piglatinize (input)
    single_word_english_to_pig_latin_translator(input)
  end

  def to_pig_latin (input)
  input.split.collect do |word|
    single_word_english_to_pig_latin_translator(word)
  end.join(" ")
  end

  def single_word_english_to_pig_latin_translator (word)
    #i made this solution a while not originally for flatiron
    #it's made for more general cases, but i had to comment a bit out for your tests
    # capital = word != word.downcase
    # word = word.downcase
    lead_consonants = word.match(/^[^[aeiou]||"qu"]+/i).to_s
    trailing_punctuation = word.match(/\p{Punct}+\z/ ).to_s
    core = word.sub(lead_consonants, "").sub(trailing_punctuation, "")
    ending = lead_consonants.empty? ? "way" : "ay"
    down_case_result = core + lead_consonants + ending + trailing_punctuation
    # capital ? down_case_result.capitalize : down_case_result
  end

end
