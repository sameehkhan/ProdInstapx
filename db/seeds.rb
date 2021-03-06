require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
User.destroy_all
Post.destroy_all
Like.destroy_all
Follow.destroy_all
Comment.destroy_all

demo = User.new({ username: 'demo', full_name: 'Demo', password: 'password', bio: 'The first official Instapx user'})
demo.photo.attach(io: File.open("#{Rails.root}/app/assets/images/default_user.png"), filename: 'default_user.png')
demo.save

# demo.save!
# image = open('https://s3-us-west-1.amazonaws.com/instapx-dev/4kiR8PbDgAibaVcrthWdAJr1')
# demo.photo = image 
# demo.save

# suavio = User.new({ username: 'suavio', full_name: 'Savio Rodrigues', password: 'password'})
# image = open('https://s3-us-west-1.amazonaws.com/instapx-dev/4kiR8PbDgAibaVcrthWdAJr1')
# demo.photo = image 
# demo.save
# file = open('https://s3.us-west-1.amazonaws.com/instapx-dev/4kiR8PbDgAibaVcrthWdAJr1?response-content-disposition=inline&X-Amz-Security-Token=FQoGZXIvYXdzEMP%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaDFoabubvDgatHQa%2BdiK4A5PpeIhfjfW%2BRrwXLyP9UVZhSuXAZDgMPdE40r%2FaehyFk3ZQ%2FovU%2BQ7iagUfDJrJhbPILdLgwtPT59ar7ESGl1FTikPs7CTzXRT0zJ0TlhnCQYQH0raXxz0YHcXDAmzXh0YmwlDLpMITGXDgyjbQe8QxNlHul6gxm3VilhY1daz%2FSMWuVijbRJMBu%2Fzl5VEz%2FHRVKoB2AzDvu1WypUqc6UJCdqcYg2V3Rs3fsm0Db%2F6hA0GueVka6kefkJodD2yLPNmNxVD5FrxR%2BY0nrsi9nckOypDy8nTSEswun0M9lV8d4NlDPSSSOgFB7OZeBPnke01To4q4rR%2BfuvuefbFsdM6WLQPcAURmMSHqojtifqqXVdJu1%2F3%2FDL1eYdpdtKJiqSrZXbImB1eeeGNe8ztuwGIWxICn5Xi0pnFz1MpE%2FaAwrQaVDfrAWjAM%2F6SGwUtfdok3NrAfK7xR4zYLSdXlY5XDc%2FlS75%2BClzIWd6mZhbefJwMT88tLE3amhZx9pdDB5r1Jin9VTTA2gRveXuG8XbQ0HbM%2BIrfm%2BuirQ%2FcXnpiw06MpTspEr9yYN7QSBEKhKKdy%2BFVs9np%2FKLO%2FvuEF&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20190104T232710Z&X-Amz-SignedHeaders=host&X-Amz-Expires=300&X-Amz-Credential=ASIASEMHSR43ZEQRXMU3%2F20190104%2Fus-west-1%2Fs3%2Faws4_request&X-Amz-Signature=53f1de1f0e54c6b5a50ecc4404ea6abdd0e6fb9efb7ad7f32131d2047803f488')
# demo.photo.attach(io: file, filename: 'profile-pic')
# demo.save!

# #   Character.create(name: 'Luke', movie: movies.first)

# require 'open-uri'
# image = open('http://s3.amazonaws.com/Buket_name/..path../thumb_smile.png')

# b = Blog.new
# b.title = "a blog"
# b.body = "some text"
# b.image = image
# b.save
# file = File.open('app/assets/images/instagram.png')
# post.photo.attach(io: file, filename: 'instagram.png')