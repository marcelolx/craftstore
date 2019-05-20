class AddRuaToUsuario < ActiveRecord::Migration[5.2]
  def change
    add_column :usuarios, :rua, :string
  end
end
