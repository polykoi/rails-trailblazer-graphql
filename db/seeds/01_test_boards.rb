
boards_data = %w[Board1 Board2].map do |board_name|
  { name: board_name, description: "#{board_name} description" }
end

Board.create(boards_data)

statuses_data = []
cards_data = []

['Backlog', 'In Progress', 'Done'].each do |status_name|
  statuses_data << { name: status_name, board: Board.find(1) }
end

['Backlog', 'In Progress', 'Review', 'Done'].each do |status_name|
  statuses_data << { name: status_name, board: Board.find(2) }
end

Status.create(statuses_data)

%w[Card1-1 Card1-2 Card1-3].each do |card_name|
  cards_data << { name: card_name, description: "#{card_name} description", status: Board.find(1).statuses.find_by(name: 'Backlog') }
end

cards_data << { name: 'Card2-1', description: "Card2-1 description", status: Board.find(2).statuses.find_by(name: 'Backlog') }
cards_data << { name: 'Card2-2', description: "Card2-1 description", status: Board.find(2).statuses.find_by(name: 'In Progress') }

Card.create(cards_data)
