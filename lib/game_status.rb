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
   
    position_1 = board[win_index_1] # load the value of the board at win_index_1
    position_2 = board[win_index_2] # load the value of the board at win_index_2
    position_3 = board[win_index_3] # load the value of the board at win_index_3
   
    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination
    else
     false
   end
  end
end
  
  



  # describe "#won?" do
  #   it 'returns false for an empty board' do
  #     board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

  #     expect(won?(board)).to be_falsey
  #   end

  #   it 'returns false for a draw' do
  #     board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]

  #     expect(won?(board)).to be_falsey
  #   end