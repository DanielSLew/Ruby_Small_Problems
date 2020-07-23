# Read the text file in the #process method and pass the text to the block provided
# Everything you need to work on is either part of the #process method or the blocks
require 'pry'

class TextAnalyzer
  def process
    File.open("analyze_text.txt", "r") do |file|
      yield(file.read)
    end
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |text| puts "#{text.split("\n\n").size} paragraphs." }
analyzer.process { |text| puts "#{text.split("\n").size} lines." }
analyzer.process { |text| puts "#{text.split(' ').size} words." }

# Output: 
# 3 paragraphs
# 15 lines
# 126 words
