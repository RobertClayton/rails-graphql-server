module Types
  class ManufacturerJson < Types::BaseObject
    field :label, String, null: true
    field :status, String, null: true
    field :slug, String, null: true

    def label
      JSON.parse(object)["values"]['label'].first['data']
    end

    def status
      JSON.parse(object)["values"]['status'].first['data']
    end

    def slug
      JSON.parse(object)["values"]['slug'].first['data']
    end
  end
end
