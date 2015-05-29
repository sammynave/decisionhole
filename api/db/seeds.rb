# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


question1 = Question.create!(title: "worf or gandalf")
Choice.create!(title: "worf", image_url: "http://www.startrek.com/legacy_media/images/200307/worf03/320x240.jpg", question: question1)
Choice.create!(title: "gandalf", image_url: "http://img4.wikia.nocookie.net/__cb20121110131754/lotr/images/e/e7/Gandalf_the_Grey.jpg", question: question1)


question2 = Question.create!(title: "which one is a highlander?")
Choice.create!(title: "joe", image_url: "http://static1.squarespace.com/static/5074479384ae5bd7fb73a3d1/t/5196441fe4b05b135b1730fa/1368802336959/joe.png", question: question2)
Choice.create!(title: "duncan", image_url: "http://static.comicvine.com/uploads/original/11120/111209450/4297023-jdkzrzbqqkmn0rcyxfs8rs6aogw.jpg", question: question2)
