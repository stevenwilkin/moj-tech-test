class Anagrams
  class << self
    def hash_for(word)
      word.chars.sort.join
    end

    def words
      %w(
        crepitus
        cuprites
        pictures
        piecrust
        paste
        pates
        peats
        septa
        spate
        tapes
        tepas
      )
    end

    def buckets
      @buckets ||= begin
        words.reduce({}) do |results, word|
          hash = hash_for(word)
          results[hash] ||= []
          results[hash] << word
          results
        end
      end
    end

    def bucket_for(hash)
      buckets[hash]
    end
  end
end
