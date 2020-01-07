module Types
  class QueryType < Types::BaseObject
    field :manufacturers,
          [Types::ManufacturerType],
          null: false,
          description: 'Returns an Array of Manufacturers'

    def manufacturers
      PimCacheManufacturer.all
    end
  end
end
