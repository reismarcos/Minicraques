json.extract! product, :id, :name, :nationality_id, :team_id, :serie_id, :price, :code, :link, :box, :status, :line_id, :number, :picture, :bio, :factory_id, :created_at, :updated_at
json.url product_url(product, format: :json)
