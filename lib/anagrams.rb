class Anagrams
  class << self
    def hash_for(word)
      word.chars.sort.join
    end
  end
end
