# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Users
# christina = User.create(name: "christina", email: "christina@flatironschool.com", password: "123", avatar: "https://www.codeproject.com/KB/GDI-plus/ImageProcessing2/flip.jpg")
# natalie = User.create(name: "natalie", email: "nat@flatironschool.com", password: "123", avatar: "http://animals.sandiegozoo.org/sites/default/files/2016-10/animals_hero_iguana.jpg")
dave = User.create(name: "dave", email: "dave@flatironschool.com", password: "123", avatar: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAnqAAAAJGVkZjFhZjU3LWI4NDctNDllNi04ZmMxLTkxNTI2NTg0MWFiNQ.jpg")
david = User.create(name: "david", email: "david@flatironschool.com", password: "123", avatar: "https://i.pinimg.com/736x/ef/f5/72/eff5728ed38f69ae6f0588cb483acbbc--seul-dominique.jpg")
anna = User.create(name: "anna", email: "anna@flatironschool.com", password: "123", avatar: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAwaAAAAJDMyYjhjN2IxLWUwYzktNDEwMy04MmZmLWFkNDYzODFkN2NkMw.jpg")
danielle = User.create(name: "danielle", email: "danielle@flatironschool.com", password: "123", avatar: "https://cdn-images-1.medium.com/max/1200/0*GRtb60uN7PyPuJ6K.")
matt = User.create(name: "matt", email: "matt@flatironschool.com", password: "123", avatar: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAikAAAAJGU3YTc4NWMyLTIyNTctNDNhYS05ZmE3LTUyNTIzYTE2NDJlYw.jpg")
lisa = User.create(name: "lisa", email: "lisa@flatironschool.com", password: "123", avatar: "https://lh3.googleusercontent.com/-0M2snQy2uvY/AAAAAAAAAAI/AAAAAAAAADk/4XwgNy0SV44/photo.jpg")
terrance = User.create(name: "terrance", email: "terrance@flatironschool.com", password: "123", avatar: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAgGAAAAJDA3YTQ2NWI5LTE4MGItNGZlZS1hNjRjLWQ0ODE3OTY5Njk4Zg.jpg")
ryan = User.create(name: "ryan", email: "ryan@flatironschool.com", password: "123", avatar: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAApBAAAAJGIwMjgwY2FlLThjNTYtNDEwNS05Y2NhLTEwN2NlMGU2NGMzZQ.jpg")
cole = User.create(name: "cole", email: "cole@flatironschool.com", password: "123", avatar: "https://d2w9rnfcy7mm78.cloudfront.net/1137959/display_9ca37e55a7337bdc002f9962b72cb1fd.jpg")
ashe = User.create(name: "ashe", email: "ashe@flatironschool.com", password: "123", avatar: "https://pbs.twimg.com/profile_images/784039957543411712/fTu8GxyI.jpg")
sophie = User.create(name: "sophie", email: "sophie@flatironschool.com", password: "123", avatar: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAYaAAAAJGIxNzI1YTk0LTkyZGUtNGU4MC05NzM0LWU1ZDdlNjQ1NDkyYQ.jpg")

#relationships
Relationship.create(follower_id: cole.id,followed_id: dave.id)
Relationship.create(follower_id: cole.id,followed_id: david.id)
Relationship.create(follower_id: cole.id,followed_id: lisa.id)
Relationship.create(follower_id: cole.id,followed_id: sophie.id)
Relationship.create(follower_id: cole.id,followed_id: danielle.id)
Relationship.create(follower_id: cole.id,followed_id: matt.id)
Relationship.create(follower_id: cole.id,followed_id: ryan.id)
Relationship.create(follower_id: cole.id,followed_id: anna.id)
Relationship.create(follower_id: danielle.id,followed_id: anna.id)
Relationship.create(follower_id: danielle.id,followed_id: dave.id)
Relationship.create(follower_id: danielle.id,followed_id: terrance.id)
Relationship.create(follower_id: danielle.id,followed_id: ashe.id)
Relationship.create(follower_id: danielle.id,followed_id: david.id)
Relationship.create(follower_id: danielle.id,followed_id: ryan.id)
Relationship.create(follower_id: danielle.id,followed_id: matt.id)
Relationship.create(follower_id: danielle.id,followed_id: sophie.id)
Relationship.create(follower_id: danielle.id,followed_id: lisa.id)
Relationship.create(follower_id: ashe.id,followed_id: lisa.id)
Relationship.create(follower_id: ashe.id,followed_id: anna.id)
Relationship.create(follower_id: ashe.id,followed_id: david.id)
Relationship.create(follower_id: ashe.id,followed_id: dave.id)
Relationship.create(follower_id: ashe.id,followed_id: terrance.id)
Relationship.create(follower_id: ashe.id,followed_id: matt.id)
Relationship.create(follower_id: ashe.id,followed_id: sophie.id)
Relationship.create(follower_id: ashe.id,followed_id: danielle.id)

#Design1
exploration = Design.create(title: "Exploration", url: "https://dribbble.com/shots/3998831-New-Tactics-Exploration-2", code: "http://jsfiddle.net/krisselden/gYBhh/", description: "A flow concept for New Tactics. In this version we're using two sphere's to represent the primary relationship between the victim (blue) and the violator (red)", creator_id: cole.id)
exploration_image = Image.create(filename: "https://cdn.dribbble.com/users/348942/screenshots/3998831/output2-alt.gif", design_id: exploration.id)

#tags
explorationtag1 = Tag.create(text: "flow")
explorationtag2 = Tag.create(text: "sphere")
explorationtag3 = Tag.create(text: "data visualization")
explorationtag4 = Tag.create(text: "color relationship")
DesignTag.create(design_id: exploration.id, tag_id: explorationtag1.id)
DesignTag.create(design_id: exploration.id, tag_id: explorationtag2.id)
DesignTag.create(design_id: exploration.id, tag_id: explorationtag3.id)
DesignTag.create(design_id: exploration.id, tag_id: explorationtag4.id)

#likes
Like.create(liker_id: cole.id, design_id: exploration.id)
Like.create(liker_id: dave.id, design_id: exploration.id)
Like.create(liker_id: lisa.id, design_id: exploration.id)
Like.create(liker_id: sophie.id, design_id: exploration.id)

#Comments
Comment.create(content: "Super cool", user_id: lisa.id, design_id: exploration.id)
Comment.create(content: "I love this! Even better in motion.", user_id: sophie.id, design_id: exploration.id)
Comment.create(content: "This a prototype or live code running? I'm always curious how someone actually executes something like this for production work. Do you have a team that can build these kinds of visualizations from scratch? Or are you using some data-viz library and customizing it?", user_id: dave.id, design_id: exploration.id)

#Projects
project = Project.create(title: "Data Visualization", description: "Exploring data visualization ideas for a project", creator_id: sophie.id, public: true)

#collaborations
Collaboration.create(project_id: project.id, collaborator_id: lisa.id)

#project designs
ProjectDesign.create(project_id: project.id, design_id: exploration.id)

#Design2
icon = Design.create(title: "Fun Icons", url: "https://dribbble.com/shots/3999219-Fun-icon", code: "http://jsfiddle.net/krisselden/gYBhh/", description: "Revamped official website project painted a lot of icons - I hope you like it!", creator_id: david.id)
icon_image = Image.create(filename: "https://cdn.dribbble.com/users/1334810/screenshots/3999219/1111_1x.png", design_id: icon.id)

#tags
icontag1 = Tag.create(text: "icon")
DesignTag.create(design_id: icon.id, tag_id: icontag1.id)

#likes
Like.create(liker_id: cole.id, design_id: icon.id)

#Comments
Comment.create(content: "Looks so good - can you be my designer?", user_id: danielle.id, design_id: icon.id)

#Design3
offers = Design.create(title: "Offers Temple App", url: "https://dribbble.com/shots/3999152-Offers-Temple", code: "http://jsfiddle.net/krisselden/gYBhh/", description: "Education technology app design for ed tech company that brings counseling solutions to high school students", creator_id: dave.id)
offers_image = Image.create(filename: "https://cdn.dribbble.com/users/1224447/screenshots/3999152/artboard_copy_1x_1x.png", design_id: offers.id)

#tags
offerstag1 = Tag.create(text: "app ui")
offerstag2 = Tag.create(text: "ux")
offerstag3 = Tag.create(text: "illustrations")
DesignTag.create(design_id: offers.id, tag_id: offerstag1.id)
DesignTag.create(design_id: offers.id, tag_id: offerstag2.id)
DesignTag.create(design_id: offers.id, tag_id: offerstag3.id)

#likes
Like.create(liker_id: danielle.id, design_id: offers.id)

#Comments
Comment.create(content: "Love those illustrations", user_id: danielle.id, design_id: offers.id)

#Design4
water = Design.create(title: "Watering Tracker App", url: "https://dribbble.com/shots/3997043-Watering-Tracker-App", code: "http://jsfiddle.net/krisselden/gYBhh/", description: "Here are some interactions for a watering tracker reminding users to water the plants as well as tracking the watering stats for every plant", creator_id: dave.id)
water_image = Image.create(filename: "https://cdn.dribbble.com/users/418188/screenshots/3997043/watering_tracker_app_ui_tubik.gif", design_id: water.id)

#tags
watertag1 = Tag.create(text: "app ui")
watertag2 = Tag.create(text: "ux")
watertag3 = Tag.create(text: "animation")
watertag4 = Tag.create(text: "mobile")
watertag5 = Tag.create(text: "nature")
DesignTag.create(design_id: water.id, tag_id: watertag1.id)
DesignTag.create(design_id: water.id, tag_id: watertag2.id)
DesignTag.create(design_id: water.id, tag_id: watertag3.id)
DesignTag.create(design_id: water.id, tag_id: watertag4.id)
DesignTag.create(design_id: water.id, tag_id: watertag5.id)

#likes
Like.create(liker_id: danielle.id, design_id: water.id)

#Comments
Comment.create(content: "Very nice!", user_id: dave.id, design_id: water.id)
