json.issues @issues do |issue|
  json.id issue.id
  json.title issue.title
  json.body issue.body
end
