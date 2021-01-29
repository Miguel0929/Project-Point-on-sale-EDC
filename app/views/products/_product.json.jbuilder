json.extract! product, :id, :strDescripcion, :strPrecioUnidad, :strStock, :created_at, :updated_at
json.url product_url(product, format: :json)
