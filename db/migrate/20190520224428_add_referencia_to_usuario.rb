class AddReferenciaToUsuario < ActiveRecord::Migration[5.2]
  def change
    add_column :usuarios, :referencia, :string
  end
end
