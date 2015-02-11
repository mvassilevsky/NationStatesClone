# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ec = Issue.create({
  title: "Test Economic Freedom Issue",
  body: "You have an opportunity to change economic freedom"
  })
ec1 = IssueOption.create({
  issue_id: ec.id,
  body: "Increase economic freedom by 10",
  ec_freedom: 10,
  soc_freedom: 0,
  pol_freedom: 0,
  tax_rate: 0,
  ecosystem: 0,
  result_txt: "economic freedom has increased"
  })
ec2 = IssueOption.create({
  issue_id: ec.id,
  body: "Decrease economic freedom by 10",
  ec_freedom: -10,
  soc_freedom: 0,
  pol_freedom: 0,
  tax_rate: 0,
  ecosystem: 0,
  result_txt: "economic freedom has decreased"
  })
ec3 = IssueOption.create({
  issue_id: ec.id,
  body: "Do nothing",
  ec_freedom: 0,
  soc_freedom: 0,
  pol_freedom: 0,
  tax_rate: 0,
  ecosystem: 0,
  result_txt: "there was an opportunity to increase economic freedom, but nothing happened"
  })
soc = Issue.create({
  title: "Test Social Freedom Issue",
  body: "You have an opportunity to change social freedom"
  })
soc1 = IssueOption.create({
  issue_id: soc.id,
  body: "Increase social freedom by 10",
  ec_freedom: 0,
  soc_freedom: 10,
  pol_freedom: 0,
  tax_rate: 0,
  ecosystem: 0,
  result_txt: "social freedom has increased"
  })
soc2 = IssueOption.create({
  issue_id: soc.id,
  body: "Decrease social freedom by 10",
  ec_freedom: 0,
  soc_freedom: -10,
  pol_freedom: 0,
  tax_rate: 0,
  ecosystem: 0,
  result_txt: "social freedom has decreased"
  })
soc3 = IssueOption.create({
  issue_id: soc.id,
  body: "Do nothing",
  ec_freedom: 0,
  soc_freedom: 0,
  pol_freedom: 0,
  tax_rate: 0,
  ecosystem: 0,
  result_txt: "there was an opportunity to increase social freedom, but nothing happened"
  })
pol = Issue.create({
  title: "Test Political Freedom Issue",
  body: "You have an opportunity to change political freedom"
  })
pol1 = IssueOption.create({
  issue_id: pol.id,
  body: "Increase political freedom by 10",
  ec_freedom: 0,
  soc_freedom: 0,
  pol_freedom: 10,
  tax_rate: 0,
  ecosystem: 0,
  result_txt: "political freedom has increased"
  })
pol2 = IssueOption.create({
  issue_id: pol.id,
  body: "Decrease political freedom by 10",
  ec_freedom: 0,
  soc_freedom: 0,
  pol_freedom: -10,
  tax_rate: 0,
  ecosystem: 0,
  result_txt: "political freedom has decreased"
  })
pol3 = IssueOption.create({
  issue_id: pol.id,
  body: "Do nothing",
  ec_freedom: 0,
  soc_freedom: 0,
  pol_freedom: 0,
  tax_rate: 0,
  ecosystem: 0,
  result_txt: "there was an opportunity to increase political freedom, but nothing happened"
  })
tax = Issue.create({
  title: "Test Tax Rate Issue",
  body: "You have an opportunity to change the tax rate"
  })
tax1 = IssueOption.create({
  issue_id: tax.id,
  body: "Increase the tax rate by 10",
  ec_freedom: 0,
  soc_freedom: 0,
  pol_freedom: 00,
  tax_rate: 10,
  ecosystem: 0,
  result_txt: "the tax rate has increased"
  })
tax2 = IssueOption.create({
  issue_id: tax.id,
  body: "Decrease the tax rate by 10",
  ec_freedom: 0,
  soc_freedom: 0,
  pol_freedom: 00,
  tax_rate: -10,
  ecosystem: 0,
  result_txt: "the tax rate has decreased"
  })
tax3 = IssueOption.create({
  issue_id: tax.id,
  body: "Do nothing",
  ec_freedom: 0,
  soc_freedom: 0,
  pol_freedom: 0,
  tax_rate: 0,
  ecosystem: 0,
  result_txt: "there was an opportunity to increase the tax rate, but nothing happened"
  })
eco = Issue.create({
  title: "Test Ecosystem Issue",
  body: "You have an opportunity to change the ecosystem"
  })
eco1 = IssueOption.create({
  issue_id: eco.id,
  body: "Increase the ecosystem by 10",
  ec_freedom: 0,
  soc_freedom: 0,
  pol_freedom: 0,
  tax_rate: 0,
  ecosystem: 10,
  result_txt: "the ecosystem has increased"
  })
eco2 = IssueOption.create({
  issue_id: eco.id,
  body: "Decrease the ecosystem by 10",
  ec_freedom: 0,
  soc_freedom: 0,
  pol_freedom: 0,
  tax_rate: 0,
  ecosystem: -10,
  result_txt: "the ecosystem has decreased"
  })
eco3 = IssueOption.create({
  issue_id: eco.id,
  body: "Do nothing",
  ec_freedom: 0,
  soc_freedom: 0,
  pol_freedom: 0,
  tax_rate: 0,
  ecosystem: 0,
  result_txt: "there was an opportunity to increase the ecosystem, but nothing happened"
  })
ni33ec = NationIssue.create({
  nation_id: 33,
  issue_id: ec.id
  })
ni34ec = NationIssue.create({
  nation_id: 34,
  issue_id: ec.id
  })
ni34soc = NationIssue.create({
  nation_id: 34,
  issue_id: soc.id
  })
ni33pol = NationIssue.create({
  nation_id: 33,
  issue_id: pol.id
  })
