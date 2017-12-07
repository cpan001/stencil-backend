# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Users
christina = User.create(name: "christina", email: "christina@flatironschool.com", password: "123", avatar: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/p/3/005/056/1c8/14298ef.jpg")
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
Relationship.create(follower_id: cole.id,followed_id: christina.id)
Relationship.create(follower_id: danielle.id,followed_id: anna.id)
Relationship.create(follower_id: danielle.id,followed_id: dave.id)
Relationship.create(follower_id: danielle.id,followed_id: terrance.id)
Relationship.create(follower_id: danielle.id,followed_id: ashe.id)
Relationship.create(follower_id: danielle.id,followed_id: david.id)
Relationship.create(follower_id: danielle.id,followed_id: ryan.id)
Relationship.create(follower_id: danielle.id,followed_id: matt.id)
Relationship.create(follower_id: danielle.id,followed_id: sophie.id)
Relationship.create(follower_id: danielle.id,followed_id: lisa.id)
Relationship.create(follower_id: danielle.id,followed_id: christina.id)
Relationship.create(follower_id: ashe.id,followed_id: lisa.id)
Relationship.create(follower_id: ashe.id,followed_id: anna.id)
Relationship.create(follower_id: ashe.id,followed_id: david.id)
Relationship.create(follower_id: ashe.id,followed_id: dave.id)
Relationship.create(follower_id: ashe.id,followed_id: terrance.id)
Relationship.create(follower_id: ashe.id,followed_id: matt.id)
Relationship.create(follower_id: ashe.id,followed_id: sophie.id)
Relationship.create(follower_id: ashe.id,followed_id: danielle.id)
Relationship.create(follower_id: ashe.id,followed_id: christina.id)
Relationship.create(follower_id: terrance.id,followed_id: christina.id)
Relationship.create(follower_id: dave.id,followed_id: christina.id)
Relationship.create(follower_id: david.id,followed_id: christina.id)
Relationship.create(follower_id: sophie.id,followed_id: christina.id)
Relationship.create(follower_id: lisa.id,followed_id: christina.id)
Relationship.create(follower_id: matt.id,followed_id: christina.id)
Relationship.create(follower_id: christina.id,followed_id: ashe.id)
Relationship.create(follower_id: christina.id,followed_id: danielle.id)
Relationship.create(follower_id: christina.id,followed_id: david.id)
Relationship.create(follower_id: christina.id,followed_id: dave.id)
Relationship.create(follower_id: christina.id,followed_id: lisa.id)
Relationship.create(follower_id: christina.id,followed_id: anna.id)
Relationship.create(follower_id: christina.id,followed_id: cole.id)
Relationship.create(follower_id: christina.id,followed_id: ryan.id)
Relationship.create(follower_id: christina.id,followed_id: matt.id)

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
icon = Design.create(title: "Fun Icons", url: "https://dribbble.com/shots/3999219-Fun-icon", code: "http://jsfiddle.net/krisselden/gYBhh/", description: "Revamped official website project painted a lot of icons - I hope you like it!", creator_id: christina.id)
icon_image = Image.create(filename: "https://cdn.dribbble.com/users/1334810/screenshots/3999219/1111_1x.png", design_id: icon.id)

#tags
icontag1 = Tag.create(text: "icon")
DesignTag.create(design_id: icon.id, tag_id: icontag1.id)

#likes
Like.create(liker_id: christina.id, design_id: icon.id)
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
Like.create(liker_id: dave.id, design_id: offers.id)
Like.create(liker_id: danielle.id, design_id: offers.id)

#Comments
Comment.create(content: "Love those illustrations", user_id: danielle.id, design_id: offers.id)

#Design4
water = Design.create(title: "Watering Tracker App", url: "https://dribbble.com/shots/3997043-Watering-Tracker-App", code: "http://jsfiddle.net/krisselden/gYBhh/", description: "Here are some interactions for a watering tracker reminding users to water the plants as well as tracking the watering stats for every plant", creator_id: christina.id)
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
Like.create(liker_id: christina.id, design_id: water.id)
Like.create(liker_id: danielle.id, design_id: water.id)

#Comments
Comment.create(content: "Very nice!", user_id: dave.id, design_id: water.id)

#Design5
dating = Design.create(title: "Dating App", url: "https://dribbble.com/shots/3982202-Dating-app-search-by-photo-and-settings-Dark-version", code: "http://jsfiddle.net/krisselden/gYBhh/", description: "Dating app search by photo and settings (dark version)", creator_id: christina.id)
dating_image = Image.create(filename: "https://cdn.dribbble.com/users/452635/screenshots/3982202/15.3.dr_1x.png", design_id: dating.id)

#tags
datingtag1 = Tag.create(text: "app ui")
datingtag2 = Tag.create(text: "ux")
datingtag3 = Tag.create(text: "dating")
datingtag4 = Tag.create(text: "mobile")
datingtag5 = Tag.create(text: "social")
DesignTag.create(design_id: dating.id, tag_id: datingtag1.id)
DesignTag.create(design_id: dating.id, tag_id: datingtag2.id)
DesignTag.create(design_id: dating.id, tag_id: datingtag3.id)
DesignTag.create(design_id: dating.id, tag_id: datingtag4.id)
DesignTag.create(design_id: dating.id, tag_id: datingtag5.id)

#likes
Like.create(liker_id: christina.id, design_id: dating.id)
Like.create(liker_id: danielle.id, design_id: dating.id)
Like.create(liker_id: dave.id, design_id: dating.id)
Like.create(liker_id: ryan.id, design_id: dating.id)
Like.create(liker_id: david.id, design_id: dating.id)

#Comments
Comment.create(content: "Love your choice of colors.", user_id: danielle.id, design_id: dating.id)
Comment.create(content: "Love this!", user_id: anna.id, design_id: dating.id)
Comment.create(content: "Great colors", user_id: david.id, design_id: dating.id)

#Design6#####################################################################
northface = Design.create(title: "Exploring The North Face", url: "https://dribbble.com/shots/3275340-Exploring-The-North-Face", code: "http://jsfiddle.net/krisselden/gYBhh/", description: "Here's a little interaction I came up with while exploring ideas for TheNorthFace site. Scrolling through the clouds takes you farther.", creator_id: christina.id)
northface_image = Image.create(filename: "https://cdn.dribbble.com/users/14268/screenshots/3275340/northface.gif", design_id: northface.id)

#tags
northfacetag1 = Tag.create(text: "app ui")
northfacetag2 = Tag.create(text: "ux")
northfacetag3 = Tag.create(text: "northface")
northfacetag4 = Tag.create(text: "animation")
northfacetag5 = Tag.create(text: "typography")
northfacetag6 = Tag.create(text: "cloud")
northfacetag7 = Tag.create(text: "mountain")
DesignTag.create(design_id: northface.id, tag_id: northfacetag1.id)
DesignTag.create(design_id: northface.id, tag_id: northfacetag2.id)
DesignTag.create(design_id: northface.id, tag_id: northfacetag3.id)
DesignTag.create(design_id: northface.id, tag_id: northfacetag4.id)
DesignTag.create(design_id: northface.id, tag_id: northfacetag5.id)
DesignTag.create(design_id: northface.id, tag_id: northfacetag6.id)
DesignTag.create(design_id: northface.id, tag_id: northfacetag7.id)

#likes
Like.create(liker_id: christina.id, design_id: northface.id)
Like.create(liker_id: danielle.id, design_id: northface.id)
Like.create(liker_id: dave.id, design_id: northface.id)
Like.create(liker_id: ryan.id, design_id: northface.id)
Like.create(liker_id: david.id, design_id: northface.id)
Like.create(liker_id: ashe.id, design_id: northface.id)

#Comments
Comment.create(content: "This is brilliant, great idea!", user_id: danielle.id, design_id: northface.id)
Comment.create(content: "Yes", user_id: anna.id, design_id: northface.id)
Comment.create(content: "Love this!", user_id: david.id, design_id: northface.id)

#Design7#####################################################################
teachable = Design.create(title: "Teachable Banner Images", url: "https://dribbble.com/shots/3641101-Teachable-Banner-Images", code: "http://jsfiddle.net/krisselden/gYBhh/", description: "From Teachable's Banner illustrations", creator_id: christina.id)
teachable_image = Image.create(filename: "https://cdn.dribbble.com/users/345970/screenshots/3641101/shot_1x.png", design_id: teachable.id)

#tags
teachabletag1 = Tag.create(text: "app ui")
teachabletag2 = Tag.create(text: "landing page")
teachabletag3 = Tag.create(text: "teachable")
teachabletag4 = Tag.create(text: "illustration")
teachabletag5 = Tag.create(text: "icons")
DesignTag.create(design_id: teachable.id, tag_id: teachabletag1.id)
DesignTag.create(design_id: teachable.id, tag_id: teachabletag2.id)
DesignTag.create(design_id: teachable.id, tag_id: teachabletag3.id)
DesignTag.create(design_id: teachable.id, tag_id: teachabletag4.id)
DesignTag.create(design_id: teachable.id, tag_id: teachabletag5.id)


#likes
Like.create(liker_id: christina.id, design_id: teachable.id)
Like.create(liker_id: danielle.id, design_id: teachable.id)
Like.create(liker_id: dave.id, design_id: teachable.id)
Like.create(liker_id: ryan.id, design_id: teachable.id)
Like.create(liker_id: david.id, design_id: teachable.id)
Like.create(liker_id: ashe.id, design_id: teachable.id)

#Comments
Comment.create(content: "Nice work!", user_id: danielle.id, design_id: teachable.id)

#Design8#####################################################################
gradient = Design.create(title: "Gradient Boxes", url: "https://dribbble.com/shots/3681200-Grabient", code: "http://jsfiddle.net/krisselden/gYBhh/", description: "Tool that allows users to quickly discover modify and share gradients.", creator_id: christina.id)
gradient_image = Image.create(filename: "https://cdn.dribbble.com/users/14268/screenshots/3681200/00_1x.png", design_id: gradient.id)

#tags
gradienttag1 = Tag.create(text: "app")
gradienttag2 = Tag.create(text: "mobile")
gradienttag3 = Tag.create(text: "gradient")
DesignTag.create(design_id: gradient.id, tag_id: gradienttag1.id)
DesignTag.create(design_id: gradient.id, tag_id: gradienttag2.id)
DesignTag.create(design_id: gradient.id, tag_id: gradienttag3.id)


#likes
Like.create(liker_id: christina.id, design_id: gradient.id)
Like.create(liker_id: danielle.id, design_id: gradient.id)
Like.create(liker_id: dave.id, design_id: gradient.id)
Like.create(liker_id: ryan.id, design_id: gradient.id)
Like.create(liker_id: david.id, design_id: gradient.id)
Like.create(liker_id: ashe.id, design_id: gradient.id)

#Comments
Comment.create(content: "Cool", user_id: danielle.id, design_id: gradient.id)

#Design9#####################################################################
dashboard = Design.create(title: "Dashboard Menu", url: "https://dribbble.com/shots/4002144-Dashboard-Menu", code: "http://jsfiddle.net/krisselden/gYBhh/", description: "Menu from a simple app that allows you to view all outlays in one place.", creator_id: christina.id)
dashboard_image = Image.create(filename: "https://cdn.dribbble.com/users/1434028/screenshots/4002144/artboard_1x.png", design_id: dashboard.id)

#tags
dashboardtag1 = Tag.create(text: "calendar")
dashboardtag2 = Tag.create(text: "dashboard")
dashboardtag3 = Tag.create(text: "graphs")
dashboardtag4 = Tag.create(text: "tracking")
dashboardtag5 = Tag.create(text: "payment")
DesignTag.create(design_id: dashboard.id, tag_id: dashboardtag1.id)
DesignTag.create(design_id: dashboard.id, tag_id: dashboardtag2.id)
DesignTag.create(design_id: dashboard.id, tag_id: dashboardtag3.id)
DesignTag.create(design_id: dashboard.id, tag_id: dashboardtag4.id)
DesignTag.create(design_id: dashboard.id, tag_id: dashboardtag5.id)


#likes
Like.create(liker_id: christina.id, design_id: dashboard.id)
Like.create(liker_id: danielle.id, design_id: dashboard.id)
Like.create(liker_id: dave.id, design_id: dashboard.id)
Like.create(liker_id: ryan.id, design_id: dashboard.id)
Like.create(liker_id: david.id, design_id: dashboard.id)
Like.create(liker_id: ashe.id, design_id: dashboard.id)

#Comments
Comment.create(content: "Cool", user_id: danielle.id, design_id: dashboard.id)

#Design10#####################################################################
music = Design.create(title: "Music Concept", url: "https://dribbble.com/shots/4001852-Spotify-Thingy-Concept", code: "http://jsfiddle.net/krisselden/gYBhh/", description: "Music concept landing page", creator_id: christina.id)
music_image = Image.create(filename: "https://cdn.dribbble.com/users/440947/screenshots/4001852/dribbbleshot_1x.png", design_id: music.id)

#tags
musictag1 = Tag.create(text: "landing page")
musictag2 = Tag.create(text: "music")
musictag3 = Tag.create(text: "ui")
musictag4 = Tag.create(text: "web design")
DesignTag.create(design_id: music.id, tag_id: musictag1.id)
DesignTag.create(design_id: music.id, tag_id: musictag2.id)
DesignTag.create(design_id: music.id, tag_id: musictag3.id)
DesignTag.create(design_id: music.id, tag_id: musictag4.id)

#likes
Like.create(liker_id: christina.id, design_id: music.id)
Like.create(liker_id: danielle.id, design_id: music.id)
Like.create(liker_id: dave.id, design_id: music.id)
Like.create(liker_id: ryan.id, design_id: music.id)
Like.create(liker_id: david.id, design_id: music.id)
Like.create(liker_id: ashe.id, design_id: music.id)

#Comments
Comment.create(content: "Cool", user_id: danielle.id, design_id: music.id)

#Design11#####################################################################
holocards = Design.create(title: "Holocards", url: "https://dribbble.com/shots/3296825-Holocards", code: "http://jsfiddle.net/krisselden/gYBhh/", description: "Animated version of holocards design", creator_id: christina.id)
holocards_image = Image.create(filename: "https://cdn.dribbble.com/users/78637/screenshots/3296825/holocards.gif", design_id: holocards.id)

#tags
holocardstag1 = Tag.create(text: "animation")
holocardstag2 = Tag.create(text: "holocards")
holocardstag3 = Tag.create(text: "augmented")
holocardstag4 = Tag.create(text: "news")
DesignTag.create(design_id: holocards.id, tag_id: holocardstag1.id)
DesignTag.create(design_id: holocards.id, tag_id: holocardstag2.id)
DesignTag.create(design_id: holocards.id, tag_id: holocardstag3.id)
DesignTag.create(design_id: holocards.id, tag_id: holocardstag4.id)

#likes
Like.create(liker_id: christina.id, design_id: holocards.id)
Like.create(liker_id: danielle.id, design_id: holocards.id)
Like.create(liker_id: dave.id, design_id: holocards.id)
Like.create(liker_id: ryan.id, design_id: holocards.id)
Like.create(liker_id: david.id, design_id: holocards.id)
Like.create(liker_id: ashe.id, design_id: holocards.id)

#Comments
Comment.create(content: "Cool", user_id: danielle.id, design_id: holocards.id)

#Design13#####################################################################
flowers = Design.create(title: "Flowers Landing Page", url: "https://dribbble.com/shots/3966568-Flowers", code: "http://jsfiddle.net/krisselden/gYBhh/", description: "Animated flowers landing page", creator_id: christina.id)
flowers_image = Image.create(filename: "https://cdn.dribbble.com/users/1166255/screenshots/3966568/flowers.gif", design_id: flowers.id)

#tags
flowerstag1 = Tag.create(text: "animation")
flowerstag2 = Tag.create(text: "flowers")
flowerstag3 = Tag.create(text: "landing page")
DesignTag.create(design_id: flowers.id, tag_id: flowerstag1.id)
DesignTag.create(design_id: flowers.id, tag_id: flowerstag2.id)
DesignTag.create(design_id: flowers.id, tag_id: flowerstag3.id)

#likes
Like.create(liker_id: christina.id, design_id: flowers.id)
Like.create(liker_id: danielle.id, design_id: flowers.id)
Like.create(liker_id: dave.id, design_id: flowers.id)
Like.create(liker_id: ryan.id, design_id: flowers.id)
Like.create(liker_id: david.id, design_id: flowers.id)
Like.create(liker_id: ashe.id, design_id: flowers.id)

#Comments
Comment.create(content: "Cool", user_id: danielle.id, design_id: flowers.id)

#Design14#####################################################################
matchpool = Design.create(title: "Matchpool", url: "https://dribbble.com/shots/3671872-Matchpool-Landing-Page", code: "http://jsfiddle.net/krisselden/gYBhh/", description: "Design from matchpool.  Great illustrations and UI/UX as well", creator_id: christina.id)
matchpool_image = Image.create(filename: "https://cdn.dribbble.com/users/345970/screenshots/3671872/shot_1x.png", design_id: matchpool.id)

#tags
matchpooltag1 = Tag.create(text: "community")
matchpooltag2 = Tag.create(text: "matchpool")
matchpooltag3 = Tag.create(text: "landing page")
DesignTag.create(design_id: matchpool.id, tag_id: matchpooltag1.id)
DesignTag.create(design_id: matchpool.id, tag_id: matchpooltag2.id)
DesignTag.create(design_id: matchpool.id, tag_id: matchpooltag3.id)

#likes
Like.create(liker_id: christina.id, design_id: matchpool.id)
Like.create(liker_id: danielle.id, design_id: matchpool.id)
Like.create(liker_id: dave.id, design_id: matchpool.id)
Like.create(liker_id: ryan.id, design_id: matchpool.id)
Like.create(liker_id: david.id, design_id: matchpool.id)
Like.create(liker_id: ashe.id, design_id: matchpool.id)

#Comments
Comment.create(content: "Cool", user_id: danielle.id, design_id: matchpool.id)

#Design15#####################################################################
travel = Design.create(title: "Travel Exploration Website", url: "https://dribbble.com/shots/3241533-Lonely-Planet-HP-Marquee-exploration", code: "http://jsfiddle.net/krisselden/gYBhh/", description: "My explorations were pretty much focused on the general execution of the layout / content density, the motion users see when they first land and some other micro interactions on hover or scroll. As always I used @Framer for the interactive/motion part.", creator_id: christina.id)
travel_image = Image.create(filename: "https://cdn.dribbble.com/users/59138/screenshots/3241533/frontpage_motion_170124_optimized_web.gif", design_id: travel.id)

#tags
traveltag1 = Tag.create(text: "parallax")
traveltag2 = Tag.create(text: "travel")
traveltag3 = Tag.create(text: "landing page")
DesignTag.create(design_id: travel.id, tag_id: traveltag1.id)
DesignTag.create(design_id: travel.id, tag_id: traveltag2.id)
DesignTag.create(design_id: travel.id, tag_id: traveltag3.id)

#likes
Like.create(liker_id: christina.id, design_id: travel.id)
Like.create(liker_id: danielle.id, design_id: travel.id)
Like.create(liker_id: dave.id, design_id: travel.id)
Like.create(liker_id: ryan.id, design_id: travel.id)
Like.create(liker_id: david.id, design_id: travel.id)
Like.create(liker_id: ashe.id, design_id: travel.id)

#Comments
Comment.create(content: "Cool", user_id: danielle.id, design_id: travel.id)

#Design16#####################################################################
job = Design.create(title: "Job Dashboard", url: "https://dribbble.com/shots/1315388-Dashboard-Web-App-Product-UI-Design-Job-Summary", code: "http://jsfiddle.net/krisselden/gYBhh/", description: "Job Summary screen of a career app project. This is the admin view with some metrics and job description", creator_id: christina.id)
job_image = Image.create(filename: "https://cdn.dribbble.com/users/44126/screenshots/1315388/job_summary_shot.png", design_id: job.id)

#tags
jobtag1 = Tag.create(text: "dashboard")
jobtag2 = Tag.create(text: "data")
jobtag3 = Tag.create(text: "analytics")
jobtag4 = Tag.create(text: "graph")
jobtag5 = Tag.create(text: "visualization")
DesignTag.create(design_id: job.id, tag_id: jobtag1.id)
DesignTag.create(design_id: job.id, tag_id: jobtag2.id)
DesignTag.create(design_id: job.id, tag_id: jobtag3.id)
DesignTag.create(design_id: job.id, tag_id: jobtag4.id)
DesignTag.create(design_id: job.id, tag_id: jobtag5.id)

#likes
Like.create(liker_id: christina.id, design_id: job.id)
Like.create(liker_id: danielle.id, design_id: job.id)
Like.create(liker_id: dave.id, design_id: job.id)
Like.create(liker_id: ryan.id, design_id: job.id)
Like.create(liker_id: david.id, design_id: job.id)
Like.create(liker_id: ashe.id, design_id: job.id)

#Comments
Comment.create(content: "Cool", user_id: danielle.id, design_id: job.id)

#Design17#####################################################################
social = Design.create(title: "Social Dashboard", url: "https://dribbble.com/shots/3512918-dashboard-UI", code: "http://jsfiddle.net/krisselden/gYBhh/", description: "Social dashboard for communicating with others", creator_id: christina.id)
social_image = Image.create(filename: "https://cdn.dribbble.com/users/257709/screenshots/3512918/shot_pehia_50__1x.png", design_id: social.id)

#tags
socialtag1 = Tag.create(text: "dashboard")
socialtag2 = Tag.create(text: "social")
socialtag3 = Tag.create(text: "ui")
DesignTag.create(design_id: social.id, tag_id: socialtag1.id)
DesignTag.create(design_id: social.id, tag_id: socialtag2.id)
DesignTag.create(design_id: social.id, tag_id: socialtag3.id)

#likes
Like.create(liker_id: christina.id, design_id: social.id)
Like.create(liker_id: danielle.id, design_id: social.id)
Like.create(liker_id: dave.id, design_id: social.id)
Like.create(liker_id: ryan.id, design_id: social.id)
Like.create(liker_id: david.id, design_id: social.id)
Like.create(liker_id: ashe.id, design_id: social.id)

#Comments
Comment.create(content: "Cool", user_id: danielle.id, design_id: social.id)

#Design18#####################################################################
food = Design.create(title: "Food Website", url: "https://dribbble.com/shots/890759-Ui-Kit-Metro", code: "http://jsfiddle.net/krisselden/gYBhh/", description: "Food website landing page", creator_id: christina.id)
food_image = Image.create(filename: "https://cdn.dribbble.com/users/13307/screenshots/890759/metro_1x.jpg", design_id: food.id)

#tags
foodtag1 = Tag.create(text: "landing page")
foodtag2 = Tag.create(text: "food")
foodtag3 = Tag.create(text: "ui")
DesignTag.create(design_id: food.id, tag_id: foodtag1.id)
DesignTag.create(design_id: food.id, tag_id: foodtag2.id)
DesignTag.create(design_id: food.id, tag_id: foodtag3.id)

#likes
Like.create(liker_id: christina.id, design_id: food.id)
Like.create(liker_id: danielle.id, design_id: food.id)
Like.create(liker_id: dave.id, design_id: food.id)
Like.create(liker_id: ryan.id, design_id: food.id)
Like.create(liker_id: david.id, design_id: food.id)
Like.create(liker_id: ashe.id, design_id: food.id)

#Comments
Comment.create(content: "Cool", user_id: danielle.id, design_id: food.id)

#Design19#####################################################################
backpack = Design.create(title: "Backpack Store Site", url: "https://dribbble.com/shots/2807011-Backpack-Store-Site-Concept", code: "http://jsfiddle.net/krisselden/gYBhh/", description: "Mr. Bara backpack store homepage", creator_id: christina.id)
backpack_image = Image.create(filename: "https://cdn.dribbble.com/users/746931/screenshots/2807011/home_bag_01_1x.jpg", design_id: backpack.id)

#tags
backpacktag1 = Tag.create(text: "landing page")
backpacktag2 = Tag.create(text: "fashion")
backpacktag3 = Tag.create(text: "ui")
DesignTag.create(design_id: backpack.id, tag_id: backpacktag1.id)
DesignTag.create(design_id: backpack.id, tag_id: backpacktag2.id)
DesignTag.create(design_id: backpack.id, tag_id: backpacktag3.id)

#likes
Like.create(liker_id: christina.id, design_id: backpack.id)
Like.create(liker_id: danielle.id, design_id: backpack.id)
Like.create(liker_id: dave.id, design_id: backpack.id)
Like.create(liker_id: ryan.id, design_id: backpack.id)
Like.create(liker_id: david.id, design_id: backpack.id)
Like.create(liker_id: ashe.id, design_id: backpack.id)

#Comments
Comment.create(content: "Cool", user_id: danielle.id, design_id: backpack.id)

#Design20#####################################################################
shopping = Design.create(title: "Social Shopping App", url: "https://dribbble.com/shots/2544292-Social-Shopping-App", code: "http://jsfiddle.net/krisselden/gYBhh/", description: "Social shopping app where the author curates lists of fashion items and outfits. Follow and buy the things other Fashionistas enjoy!", creator_id: christina.id)
shopping_image = Image.create(filename: "https://cdn.dribbble.com/users/102697/screenshots/2544292/dribbble_1x.png", design_id: shopping.id)

#tags
shoppingtag1 = Tag.create(text: "app ui")
shoppingtag2 = Tag.create(text: "fashion")
shoppingtag3 = Tag.create(text: "mobile")
shoppingtag4 = Tag.create(text: "social")
DesignTag.create(design_id: shopping.id, tag_id: shoppingtag1.id)
DesignTag.create(design_id: shopping.id, tag_id: shoppingtag2.id)
DesignTag.create(design_id: shopping.id, tag_id: shoppingtag3.id)
DesignTag.create(design_id: shopping.id, tag_id: shoppingtag4.id)

#likes
Like.create(liker_id: christina.id, design_id: shopping.id)
Like.create(liker_id: danielle.id, design_id: shopping.id)
Like.create(liker_id: dave.id, design_id: shopping.id)
Like.create(liker_id: ryan.id, design_id: shopping.id)
Like.create(liker_id: david.id, design_id: shopping.id)
Like.create(liker_id: ashe.id, design_id: shopping.id)

#Comments
Comment.create(content: "Cool", user_id: danielle.id, design_id: shopping.id)

#Design21#####################################################################
statistics = Design.create(title: "Web Statistics Dashboard", url: "https://dribbble.com/shots/1719845-Statistics-General-trends", code: "http://jsfiddle.net/krisselden/gYBhh/", description: "Web statistics dashboard that shows unique visitors trend over time", creator_id: cole.id)
statistics_image = Image.create(filename: "https://cdn.dribbble.com/users/13307/screenshots/1719845/statistics_1x.jpg", design_id: statistics.id)

#tags
statisticstag1 = Tag.create(text: "dashboard")
statisticstag2 = Tag.create(text: "analytics")
statisticstag3 = Tag.create(text: "data visualization")
statisticstag4 = Tag.create(text: "graph")
DesignTag.create(design_id: statistics.id, tag_id: statisticstag1.id)
DesignTag.create(design_id: statistics.id, tag_id: statisticstag2.id)
DesignTag.create(design_id: statistics.id, tag_id: statisticstag3.id)
DesignTag.create(design_id: statistics.id, tag_id: statisticstag4.id)

#likes
Like.create(liker_id: cole.id, design_id: statistics.id)
Like.create(liker_id: danielle.id, design_id: statistics.id)
Like.create(liker_id: dave.id, design_id: statistics.id)
Like.create(liker_id: ryan.id, design_id: statistics.id)
Like.create(liker_id: david.id, design_id: statistics.id)
Like.create(liker_id: ashe.id, design_id: statistics.id)

#Comments
Comment.create(content: "Cool", user_id: danielle.id, design_id: statistics.id)

#Design22#####################################################################
host = Design.create(title: "Host UX Screen", url: "https://dribbble.com/shots/1651171-Android-Host-First-Time-User-Experience-Screen", code: "http://jsfiddle.net/krisselden/gYBhh/", description: "This is the first time user flow for hosts. There are 4 key screens with host on boarding messaging to help hosts understand at a high level what hosting is", creator_id: cole.id)
host_image = Image.create(filename: "https://cdn.dribbble.com/users/278/screenshots/1651171/airbnb-mobile-ftue-steph_1x.png", design_id: host.id)

#tags
hosttag1 = Tag.create(text: "airbnb")
hosttag2 = Tag.create(text: "app")
hosttag3 = Tag.create(text: "hosting")
DesignTag.create(design_id: host.id, tag_id: hosttag1.id)
DesignTag.create(design_id: host.id, tag_id: hosttag2.id)
DesignTag.create(design_id: host.id, tag_id: hosttag3.id)

#likes
Like.create(liker_id: cole.id, design_id: host.id)
Like.create(liker_id: danielle.id, design_id: host.id)
Like.create(liker_id: dave.id, design_id: host.id)
Like.create(liker_id: ryan.id, design_id: host.id)
Like.create(liker_id: david.id, design_id: host.id)
Like.create(liker_id: ashe.id, design_id: host.id)

#Comments
Comment.create(content: "Cool", user_id: danielle.id, design_id: host.id)

#Design23#####################################################################
robo = Design.create(title: "Robo Advisor", url: "https://dribbble.com/shots/3816341-Robo-Advisor-Projection", code: "http://jsfiddle.net/krisselden/gYBhh/", description: "Dashboard for robo advisor app", creator_id: cole.id)
robo_image = Image.create(filename: "https://cdn.dribbble.com/users/182336/screenshots/3816341/22_1x.jpg", design_id: robo.id)

#tags
robotag1 = Tag.create(text: "dashboard")
robotag2 = Tag.create(text: "roboadvisor")
robotag3 = Tag.create(text: "graph")
robotag4 = Tag.create(text: "data visualization")
DesignTag.create(design_id: robo.id, tag_id: robotag1.id)
DesignTag.create(design_id: robo.id, tag_id: robotag2.id)
DesignTag.create(design_id: robo.id, tag_id: robotag3.id)
DesignTag.create(design_id: robo.id, tag_id: robotag4.id)

#likes
Like.create(liker_id: cole.id, design_id: robo.id)
Like.create(liker_id: danielle.id, design_id: robo.id)
Like.create(liker_id: dave.id, design_id: robo.id)
Like.create(liker_id: ryan.id, design_id: robo.id)
Like.create(liker_id: david.id, design_id: robo.id)
Like.create(liker_id: ashe.id, design_id: robo.id)

#Comments
Comment.create(content: "Cool", user_id: danielle.id, design_id: robo.id)

#Design25####################################################################
iosicons = Design.create(title: "iOS icons", url: "https://dribbble.com/shots/266214-Gowalla-iOS-Glyphs", code: "http://jsfiddle.net/krisselden/gYBhh/", description: "Icons for iOS", creator_id: cole.id)
iosicons_image = Image.create(filename: "https://cdn.dribbble.com/users/22/screenshots/266214/dribbble-glyphs.png", design_id: iosicons.id)

#tags
iosiconstag1 = Tag.create(text: "ios")
iosiconstag2 = Tag.create(text: "icons")
DesignTag.create(design_id: iosicons.id, tag_id: iosiconstag1.id)
DesignTag.create(design_id: iosicons.id, tag_id: iosiconstag2.id)

#likes
Like.create(liker_id: cole.id, design_id: iosicons.id)
Like.create(liker_id: danielle.id, design_id: iosicons.id)
Like.create(liker_id: dave.id, design_id: iosicons.id)
Like.create(liker_id: ryan.id, design_id: iosicons.id)
Like.create(liker_id: david.id, design_id: iosicons.id)
Like.create(liker_id: ashe.id, design_id: iosicons.id)

#Comments
Comment.create(content: "Cool", user_id: danielle.id, design_id: iosicons.id)

#Design26####################################################################
mixpanel = Design.create(title: "Mixpanel Data App", url: "https://dribbble.com/shots/2491183-Mixpanel-iOS-iPhone-App", code: "http://jsfiddle.net/krisselden/gYBhh/", description: " I kept things as simple and streamlined as possible, but focused a great deal of time to get the interactions and workflow right.", creator_id: christina.id)
mixpanel_image = Image.create(filename: "https://cdn.dribbble.com/users/44126/screenshots/2491183/mixapp_shot_1x.png", design_id: mixpanel.id)

#tags
mixpaneltag1 = Tag.create(text: "graph")
mixpaneltag2 = Tag.create(text: "data visualization")
mixpaneltag3 = Tag.create(text: "app")
DesignTag.create(design_id: mixpanel.id, tag_id: mixpaneltag1.id)
DesignTag.create(design_id: mixpanel.id, tag_id: mixpaneltag2.id)
DesignTag.create(design_id: mixpanel.id, tag_id: mixpaneltag3.id)

#likes
Like.create(liker_id: christina.id, design_id: mixpanel.id)
Like.create(liker_id: danielle.id, design_id: mixpanel.id)
Like.create(liker_id: dave.id, design_id: mixpanel.id)
Like.create(liker_id: ryan.id, design_id: mixpanel.id)
Like.create(liker_id: david.id, design_id: mixpanel.id)
Like.create(liker_id: ashe.id, design_id: mixpanel.id)

#Comments
Comment.create(content: "Cool", user_id: danielle.id, design_id: mixpanel.id)
