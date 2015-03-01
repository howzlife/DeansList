json.array!(@pdfs) do |pdf|
  json.extract! pdf, :id, :course_id
  json.url pdf_url(pdf, format: :json)
end
