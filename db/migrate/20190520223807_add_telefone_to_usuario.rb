class AddTelefoneToUsuario < ActiveRecord::Migration[5.2]
  def change
    add_column :usuarios, :telefone, :integer
  end
end
