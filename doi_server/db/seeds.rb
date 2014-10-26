# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

dois = Doi.create(
    [
        { name: 'Google', desc: 'Google search engine', doi_num: 'da90a424ae3f47d70a2c' },
        { name: 'Reddit', desc: 'Reddit website', doi_num: '7edbe3e5806b083c3c49' },
        { name: 'Amazon', desc: 'Shopping and stuff', doi_num: '32aa746b613ae7589a5c' },
        { name: 'Yahoo', desc: 'The old Google', doi_num: '35b8e72959fc9492631c' },
        { name: 'Ebay', desc: 'The auction site', doi_num: 'e72435b892631c959fc9' }
    ]
)

urls = Url.create(
    [
        { url: 'www.google.com', doi_id: dois[0].id },
        { url: 'www.gooogle.com', doi_id: dois[0].id },
        { url: 'www.reddit.com', doi_id: dois[1].id },
        { url: 'www.amazon.com', doi_id: dois[2].id },
        { url: 'www.amazon2.com', doi_id: dois[2].id },
        { url: 'www.amazon3.com', doi_id: dois[2].id },
        { url: 'www.amazon4.com', doi_id: dois[2].id },
        { url: 'www.yahoo.com', doi_id: dois[3].id },
        { url: 'www.yahoooooo.com', doi_id: dois[3].id },
        { url: 'www.ebay.com', doi_id: dois[4].id },
        { url: 'www.e-bay.com', doi_id: dois[4].id },
        { url: 'www.eeebay.com', doi_id: dois[4].id }
    ]
)