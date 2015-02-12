json.nations @nations do |nation|
  json.id nation.id
  json.name nation.name
  json.gov_type nation.gov_type
  json.motto nation.motto
end
