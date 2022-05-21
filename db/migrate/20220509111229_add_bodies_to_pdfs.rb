class AddBodiesToPdfs < ActiveRecord::Migration[5.0]
  def change
    add_column :pdfs, :body, :text
  end
end
