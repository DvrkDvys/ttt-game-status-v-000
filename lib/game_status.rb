# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [6,4,2]]

def won?(board)
  # for each win_combination in WIN_COMBINATIONS
    WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

  if board[win_combination[0]]==board[win_combination[1]]&&board[win_combination[0]]==board[win_combination[2]]&&board[win_combination[0]]!=" "
          return win_combination
        end
      end
    false
  end

def full?(board)
  if board.any? { |i| i == " " }
    return false
  end
  true
end


def draw?(board)
  if won?(board) == false && full?(board) == true
    return true
  end
  false
end


def over?(board)
  if draw?(board) == true 
    return true
  elsif won?(board) == true && (full?(board) == true || full?(board) == false)
    return true
  else full?(board) == false
    return false
  end
end
