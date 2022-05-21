class CreateAbstracts < ActiveRecord::Migration[5.0]
  def change
    create_table :abstracts do |t|
      t.string :title
      t.text :body
      t.text :textbook
      t.text :form

      t.timestamps
    end
  end
end
