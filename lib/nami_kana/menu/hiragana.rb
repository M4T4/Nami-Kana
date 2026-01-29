# lib/nami_kana/menu/hiragana.rb

module NamiKana
  module Menu
    def self.hiragana
      puts "🧠 Practicing Hiragana..."
      kana = %w[あ い う え お]
      kana.each { |char| puts " -> #{char}" }
    end
  end
end
