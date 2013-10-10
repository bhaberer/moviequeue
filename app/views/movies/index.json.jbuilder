json.array!(@movies) do |movie|
  json.extract! movie, :title, :imdb_id, :year
  json.url movie_url(movie, format: :json)
end
