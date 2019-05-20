class AddNumeroEnderecoToUsuario < ActiveRecord::Migration[5.2]
  def change
    add_column :usuarios, :numero_endereco, :integer
  end
end
