class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.string :comentario
      t.references :user, null: false, foreign_key: true
      t.references :publication, null: false, foreign_key: true

      t.timestamps
    end
  end
end
