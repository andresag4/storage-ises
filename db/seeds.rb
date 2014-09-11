# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
admin = Role.create(name: 'admin')
editor = Role.create(name: 'editor')
author = Role.create(name: 'author')
moderator = Role.create(name: 'moderator')
u = User.create(username: 'admin', email: 'admin@test.com', password: 123123123, password_confirmation: 123123123, confirmation_token: nil, confirmed_at: Time.now, updated_at: Time.now)
#Assignment.create(:role_id: admin.id, :user_id:  u.id)
u.roles << admin
u = User.create(username: 'editor', email:  'editor@test.com', password: 123123123, password_confirmation: 123123123, confirmation_token: nil, confirmed_at: Time.now, updated_at: Time.now)
#Assignment.create(role_id: editor.id, user_id:  u.id)
u.roles << editor
u = User.create(username:  'author', email:  'author@test.com', password: 123123123, password_confirmation: 123123123, confirmation_token: nil, confirmed_at: Time.now, updated_at: Time.now)
#Assignment.create(role_id: author.id, user_id:  u.id)
u.roles << author
u = User.create(username:  'moderator', email:  'moderator@test.com', password: 123123123, password_confirmation: 123123123, confirmation_token: nil, confirmed_at: Time.now, updated_at: Time.now)
#Assignment.create(role_id: moderator.id, user_id:  u.id)
u.roles << moderator