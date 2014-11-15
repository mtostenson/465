# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


images = Image.create(
    [
        {
            filename: 'img1.jpg', pub: 'true', user_id: 'user1'
        },
        {
            filename: 'img2.jpg', pub: 'true', user_id: 'user2'
        },
        {
            filename: 'img3.jpg', pub: 'true', user_id: 'user1'
        }
    ]
)

tags = Tag.create(
    [
        {
            tag: 'tag1', image_id: images[0].id   
        },
        {
            tag: 'tag2', image_id: images[1].id
        },
        {
            tag: 'tag3', image_id: images[2].id
        }
    ]
)