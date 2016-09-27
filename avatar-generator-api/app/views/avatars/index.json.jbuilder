json.array! @avatars.each do |avatar|
  json.id avatar.id
  json.image avatar.image
  json.name avatar.name
end