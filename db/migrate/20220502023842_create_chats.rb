class CreateChats < ActiveRecord::Migration[5.0]
  def change
    create_table :chats do |t|
      t.text :body
      t.string :user
      t.string :date

      t.timestamps
    end
  end
end
