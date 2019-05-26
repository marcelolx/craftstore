json.extract! fotos_obra, :id, :obra_id, :foto, :created_at, :updated_at
json.url fotos_obra_url(fotos_obra, format: :json)
