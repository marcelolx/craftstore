class AddCpfToUsuario < ActiveRecord::Migration[5.2]
  def change
    add_column :usuarios, :cpf, :integer
  end
end
