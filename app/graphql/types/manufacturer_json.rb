module Types
  class ManufacturerJson < Types::BaseObject
    field :label, String, null: true
    field :status, String, null: true
    field :slug, String, null: true

    def json_value(value)
      JSON.parse(object)['values'][value].first['data']
    end

    def label
      json_value('label')
    end

    def status
      json_value('status')
    end

    def slug
      json_value('slug')
    end
  end
end
