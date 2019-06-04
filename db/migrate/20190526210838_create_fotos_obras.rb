class CreateFotosObras < ActiveRecord::Migration[5.2]
  def change
    create_table :fotos_obras do |t|
      t.integer :obra_id
      t.string :foto

      t.timestamps
    end
  end
end
