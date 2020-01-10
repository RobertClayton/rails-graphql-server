module Types
  class ManufacturerType < Types::BaseObject
    field :code, String, null: true
    field :json, ManufacturerJson, null: true

    field :label, String, null: true
    field :slug, String, null: true
    field :status, String, null: true

    def json_value(value)
      JSON.parse(object[:json])['values'][value].first['data']
    end

    def label
      json_value('label')
    end

    def slug
      json_value('slug')
    end

    def status
      json_value('status')
    end
  end
end
