json.extract! paper, :id, :title, :theme_id, :subtheme_id, :content, :status, :created_at, :updated_at
json.url paper_url(paper, format: :json)
