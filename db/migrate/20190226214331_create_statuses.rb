class CreateStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :statuses do |t|
      t.string :name, index: :unique
      t.integer :position
      t.belongs_to :board, index: true, foreign_key: true

      t.timestamps
    end
  end
end
