require "./lib/word"
require "./lib/term"
require "./lib/definition"
require "pry"

def main_menu
  puts "Press 'a' to add a new term. Press 's' to show your list. Press 'x' to exit"
  menu_input = gets.chomp
  if menu_input == "x"
    exit
  elsif menu_input == "a"
    puts "Type the new word"
    new_word = gets.chomp
    puts "What language is it in?"
    new_language = gets.chomp
    puts "Type a definition"
    new_definition = Definition.new(gets.chomp)
    new_word_object = Word.new(new_word, new_language)
    new_term = Term.new(new_word_object, new_definition)
    new_term.save
  elsif menu_input == "s"
    Term.all.each do |word|
      word.term_show
    end
    puts "To update your list, press 'd' to add a new definition.  Press 'w' to add a new word in a different language. "
    update_term = gets.chomp
    if update_term == 'd'
      Term.all.each do |word|
        word.word_show
      end
      puts "Choose which word you would like to add a definition to."
      chosen_word = gets.chomp
      puts "What definition would you like to add?"
      new_definition = gets.chomp

      Term.all.each do |term|
        term.words.each do |word|
          if chosen_word == word.word
            term.save_definition(new_definition)
          end
        end
      end
    elsif update_term == 'w'
      Term.all.each do |word|
        word.word_show
      end
      puts "Choose which word you would like to add a language to."
      chosen_word = gets.chomp
      puts "What language would you like to add?"
      new_language = gets.chomp
      puts "What is the word in that language?"
      new_language_word = gets.chomp

      Term.all.each do |term|
        term.words.each do |word|
          if chosen_word == word.word
            term.save_word_object(new_language_word, new_language)
          end
        end
      end
    end
  end
  main_menu
end

main_menu
