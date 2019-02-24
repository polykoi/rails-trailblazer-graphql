boards_data = []
cards_data = []

%w[Board1 Board2 Board3].each do |board_name|
  boards_data << { name: board_name, description: "#{board_name} description" }
end

Board.create(boards_data)

%w[Card1-1 Card1-2 Card1-3].each do |card_name|
  cards_data << { name: card_name, description: "#{card_name} description", board: Board.find(1) }
end

%w[Card2-1 Card2-2 ].each do |card_name|
  cards_data << { name: card_name, description: "#{card_name} description", board: Board.find(2) }
end

Card.create(cards_data)
