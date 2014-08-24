cameron = User.create({email: "cameron.jacoby@gmail.com",
  first_name: "Cameron",
  last_name: "Jacoby",
  image_url: "http://static.businessinsider.com/image/52e92002ecad04b72499e8a0-400/image.jpg"
})

cameron_about = Page.create({
  name: "About",
  content: "Small batch American Apparel YOLO Bushwick bicycle rights kogi. Bespoke semiotics bicycle rights, mustache umami ethical Brooklyn Williamsburg sustainable post-ironic Austin aesthetic Portland 90's farm-to-table."
})

cameron_contact = Page.create({
  name: "Contact",
  content: "Small batch American Apparel YOLO Bushwick bicycle rights kogi."
})

cameron.pages << cameron_about
cameron.pages << cameron_contact

####################

steph = User.create({email: "steph@gmail.com",
  first_name: "Steph",
  last_name: "Monette",
  image_url: "http://static.businessinsider.com/image/52e92007ecad04201f99e8a2-400/image.jpg"
})

steph_about = Page.create({
  name: "About",
  content: "Pour-over leggings kitsch iPhone typewriter, butcher keytar cred YOLO. Photo booth authentic Pitchfork Shoreditch, quinoa readymade beard bicycle rights sartorial Carles Neutra tofu."
})

steph_contact = Page.create({
  name: "Contact",
  content: "Pour-over leggings kitsch iPhone typewriter, butcher keytar cred YOLO."
})

steph.pages << steph_about
steph.pages << steph_contact

####################

alli = User.create({email: "alli123@gmail.com",
  first_name: "Alli",
  last_name: "Cernoch",
  image_url: "http://static.businessinsider.com/image/52e9200269bedd2d7d5b3f9c-400/image.jpg"
})

alli_about = Page.create({
  name: "About",
  content: "Retro yr pour-over Etsy Kickstarter semiotics. Marfa Blue Bottle ethnic XOXO, fanny pack Schlitz pour-over twee irony occupy put a bird on it seitan flexitarian Shoreditch pop-up."
})

alli_contact = Page.create({
  name: "Contact",
  content: "Retro yr pour-over Etsy Kickstarter semiotics."
})

alli.pages << alli_about
alli.pages << alli_contact

####################
connie = User.create({email: "connie123@gmail.com",
  first_name: "Connie",
  last_name: "Chang",
  image_url: "http://fc01.deviantart.net/fs11/i/2006/260/c/5/chinchilla_by_effic.jpg"
})

connie_about = Page.create({
  name: "About",
  content: "Retro yr pour-over Etsy Kickstarter semiotics. Marfa Blue Bottle ethnic XOXO, fanny pack Schlitz pour-over twee irony occupy put a bird on it seitan flexitarian Shoreditch pop-up."
})

connie_contact = Page.create({
  name: "Contact",
  content: "Retro yr pour-over Etsy Kickstarter semiotics."
})

connie.pages << connie_about
connie.pages << connie_contact

####################

palmer = User.create({email: "palmer44@gmail.com",
  first_name: "Palmer",
  last_name: "Sanderson",
  image_url: "http://static.businessinsider.com/image/52e9200069beddde035b3f96-400/image.jpg"
})

palmer_about = Page.create({
  name: "About",
  content: "Tonx church-key drinking vinegar DIY farm-to-table scenester banjo lomo Etsy messenger bag trust fund try-hard. Kogi retro Pitchfork photo booth selfies, scenester pour-over keffiyeh Cosby sweater master cleanse Banksy ugh."
})

palmer_contact = Page.create({
  name: "Contact",
  content: "Tonx church-key drinking vinegar DIY farm-to-table scenester banjo lomo Etsy messenger bag trust fund try-hard."
})

palmer.pages << palmer_about
palmer.pages << palmer_contact

####################

cameron_post1 = Post.create({
  title: "Selfies keffiyeh tattooed",
  body: "Selfies keffiyeh tattooed, mumblecore vegan dreamcatcher hoodie leggings direct trade irony pop-up wayfarers farm-to-table semiotics. Shabby chic banh mi 8-bit organic mlkshk McSweeney's."
})

cameron_post2 = Post.create({
  title: "Meggings aesthetic next level",
  body: "Meggings aesthetic next level, vinyl American Apparel flexitarian ugh VHS twee slow-carb art party tousled selfies post-ironic chambray. Tonx synth sustainable yr gluten-free, four loko post-ironic mlkshk butcher."
})

hipster = Tag.create({name: "hipster"})
coding = Tag.create({name: "coding"})
javascript = Tag.create({name: "javascript"})

cameron_post1.tags << hipster
cameron_post1.tags << coding
cameron_post1.tags << javascript

cameron_post2.tags << hipster
cameron_post2.tags << coding

cameron.posts << cameron_post1
cameron.posts << cameron_post2

comment1 = Comment.create({
  content: "Leggings Intelligentsia actually, Blue Bottle 3 wolf moon dreamcatcher scenester keytar drinking vinegar whatever beard readymade Banksy sartorial kitsch."
})

comment2 = Comment.create({
  content: "Viral shabby chic mlkshk, seitan +1 dreamcatcher drinking vinegar bitters gastropub."
})

comment3 = Comment.create({
  content: "Cornhole lomo art party YOLO, ennui bitters street art."
})

cameron_post1.comments << comment1
comment1.children << comment2
cameron_post2.comments << comment3

####################

steph_post1 = Post.create({
  title: "PBR chambray forage",
  body: "PBR chambray forage, disrupt gentrify PBR&B Williamsburg distillery Helvetica trust fund. Pork belly Thundercats church-key tofu, bitters butcher wayfarers meggings sustainable viral selvage sriracha Odd Future McSweeney's."
})

rails = Tag.create({name: "rails"})
table = Tag.create({name: "table"})

steph_post1.tags << hipster
steph_post1.tags << coding
steph_post1.tags << rails
steph_post1.tags << table

steph.posts << steph_post1

comment4 = Comment.create({
  content: "Locavore next level readymade Godard salvia."
})

comment5 = Comment.create({
  content: "Seitan chillwave gentrify Williamsburg semiotics."
})

steph_post1.comments << comment4
steph_post1.comments << comment5

####################

alli_post1 = Post.create({
  title: "Helvetica tote bag",
  body: "Helvetica tote bag actually Austin. Hella ugh bicycle rights, letterpress scenester semiotics occupy Tumblr artisan beard. Vinyl scenester bitters tattooed cornhole."
})

yolo = Tag.create({name: "yolo"})

alli_post1.tags << rails
alli_post1.tags << table
alli_post1.tags << yolo

alli.posts << alli_post1

comment6 = Comment.create({
  content: "Letterpress wolf plaid sriracha swag YOLO blog four loko, scenester slow-carb 90's salvia."
})

comment7 = Comment.create({
  content: "Actually leggings YOLO Truffaut Thundercats tote bag."
})

alli_post1.comments << comment6
comment6.children << comment7

####################

palmer_post1 = Post.create({
  title: "Paleo McSweeney's Odd Future",
  body: "Paleo McSweeney's Odd Future, semiotics shabby chic pour-over pop-up tote bag Tumblr ethnic single-origin coffee keffiyeh 90's. Slow-carb 90's Blue Bottle asymmetrical fingerstache banjo."
})

bicycle = Tag.create({name: "bicycle"})

palmer_post1.tags << table
palmer_post1.tags << yolo
palmer_post1.tags << bicycle

palmer.posts << palmer_post1

comment8 = Comment.create({
  content: "Post-ironic readymade Banksy Tonx."
})

comment9 = Comment.create({
  content: "High Life Austin single-origin coffee, whatever tofu keytar flannel leggings Pinterest."
})

palmer_post1.comments << comment8
palmer_post1.comments << comment9


####################

connie_post1 = Post.create({
  title: "High Life Austin single-origin coffee",
  body: "Helvetica tote bag actually Austin. Hella ugh bicycle rights, letterpress scenester semiotics occupy Tumblr artisan beard. Vinyl scenester bitters tattooed cornhole."
})

yolo = Tag.create({name: "yolo"})

connie_post1.tags << rails
connie_post1.tags << table
connie_post1.tags << bicycle

connie.posts << connie_post1

comment6 = Comment.create({
  content: "Sriracha swag YOLO blog four loko, scenester slow-carb 90's salvia. Letterpress fair-trade Secret."
})

comment7 = Comment.create({
  content: "Whatever actually leggings YOLO Truffaut Thundercats tote bag."
})

connie_post1.comments << comment10
comment6.children << comment11