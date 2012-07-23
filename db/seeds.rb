# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

[
  {
      title: 'Sales Specialist IV, Networking',
      salary: 100000,
      industry: 'Production, Manufacturing'
  },
  {
      title: 'Sr. Business Development Manager',
      salary: 90000,
      industry: 'Finance, Accounting'
  },
  {
      title: 'Director, Information and Communications Technologies',
      salary: 80000,
      industry: 'Health/Medical'
  },
  {
      title: 'Senior Natural Resources Economist',
      salary: 70000,
      industry: 'Health/Medical'
  }
].each do |attrs|
  Job.create attrs
end