json.array!(@lessons) do |lesson|
  json.extract! lesson, :id, :course_id, :name, :video, :description
  json.url lesson_url(lesson, format: :json)
end
