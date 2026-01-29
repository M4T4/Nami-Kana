# lib/nami_kana/cli.rb

require 'thor'

module NamiKana
  class CLI < Thor
    desc "learn TYPE", "Learn kana: hiragana or katakana"
    def learn(type = "hiragana")
      puts "📚 Learning #{type.capitalize}!"
      kana = {
        'hiragana' => %w[あ い う え お],
        'katakana' => %w[ア イ ウ エ オ]
      }
      kana[type.downcase]&.each { |k| puts " -> #{k}" } || puts("❌ Unknown type: #{type}")
    end

    desc "quiz", "Take a kana quiz"
    def quiz
      pairs = {
        'あ' => 'a', 'い' => 'i', 'う' => 'u', 'え' => 'e', 'お' => 'o'
      }
      score = 0
      pairs.shuffle.to_h.each do |kana, romaji|
        print "👉 What is '#{kana}'? "
        answer = $stdin.gets.strip
        if answer.downcase == romaji
          puts "✅ Correct!"
          score += 1
        else
          puts "❌ Nope. It was '#{romaji}'"
        end
      end
      puts "🏁 Final Score: #{score}/#{pairs.size}"
    end
  end
end
