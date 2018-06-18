# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [6,4,2]]


# describe "./lib/game_status.rb" do
#   describe 'WIN_COMBINATIONS' do
#     it 'defines a constant WIN_COMBINATIONS with arrays for each win combination' do
#       expect(WIN_COMBINATIONS.size).to eq(8)

#       expect(WIN_COMBINATIONS).to include_array([0,1,2])
#       expect(WIN_COMBINATIONS).to include_array([3,4,5])
#       expect(WIN_COMBINATIONS).to include_array([6,7,8])
#       expect(WIN_COMBINATIONS).to include_array([0,3,6])
#       expect(WIN_COMBINATIONS).to include_array([1,4,7])
#       expect(WIN_COMBINATIONS).to include_array([2,5,8])
#       expect(WIN_COMBINATIONS).to include_array([0,4,8])
#       expect(WIN_COMBINATIONS).to include_array([6,4,2])
#     end
#   end

  # describe "#won?" do
  #   it 'returns false for an empty board' do
  #     board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

  #     expect(won?(board)).to be_falsey
  #   end

  #   it 'returns false for a draw' do
  #     board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]

  #     expect(won?(board)).to be_falsey
  #   end