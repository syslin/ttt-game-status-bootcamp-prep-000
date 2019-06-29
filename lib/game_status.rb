# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS=[[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[2,4,6],[0,4,8]]


def won?(board)
    WIN_COMBINATIONS.detect do |win_array|
    board[win_array[0]] == board[win_array[1]] &&
    board[win_array[1]] == board[win_array[2]] && 
    position_taken?(board,win_array[0])
  end
end
  
end
def full?(board)
  board.all? do |element|
    element!=""&& element=="X" || element=="O"
  end
end

def draw?(board)
  !won?(board)|| full?(board)
  
end

def over?(board)
  won?(board)||draw?(board)||full?(board) || board
end

def winner?(board)
  if player==won?(board)
    return player[player.first]
  end
end