json.array!(@documents) do |document|
  json.extract! document, :id, :name, :tags, :course, :description
  json.url document_url(document, format: :json)
end
