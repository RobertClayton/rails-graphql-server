module Types
  class ManufacturerType < Types::BaseObject
    field :code, String, null: true
    field :json, ManufacturerJson, null: true
  end
end
