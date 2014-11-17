User.create!([
  {email: "a@a.com", password: "a", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 5, current_sign_in_at: "2014-11-17 07:15:33", last_sign_in_at: "2014-11-17 07:07:25", current_sign_in_ip: "50.173.88.142", last_sign_in_ip: "50.173.88.142", name: "a"},
  {email: "b@b.com", password: "b", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2014-11-17 07:22:18", last_sign_in_at: "2014-11-17 07:15:01", current_sign_in_ip: "50.173.88.142", last_sign_in_ip: "50.173.88.142", name: "b"}
])
Image.create!([
  {filename: "WLFYCKNU.jpg", priv: true, user_id: 1, tag_id: nil},
  {filename: "RFTFGBIO.jpg", priv: false, user_id: 1, tag_id: nil},
  {filename: "WKMNSVON.jpg", priv: false, user_id: 1, tag_id: nil},
  {filename: "TDAHQJYM.jpg", priv: true, user_id: 1, tag_id: nil}
])
ImageUser.create!([
  {image_id: nil, user_id: 2},
  {image_id: nil, user_id: 2},
  {image_id: nil, user_id: 2},
  {image_id: nil, user_id: 2}
])
Tag.create!([
  {tag: "This is a tag", image_id: 2},
  {tag: "another tag", image_id: 2}
])
