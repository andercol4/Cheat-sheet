#This is the early stages of this I hope to add more to the atom one
#This menu is the opening promt and is how you navigate to the other things deeper
def main_menu
  puts "==============="
  puts "Make a selection"
  puts "==============="
  puts "1: Command line"
  puts "2: Atom"
  puts "3: Search?"
  puts "4: Quit"
  puts "==============="

  case gets.strip
  when "1"
    command_line_menu
  when "2"
    atom_menu
  when "3"
    search_function
    reset
  when "4"
    exit 0
  else
    bad_choice
    main_menu
  end
end
# this menu takes their input and makes it pull up the man file for it
def command_line_menu
  puts "==============="
  puts "Make a selection"
  puts "==============="
  puts "1: mv --pick file then destination to move it"
  puts "2: cd -- pick path from your spot to destination"
  puts "3: pwd --displays where you are"
  puts "4: touch -- creates a file with the arg you give"
  puts "5: ls -- gives a list of directories"
  puts "6: mkdir -- creates a directory named the arg you gave"
  puts "8: Main Menu"
  puts "9: quit"
  puts "==============="

   case gets.strip
   when "1"
     puts `man mv`
     reset
   when "2"
     puts `man cd`
     reset
   when "3"
     puts `man pwd`
     reset
   when "4"
     puts `man touch`
     reset
   when "5"
     puts `man ls`
     reset
   when "6"
     puts `man mkdir`
     reset
   when "8"
     main_menu
   when "9"
    exit 0
   else
     bad_choice
     command_line_menu
   end

end
# this method is for the atom menu but it just has the explanaitons put directly in place
def atom_menu
  puts "================"
  puts "Make a selection"
  puts "================"
  puts "1: ctrl + cmd + ^ or v"
  puts "2:"
  puts "8: Main Menu"
  puts "9: exit"
  case gets.strip
  when "1"
    puts "ctrl + cmd + ^ or v"
    puts "grabs the line you are on and moves it up or down as you want."
    reset
    #this gap is for adding more functions

  when "8"
    main_menu
  when "9"
    exit 0
  else
    bad_choice
    atom_menu
  end
end
# this takes exactly what they write and puts it into a man prompt to run
def search_function
  puts "Please search command line prompts only"
  puts "Search:"
  puts `man #{gets.strip}`

end

def bad_choice
puts """
=*=*=*=*=*=*=*=*=
not valid make another selection
=*=*=*=*=*=*=*=*=
"""
end

def reset
  puts "=*=*=*=*=*=*="
  puts "press enter to go back to main menu"
  puts "=*=*=*=*=*=*="
  gets.strip
  main_menu
end


main_menu
