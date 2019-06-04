class FotosObra < ApplicationRecord
    mount_uploader :foto, FotosObraUploader
    belongs_to :obra
end
