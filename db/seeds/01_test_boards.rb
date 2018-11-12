%w[Board1 Board2 Board3].each do |board_name|
  board = Board.new(name: board_name, description: "#{board_name} description")
  board.save
end
