json.extract! obra, :id, :nome, :estilo_obra, :descricao, :preco, :quantidade, :created_at, :updated_at
json.url obra_url(obra, format: :json)
