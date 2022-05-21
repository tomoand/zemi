class AddDateToAbstracts < ActiveRecord::Migration[5.0]
  def change
    add_column :abstracts, :date, :string
  end
end
