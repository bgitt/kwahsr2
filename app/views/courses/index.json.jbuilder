json.array!(@courses) do |course|
  json.extract! course, :id, :name, :dropbox, :news, :content, :quiz, :number, :section, :enrollment, :maxenrollment, :location, :description, :type
  json.url course_url(course, format: :json)
end
