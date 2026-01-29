# lib/nami_kana/menu/hiragana.rb
require 'json'

module NamiKana
  module Menu
    def self.hiragana
      puts "Select group to study"
      input = $stdin.gets.strip

      case input
        when "1"
          puts "Gojūon"
          NamiKana::Menu.katakana
        when "2"
          puts "Youon"
          NamiKana::Menu.hiragana
        when "3"
          puts "Sokuon"
          NamiKana::Menu.hiragana
        when "3"
          puts "Tokushuon"
          NamiKana::Menu.hiragana
        else
          puts "Invalid option"
        end
    end

    def gojuuon
      elements = get_elements_for_quiz(5, "hiragana", "gojuuon")

      puts "Write romaji form for: "
      puts elements.first.hiragana

      input = $stdin.gets.strip

      if input == elements.first.romaji
        puts "Correct"
      else
        puts "Nope"
      end
      

    end

    private

    def get_kana_elements_from_list(n, kana, family)
      # Load JSON
      file_path = File.expand_path("../../data/kana_list.json", __dir__)
      json = JSON.parse(File.read(file_path))

      items = kanalist[:family].sample(5)
      items
    end

    def family(i)
      case i
      when "Gojūon"
        gojuuon
      when "Youon"
        youon
      when "Sokuon"
        sokuon
      when "Tokushuon"
        tokushuon
      end
    end
  end
end
