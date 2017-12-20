class Game
    attr_reader :win, :lose, :letters, :code #letters & code here for testing purposes

    def initialize
        player = Player.new
        @letters = ['a', 'b', 'c', 'd', 'e', 'f']
    end

    class Player
        attr_accessor :name
        
        def initialize
            puts "Challenger, guess the code to beat the codemaster."
            puts
            #@name = gets.chomp
            #@name = 'PLAYER NAME GOES HERE'
        end
    end

    def set 
        @win = false
        @lose = false
        @current_guess = 0
        @code = {first: ' ', second: ' ', third: ' ', fourth: ' '}
        @code_hider = {first: '?', second: '?', third: '?', fourth: '?'}

        @keys = [[' ', ' ', ' ', ' '],
                 [' ', ' ', ' ', ' '],
                 [' ', ' ', ' ', ' '],
                 [' ', ' ', ' ', ' '],
                 [' ', ' ', ' ', ' '],
                 [' ', ' ', ' ', ' '],
                 [' ', ' ', ' ', ' '],
                 [' ', ' ', ' ', ' '],
                 [' ', ' ', ' ', ' '],
                 [' ', ' ', ' ', ' '],
                 [' ', ' ', ' ', ' '],
                 [' ', ' ', ' ', ' ']]

        @board = [{first: ' ', second: ' ', third: ' ', fourth: ' '},
                  {first: ' ', second: ' ', third: ' ', fourth: ' '},
                  {first: ' ', second: ' ', third: ' ', fourth: ' '},
                  {first: ' ', second: ' ', third: ' ', fourth: ' '},
                  {first: ' ', second: ' ', third: ' ', fourth: ' '},
                  {first: ' ', second: ' ', third: ' ', fourth: ' '},
                  {first: ' ', second: ' ', third: ' ', fourth: ' '},
                  {first: ' ', second: ' ', third: ' ', fourth: ' '},
                  {first: ' ', second: ' ', third: ' ', fourth: ' '},
                  {first: ' ', second: ' ', third: ' ', fourth: ' '},
                  {first: ' ', second: ' ', third: ' ', fourth: ' '},
                  {first: ' ', second: ' ', third: ' ', fourth: ' '}]
    end

    def randomize_letters
        3.times {@letters.shuffle!}
    end

    def new_code
        randomize_letters
        @code[:first] = @letters[0][0]
        @code[:second] = @letters[1][0]
        @code[:third] = @letters[2][0]
        @code[:fourth] = @letters[3][0]
    end

    def display_instructions
        puts "How to play:"
        #sleep(2)
        puts
        puts "Available letters - a, b, c, d, e, f"
        #sleep(2)
        puts
        puts "Guess the MasterCode by entering a four letter sequence. For example 'abcd' indicates"\
             "=> a in position 1, b in position 2, c in position 3 and d in position 4"
        #sleep(5)
        puts 
        puts "The keys will be your hints to know if you're guessing correctly."
        puts "A '1' key means you have guessed a correct colour in the wrong position."
        puts "A '2' key means you have guessed a correct colour in the correct position."
        #sleep(6)
        puts 
        puts "Good luck."
        #sleep(3)
    end

    def display_board
        puts
        puts "               Code            Keys"
        puts "Guess #1   [#{@board[0][:first]}][#{@board[0][:second]}][#{@board[0][:third]}][#{@board[0][:fourth]}]"\
             "    (#{@keys[0][0]})(#{@keys[0][1]})(#{@keys[0][2]})(#{@keys[0][3]})"

        puts "Guess #2   [#{@board[1][:first]}][#{@board[1][:second]}][#{@board[1][:third]}][#{@board[1][:fourth]}]"\
             "    (#{@keys[1][0]})(#{@keys[1][1]})(#{@keys[1][2]})(#{@keys[1][3]})"

        puts "Guess #3   [#{@board[2][:first]}][#{@board[2][:second]}][#{@board[2][:third]}][#{@board[2][:fourth]}]"\
             "    (#{@keys[2][0]})(#{@keys[2][1]})(#{@keys[2][2]})(#{@keys[2][3]})"

        puts "Guess #4   [#{@board[3][:first]}][#{@board[3][:second]}][#{@board[3][:third]}][#{@board[3][:fourth]}]"\
             "    (#{@keys[3][0]})(#{@keys[3][1]})(#{@keys[3][2]})(#{@keys[3][3]})"

        puts "Guess #5   [#{@board[4][:first]}][#{@board[4][:second]}][#{@board[4][:third]}][#{@board[4][:fourth]}]"\
             "    (#{@keys[4][0]})(#{@keys[4][1]})(#{@keys[4][2]})(#{@keys[4][3]})"

        puts "Guess #6   [#{@board[5][:first]}][#{@board[5][:second]}][#{@board[5][:third]}][#{@board[5][:fourth]}]"\
             "    (#{@keys[5][0]})(#{@keys[5][1]})(#{@keys[5][2]})(#{@keys[5][3]})"

        puts "Guess #7   [#{@board[6][:first]}][#{@board[6][:second]}][#{@board[6][:third]}][#{@board[6][:fourth]}]"\
             "    (#{@keys[6][0]})(#{@keys[6][1]})(#{@keys[6][2]})(#{@keys[6][3]})"

        puts "Guess #8   [#{@board[7][:first]}][#{@board[7][:second]}][#{@board[7][:third]}][#{@board[7][:fourth]}]"\
             "    (#{@keys[7][0]})(#{@keys[7][1]})(#{@keys[7][2]})(#{@keys[7][3]})"

        puts "Guess #9   [#{@board[8][:first]}][#{@board[8][:second]}][#{@board[8][:third]}][#{@board[8][:fourth]}]"\
             "    (#{@keys[8][0]})(#{@keys[8][1]})(#{@keys[8][2]})(#{@keys[8][3]})"

        puts "Guess #10  [#{@board[9][:first]}][#{@board[9][:second]}][#{@board[9][:third]}][#{@board[9][:fourth]}]"\
             "    (#{@keys[9][0]})(#{@keys[9][1]})(#{@keys[9][2]})(#{@keys[9][3]})"

        puts "Guess #11  [#{@board[10][:first]}][#{@board[10][:second]}][#{@board[10][:third]}][#{@board[10][:fourth]}]"\
             "    (#{@keys[10][0]})(#{@keys[10][1]})(#{@keys[10][2]})(#{@keys[10][3]})"

        puts "Guess #12  [#{@board[11][:first]}][#{@board[11][:second]}][#{@board[11][:third]}][#{@board[11][:fourth]}]"\
             "    (#{@keys[11][0]})(#{@keys[11][1]})(#{@keys[11][2]})(#{@keys[11][3]})"

             puts "MasterCode [#{@code[:first]}][#{@code[:second]}][#{@code[:third]}][#{@code[:fourth]}]"
        #hiding for test purposes
        #puts "MasterCode [#{@code_hider[:first]}][#{@code_hider[:second]}][#{@code_hider[:third]}][#{@code_hider[:fourth]}]"
    end

    def get_guess
        puts
        puts "Enter your four letter guess (example: 'abcd')"
        puts "Available letters [a][b][c][d][e][f]"
        @guess = gets.chomp
        while (@guess =~ /[abcdef]{4}/) == nil
            puts "Please enter a valid four letter guess (example: 'abcd')"
            @guess = gets.chomp
        end
    end

    def write_guess
        @index = 0

        @board[@current_guess].each do |k, v|
            @board[@current_guess][k] = @guess.split('')[@index]
            @index += 1
        end
    end

    def hash_to_array(hash, array)
        hash.each {|k, v| array << hash[k]}
    end

    def check_guess
        @index = 0
        guess_array = []
        code_array = []
        @two_keys = []
        @one_keys = []

        hash_to_array(@board[@current_guess], guess_array)
        hash_to_array(@code, code_array)

        #check for total matches
        @board[@current_guess].each do |k, v|
            if v == @code[k]
                @two_keys << '2'
            end
        end

        #check for colour matches
        code_array[1..3].each do |n|
            guess_array[0] == n ? @one_keys << '1' : nil
        end
        (code_array[2..3] << code_array[0]).each do |n|
            guess_array[1] == n ? @one_keys << '1' : nil
        end
        (code_array[0..1] << code_array[3]).each do |n|
            guess_array[2] == n ? @one_keys << '1' : nil
        end    
        code_array[0..2].each do |n| 
            guess_array[3] == n ? @one_keys << '1' : nil
        end

        @key_array = @two_keys + @one_keys
    end

    def write_key
        @keys[@current_guess] = @key_array
    end

    def next_guess
        @current_guess += 1
    end

    def check_win
        @win = @board[@current_guess] == @code ? true : false
        if @win == true
            puts "You have cracked the code!"
        end
    end

    def check_lose
        @lose = @current_guess >= 12 ? true : false
        if @lose == true
            puts "You were unable to crack the code."
        end
    end
end

game = Game.new

while true do
    game.set
    game.new_code
    game.display_instructions
    game.display_board

    until game.win || game.lose do
        game.get_guess
        game.write_guess
        game.check_guess
        game.write_key
        game.display_board
        game.check_win
        game.check_lose
        game.next_guess
    end

    puts "Play again? (y/n)"
    play_again = gets.chomp
    if play_again == 'n'
        exit
    end
end
