class CreatePdfs < ActiveRecord::Migration[5.0]
  def change
    create_table :pdfs do |t|
      t.string :username
      t.string :date
      t.string :filename
      t.string :pdf

      t.timestamps
    end
  end
end
