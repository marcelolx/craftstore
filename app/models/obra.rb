class Obra < ApplicationRecord
    belongs_to :usuario
    has_many :fotos_obra
    accepts_nested_attributes_for :fotos_obra
end
