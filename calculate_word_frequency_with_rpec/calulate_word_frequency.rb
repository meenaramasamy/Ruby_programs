#Implement all parts of this assignment within (this) module2_assignment2.rb file

#Implement a class called LineAnalyzer.
class LineAnalyzer
  attr_reader :highest_wf_count,:highest_wf_words,:content, :line_number

  def initialize(content,line_number) # taking a line of text (content) and a line number
   @content = content
   @line_number = line_number
   calculate_word_frequency()
  end
  def calculate_word_frequency()
    h=Hash.new(0)
    words = @content.split(' ')
    words.each { |word| h[word.downcase] += 1 }
    @highest_wf_count = h.values.max
    @highest_wf_words = h.select{|k,v| v == @highest_wf_count }.keys
	puts "#{@highest_wf_words} appears in line number: #{line_number}"
    end
end

#  Implement a class called Solution. 
class Solution
  attr_reader :highest_count_across_lines,:highest_count_words_across_lines,:analyzers 
    def initialize
     @analyzers =Array.new
    end
  def analyze_file()
     @analyzers =[]
     line_num=0
	 puts "The following words have highest word frequency per line:\n\n"
	 lines = File.readlines("test.txt").each do |line|
	 line_num+=1
     @analyzers.push( LineAnalyzer.new(line,line_num))
    end
     return analyzers
   
end

  def calculate_line_with_highest_frequency()
	@analyzers =analyze_file()
	@analyzers.each do |analyzer|
			if @highest_count_across_lines == nil
			  @highest_count_across_lines = analyzer.highest_wf_count
			elsif @highest_count_across_lines < analyzer.highest_wf_count
				@highest_count_across_lines = analyzer.highest_wf_count
		   end
		end
		
   if @highest_count_words_across_lines == nil
        @highest_count_words_across_lines= Array.new
		@analyzers.each do |analyzer|
			if @highest_count_across_lines == analyzer.highest_wf_count
					@highest_count_words_across_lines.push(analyzer)
 		       end
  		end		
   end
 end
  def print_highest_word_frequency_across_lines()
   puts "\n\nThe following are highest word frequency across all lines
   #{@highest_count_across_lines} times"
    words_found = @highest_count_words_across_lines.map(&:highest_wf_words).flatten  
    print (words_found - @highest_count_words_across_lines)
    end
 end
  solution=Solution.new
  solution.calculate_line_with_highest_frequency()
  solution.print_highest_word_frequency_across_lines()
    
 