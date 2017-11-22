# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Users
christina = User.create(name: "CP", email: "cp@cp.com", password: "hello", avatar: "https://www.codeproject.com/KB/GDI-plus/ImageProcessing2/flip.jpg")
natalie = User.create(name: "Nat", email: "nat@nat.com", password: "hello", avatar: "http://animals.sandiegozoo.org/sites/default/files/2016-10/animals_hero_iguana.jpg")
dave = User.create(name: "Dave", email: "dave@dave.com", password: "hello", avatar: "http://animals.sandiegozoo.org/sites/default/files/2016-10/owl_southern_white_faced.jpg")

#Designs
background = Design.create(title: "parallax background", url: "testdesignURL", code: "testcodeURL", description: "cool parallax", original: false, creator_id: christina.id)
background2 = Design.create(title: "modal bg2", url: "testdesignURL", code: "testcodeURL", description: "cool parallax", original: false, creator_id: christina.id)
background3 = Design.create(title: "spinning bg3", url: "testdesignURL", code: "testcodeURL", description: "cool parallax", original: false, creator_id: natalie.id)

#Tags
parallaxtag = Tag.create(text: "parallax")
backgroundtag = Tag.create(text: "background")
modaltag = Tag.create(text: "modal")
animationtag = Tag.create(text: "animation")
spinningtag = Tag.create(text: "spinning")

#Design Tags
DesignTag.create(design_id: background.id, tag_id: parallaxtag.id)
DesignTag.create(design_id: background.id, tag_id: backgroundtag.id)
DesignTag.create(design_id: background2.id, tag_id: backgroundtag.id)
DesignTag.create(design_id: background2.id, tag_id: modaltag.id)
DesignTag.create(design_id: background3.id, tag_id: backgroundtag.id)
DesignTag.create(design_id: background3.id, tag_id: animationtag.id)
DesignTag.create(design_id: background3.id, tag_id: spinningtag.id)

#Likes
Like.create(liker_id: christina.id, design_id: background3.id)
Like.create(liker_id: natalie.id, design_id: background.id)
Like.create(liker_id: natalie.id, design_id: background2.id)
Like.create(liker_id: dave.id, design_id: background3.id)
Like.create(liker_id: dave.id, design_id: background.id)
Like.create(liker_id: dave.id, design_id: background2.id)

#CHECK THIS ONE DESIGN CONNECTIONS
Connection.create(design_id: 1, relateddesign_id: 2)
Connection.create(design_id: 1, relateddesign_id: 3)
Connection.create(design_id: 2, relateddesign_id: 3)

#Images
Image.create(filename: "imagefilename", design_id: 1)
Image.create(filename: "imagefilename2", design_id: 1)
Image.create(filename: "imagefilename3", design_id: 1)
Image.create(filename: "imagefilename4", design_id: 2)
Image.create(filename: "imagefilename5", design_id: 2)
Image.create(filename: "imagefilename6", design_id: 3)
Image.create(filename: "imagefilename7", design_id: 3)

#Comments
Comment.create(content: "awesome", user_id: 1, design_id: 2)
Comment.create(content: "cool", user_id: 1, design_id: 3)
Comment.create(content: "ok", user_id: 2, design_id: 1)
Comment.create(content: "meh", user_id: 2, design_id: 2)
Comment.create(content: "blah", user_id: 3, design_id: 3)

#Projects
project = Project.create(title: "nat x tina collab", description: "flatiron project", creator_id: christina.id, public: true)

#collaborations
Collaboration.create(project_id: 1, collaborator_id: 2)
Collaboration.create(project_id: 1, collaborator_id: 3)

#project designs
ProjectDesign.create(project_id: 1, design_id: 1)
ProjectDesign.create(project_id: 1, design_id: 2)
ProjectDesign.create(project_id: 1, design_id: 3)

#relationships
Relationship.create(follower_id: 2,followed_id: 1)
Relationship.create(follower_id: 3,followed_id: 1)
Relationship.create(follower_id: 1,followed_id: 2)
Relationship.create(follower_id: 3,followed_id: 2)
