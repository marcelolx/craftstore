class CreateObras < ActiveRecord::Migration[5.2]
  def change
    create_table :obras do |t|
      t.integer :usuario_id
      t.string :nome
      t.string :estilo_obra
      t.text :descricao
      t.float :preco
      t.integer :quantidade

      t.timestamps
    end
  end
end
