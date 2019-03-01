statuses = [['Backlog', 'In Progress', 'Done'], ['Backlog', 'In Progress', 'Review', 'Done']]

2.times do |index|
  user = User.create(email: "user#{index}@example.com", first_name: 'User', last_name: "#{index}", password: "Password#{index}")
  board = Board.create(name: "Board #{index}", description: "Board #{index} description")
  user.grant(:owner, board)

  statuses[index].each do |status_name|
    status = Status.create({ name: status_name, board: board })
    if status_name == 'Backlog'
      2.times do |cards_index|
        card_name = "Card #{index}-#{cards_index}"
        Card.create(name: card_name, description: "#{card_name} description", status: status)
      end
    elsif status_name == 'In Progress'
      card_name = "Card #{index}-3"
      Card.create(name: card_name, description: "#{card_name} description", status: status)
    end
  end
end
