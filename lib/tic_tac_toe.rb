class TicTacToe

    attr_accessor :board

    def initialize 
        @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    end 
        WIN_COMBINATIONS = [
            [0, 1, 2],
            [3, 4, 5],
            [6, 7, 8],
            [0, 3, 6],
            [1, 4, 7],
            [2, 5, 8],
            [0, 4, 8],
            [2, 4, 6]
        ]


        def display_board 
            puts " #{board[0]} | #{board[1]} | #{board[2]} "
            puts "-----------"
            puts " #{board[3]} | #{board[4]} | #{board[5]} "
            puts "-----------"
            puts " #{board[6]} | #{board[7]} | #{board[8]} "
         end

        def input_to_index (user_input)
            user_input.to_i - 1
        end

        def move(index, player_token = x)
            board[index] = player_token
        end

        def position_taken?(index)
            if (board[index] == " ")
                 false
            else 
                 true
            end
        end

        def valid_move?(index)
            if !position_taken?(index) && index <9
                true
            else
                false
            end
        end

        def turn_count
            counter = 0
            board.each do |spaces|
               if spaces == "X" || spaces == "O"
                  counter += 1
               end
            end
            counter
         end
         


        def current_player
            turn_count.even? ? "X" : "O"

        end

        def turn
            puts "Please enter 1-9"
            user_input = gets.strip.chop
            index = input_to_index(user_input)
            if valid_move?(index)
                token = current_player
                move(index, token)
            else
                turn
            end
            display_board
        end


        def won?
        end

        def full?
        end

        def draw?
        end

        def over?
        end

        def winner
        end

        def play
        end








end
