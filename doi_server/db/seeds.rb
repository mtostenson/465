# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

dois = Doi.create(
    [
        { name: 'Google', desc: 'Google search engine' },
        { name: 'RSI', desc: 'Roberts Space Industries' }
    ]
)

urls = Url.create(
    [
        { address: 'www.google.com', doi_id: dois[0].id },
        { address: 'www.gooogle.com', doi_id: dois[0].id },
        { address: 'www.robertsspaceindustries.com', doi_id: dois[1].id },
    ]
)