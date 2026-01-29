# lib/nami_kana/cli.rb

require 'thor'
require_relative "menu/hiragana"

module NamiKana
  class CLI < Thor

    desc "menu", "Show main menu"
    def menu
      main_menu
    end

    no_commands do
      desc "main_menu", "Show main menu"
      def main_menu
        puts "Print pretty cool ASCII"
        puts "Please select an option:"
        puts "1. Practice Katakana"
        puts "2. Practice Hiragana"
        puts " — — — — — — — — — — — — — — — — — "
        input = $stdin.gets.strip
        case input
        when "1"
          puts "You chose Katakana"
          NamiKana::Menu.katakana
        when "2"
          puts "You chose Hiragana"
          NamiKana::Menu.hiragana
        else
          puts "Invalid option"
        end
      end
    end

    # desc "learn TYPE", "Learn kana: hiragana or katakana"
    # def learn(type = "hiragana")
    #   puts "📚 Learning #{type.capitalize}!"
    #   kana = {
    #     'hiragana' => %w[あ い う え お],
    #     'katakana' => %w[ア イ ウ エ オ]
    #   }
    #   kana[type.downcase]&.each { |k| puts " -> #{k}" } || puts("❌ Unknown type: #{type}")
    # end

    # desc "quiz", "Take a kana quiz"
    # def quiz
    #   pairs = {
    #     'あ' => 'a', 'い' => 'i', 'う' => 'u', 'え' => 'e', 'お' => 'o'
    #   }
    #   score = 0
    #   pairs.shuffle.to_h.each do |kana, romaji|
    #     print "👉 What is '#{kana}'? "
    #     answer = $stdin.gets.strip
    #     if answer.downcase == romaji
    #       puts "✅ Correct!"
    #       score += 1
    #     else
    #       puts "❌ Nope. It was '#{romaji}'"
    #     end
    #   end
    #   puts "🏁 Final Score: #{score}/#{pairs.size}"
    # end
  end
end
