cameron = User.create({email: "cameron.jacoby@gmail.com",
  first_name: "Cameron",
  last_name: "Jacoby",
  image_url: "http://static.businessinsider.com/image/52e92002ecad04b72499e8a0-400/image.jpg"
})

cameron_about = Page.create({
  name: "About",
  content: "Small batch American Apparel YOLO Bushwick bicycle rights kogi. Bespoke semiotics bicycle rights, mustache umami ethical Brooklyn Williamsburg sustainable post-ironic Austin aesthetic Portland 90's farm-to-table. Meggings cray Helvetica, cornhole McSweeney's bitters mustache Echo Park selfies Godard chillwave. Echo Park gluten-free occupy, kale chips High Life fanny pack vinyl keytar. Fingerstache messenger bag asymmetrical slow-carb. Schlitz selvage narwhal, brunch Brooklyn Pitchfork deep v seitan cornhole PBR&B chambray bitters gentrify cliche food truck. Whatever pork belly tattooed skateboard letterpress, you probably haven't heard of them YOLO squid selfies vegan dreamcatcher banh mi organic flannel."
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
  content: "Pour-over leggings kitsch iPhone typewriter, butcher keytar cred YOLO. Photo booth authentic Pitchfork Shoreditch, quinoa readymade beard bicycle rights sartorial Carles Neutra tofu. Scenester synth butcher, fixie locavore fanny pack meggings. High Life letterpress tofu, literally fanny pack chambray banh mi +1 plaid Blue Bottle. Kale chips street art cornhole Truffaut Cosby sweater banh mi bespoke bitters Intelligentsia. Truffaut you probably haven't heard of them +1 Echo Park paleo ethnic. Before they sold out mlkshk American Apparel polaroid, yr whatever selvage deep v."
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
  content: "Retro yr pour-over Etsy Kickstarter semiotics. Marfa Blue Bottle ethnic XOXO, fanny pack Schlitz pour-over twee irony occupy put a bird on it seitan flexitarian Shoreditch pop-up. Pinterest 8-bit roof party, slow-carb sartorial gentrify skateboard selvage Brooklyn. Fanny pack retro biodiesel pop-up, Tonx locavore drinking vinegar tote bag bespoke seitan single-origin coffee Kickstarter sriracha Godard. Shabby chic meggings Carles authentic. Meggings irony Schlitz hoodie, shabby chic letterpress hella bicycle rights cornhole. 8-bit hella literally Blue Bottle, readymade Echo Park sartorial cardigan."
})

alli_contact = Page.create({
  name: "Contact",
  content: "Retro yr pour-over Etsy Kickstarter semiotics."
})

alli.pages << alli_about
alli.pages << alli_contact

####################

palmer = User.create({email: "palmer44@gmail.com",
  first_name: "Palmer",
  last_name: "Sanderson",
  image_url: "http://static.businessinsider.com/image/52e9200069beddde035b3f96-400/image.jpg"
})

palmer_about = Page.create({
  name: "About",
  content: "Tonx church-key drinking vinegar DIY farm-to-table scenester banjo lomo Etsy messenger bag trust fund try-hard. Kogi retro Pitchfork photo booth selfies, scenester pour-over keffiyeh Cosby sweater master cleanse Banksy ugh. American Apparel tattooed Godard artisan readymade direct trade. Mumblecore yr organic street art, wolf cliche paleo you probably haven't heard of them Thundercats butcher letterpress retro vinyl normcore tote bag. Gluten-free Odd Future distillery mlkshk High Life. Fanny pack Shoreditch Intelligentsia, viral kogi lo-fi tattooed cred Cosby sweater seitan. Wolf yr mumblecore Blue Bottle, Truffaut McSweeney's skateboard semiotics locavore."
})

palmer_contact = Page.create({
  name: "Contact",
  content: "Tonx church-key drinking vinegar DIY farm-to-table scenester banjo lomo Etsy messenger bag trust fund try-hard."
})

palmer.pages << palmer_about
palmer.pages << palmer_contact

####################

cameron_post1 = Post.create({
  title: "Selfies keffiyeh tattooed, mumblecore vegan dreamcatcher hoodie leggings direct trade irony pop-up wayfarers farm-to-table semiotics.",
  body: "Selfies keffiyeh tattooed, mumblecore vegan dreamcatcher hoodie leggings direct trade irony pop-up wayfarers farm-to-table semiotics. Shabby chic banh mi 8-bit organic mlkshk McSweeney's. Skateboard Godard leggings, cred you probably haven't heard of them Banksy slow-carb. Tattooed asymmetrical roof party, cred gastropub 3 wolf moon kitsch Etsy post-ironic disrupt 8-bit letterpress PBR&B Wes Anderson mixtape. Crucifix gentrify Shoreditch, deep v butcher swag Blue Bottle PBR Truffaut Pinterest. Cardigan blog hella asymmetrical, skateboard Brooklyn selvage Shoreditch salvia Williamsburg shabby chic literally raw denim Echo Park. Biodiesel swag farm-to-table blog trust fund, post-ironic Schlitz PBR crucifix Odd Future slow-carb Carles seitan next level mustache."
})

cameron_post2 = Post.create({
  title: "Meggings aesthetic next level, vinyl American Apparel flexitarian ugh VHS twee slow-carb art party tousled selfies post-ironic chambray.",
  body: "Meggings aesthetic next level, vinyl American Apparel flexitarian ugh VHS twee slow-carb art party tousled selfies post-ironic chambray. Tonx synth sustainable yr gluten-free, four loko post-ironic mlkshk butcher. PBR you probably haven't heard of them Pitchfork, brunch before they sold out artisan art party banh mi kogi lomo skateboard Vice. Bushwick Blue Bottle mixtape butcher Etsy authentic retro Carles fap, YOLO raw denim wolf cornhole flannel. Dreamcatcher Neutra put a bird on it, paleo authentic kogi retro meggings. Forage yr bicycle rights pop-up art party. American Apparel forage asymmetrical Intelligentsia authentic pour-over, trust fund raw denim cardigan VHS High Life."
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

# comment1 = Comment.create({
#   content: "Leggings Intelligentsia actually, Blue Bottle 3 wolf moon dreamcatcher scenester keytar drinking vinegar whatever beard readymade Banksy sartorial kitsch. Ethnic pug sriracha farm-to-table actually. Cray butcher keffiyeh 3 wolf moon. Banjo blog Echo Park tousled mustache retro, normcore Brooklyn sartorial Truffaut jean shorts deep v church-key. Banjo keytar actually, Intelligentsia Kickstarter leggings artisan McSweeney's Truffaut Helvetica slow-carb sustainable Schlitz Tonx Banksy. Next level street art hashtag banjo Odd Future, letterpress asymmetrical crucifix wolf Blue Bottle locavore fashion axe pop-up Intelligentsia Banksy. Cliche Bushwick Shoreditch, leggings cray 8-bit Echo Park trust fund selvage biodiesel church-key."
# })

# comment2 = Comment.create({
#   content: "Viral shabby chic mlkshk, seitan +1 dreamcatcher drinking vinegar bitters gastropub. Ugh bitters keytar Austin seitan Echo Park. Freegan McSweeney's keffiyeh, pour-over cardigan YOLO pork belly food truck church-key quinoa Wes Anderson semiotics Blue Bottle. Blog narwhal Godard tattooed. Fap vinyl organic, viral gluten-free leggings Helvetica freegan four loko cray authentic pour-over Etsy. Chia trust fund Austin PBR, Brooklyn you probably haven't heard of them deep v Banksy farm-to-table banjo bespoke Blue Bottle slow-carb letterpress narwhal. Synth distillery tofu polaroid Banksy gentrify Intelligentsia, flexitarian food truck pickled PBR&B sustainable."
# })

# comment3 = Comment.create({
#   content: "Cornhole lomo art party YOLO, ennui bitters street art. Wolf narwhal master cleanse, craft beer trust fund Austin flexitarian pour-over. Viral retro forage tousled locavore deep v, Austin VHS. Chia Brooklyn cardigan actually gentrify butcher. Narwhal salvia single-origin coffee banh mi, Intelligentsia hella banjo. Church-key yr bitters viral Kickstarter normcore, single-origin coffee pork belly keffiyeh Odd Future cred. Brooklyn ugh Odd Future, twee hella 3 wolf moon Neutra cornhole street art food truck."
# })

# cameron_post1.comments << comment1
# comment1.children << comment2
# cameron_post2.comments << comment3

####################

steph_post1 = Post.create({
  title: "PBR chambray forage, disrupt gentrify PBR&B Williamsburg distillery Helvetica trust fund.",
  body: "PBR chambray forage, disrupt gentrify PBR&B Williamsburg distillery Helvetica trust fund. Pork belly Thundercats church-key tofu, bitters butcher wayfarers meggings sustainable viral selvage sriracha Odd Future McSweeney's. Aesthetic bespoke Helvetica, try-hard retro DIY hella cray chia jean shorts Schlitz Shoreditch. Lomo crucifix Bushwick mumblecore. Polaroid stumptown Neutra, organic vegan kale chips blog drinking vinegar sartorial lo-fi. VHS squid mustache, Portland selvage raw denim Neutra food truck. Retro brunch aesthetic cornhole."
})

rails = Tag.create({name: "rails"})
table = Tag.create({name: "table"})

steph_post1.tags << hipster
steph_post1.tags << coding
steph_post1.tags << rails
steph_post1.tags << table

steph.posts << steph_post1

# comment4 = Comment.create({
#   content: "Locavore next level readymade Godard salvia. Bitters ethical small batch, cray retro fashion axe selfies leggings salvia pork belly viral normcore. Twee Shoreditch Carles, brunch lo-fi disrupt post-ironic Schlitz cred. Pork belly crucifix before they sold out tousled typewriter, leggings Truffaut master cleanse pour-over raw denim cray Kickstarter Thundercats locavore. Godard tofu fingerstache food truck before they sold out, brunch twee you probably haven't heard of them authentic pop-up iPhone kogi. Pop-up mlkshk cred fashion axe hella, church-key butcher umami. Austin ethical direct trade kale chips, Tonx ennui tofu."
# })

# comment5 = Comment.create({
#   content: "Seitan chillwave gentrify Williamsburg semiotics. Jean shorts Tumblr cornhole photo booth, kitsch tofu wayfarers occupy pork belly synth banh mi fingerstache. Typewriter Echo Park chia selvage, messenger bag gluten-free hashtag kogi semiotics Thundercats crucifix Odd Future art party lo-fi. Cred artisan keytar ugh Austin. DIY kitsch 3 wolf moon, tattooed American Apparel Etsy pork belly PBR mlkshk. Banh mi pop-up twee, DIY quinoa Austin sartorial. Etsy iPhone chillwave occupy, banh mi plaid Pitchfork Helvetica Thundercats literally flexitarian readymade beard distillery."
# })

# steph_post1.comments << comment4
# steph_post1.comments << comment5

####################

alli_post1 = Post.create({
  title: "Helvetica tote bag actually Austin. Hella ugh bicycle rights, letterpress scenester semiotics occupy Tumblr artisan beard.",
  body: "Helvetica tote bag actually Austin. Hella ugh bicycle rights, letterpress scenester semiotics occupy Tumblr artisan beard. Vinyl scenester bitters tattooed cornhole. 90's tote bag whatever typewriter Intelligentsia ugh. Vice ethnic actually, Intelligentsia fashion axe Odd Future gastropub tattooed direct trade. Dreamcatcher PBR&B VHS street art hella Bushwick. Narwhal stumptown lo-fi street art, Portland umami literally American Apparel tofu Odd Future."
})

yolo = Tag.create({name: "yolo"})

alli_post1.tags << rails
alli_post1.tags << table
alli_post1.tags << yolo

alli.posts << alli_post1

# comment6 = Comment.create({
#   content: "Letterpress wolf plaid sriracha swag YOLO blog four loko, scenester slow-carb 90's salvia. Austin skateboard vegan, bicycle rights sriracha farm-to-table Helvetica before they sold out fashion axe forage typewriter trust fund gluten-free. Forage Carles cray, craft beer umami normcore vinyl seitan scenester bespoke four loko fap mumblecore 8-bit. Cornhole cray chambray food truck distillery. Stumptown Bushwick skateboard Carles you probably haven't heard of them pork belly Shoreditch polaroid. McSweeney's direct trade polaroid, Wes Anderson distillery VHS wolf keytar. Church-key art party authentic +1 pork belly chambray ethnic, chillwave irony seitan."
# })

# comment7 = Comment.create({
#   content: "Actually leggings YOLO Truffaut Thundercats tote bag. Art party yr chia, ennui Godard fashion axe cornhole. Brooklyn selvage cornhole fap craft beer. Flannel XOXO cliche, Pitchfork blog mixtape master cleanse normcore chillwave wayfarers sustainable cardigan. Shoreditch fixie before they sold out art party ethical. Selfies brunch Pinterest, master cleanse disrupt quinoa Shoreditch yr cornhole. Actually Portland asymmetrical mixtape hashtag retro."
# })

# alli_post1.comments << comment6
# comment6.children << comment7

####################

palmer_post1 = Post.create({
  title: "Paleo McSweeney's Odd Future, semiotics shabby chic pour-over pop-up tote bag Tumblr ethnic single-origin coffee keffiyeh 90's.",
  body: "Paleo McSweeney's Odd Future, semiotics shabby chic pour-over pop-up tote bag Tumblr ethnic single-origin coffee keffiyeh 90's. Slow-carb 90's Blue Bottle asymmetrical fingerstache banjo. Marfa skateboard roof party, sustainable butcher Carles Banksy Truffaut slow-carb ugh keffiyeh. Swag locavore kitsch Thundercats, crucifix leggings Austin. Banjo tousled pork belly Pitchfork next level. PBR vinyl authentic, Tonx next level blog typewriter bespoke. Tote bag put a bird on it yr ethnic pour-over."
})

bicycle = Tag.create({name: "bicycle"})

palmer_post1.tags << table
palmer_post1.tags << yolo
palmer_post1.tags << bicycle

palmer.posts << palmer_post1

# comment8 = Comment.create({
#   content: "Post-ironic readymade Banksy Tonx. Twee before they sold out Portland, iPhone +1 Helvetica gentrify flannel Wes Anderson viral organic. Dreamcatcher sriracha kitsch gastropub flannel distillery. Four loko kale chips Shoreditch, Carles Pinterest authentic messenger bag roof party sartorial lomo sustainable pug Tonx deep v PBR&B. Hoodie iPhone selfies gastropub Intelligentsia, Helvetica church-key mixtape salvia Banksy. Fashion axe farm-to-table Carles fanny pack, selfies selvage meh deep v beard. Chia selvage bicycle rights, Pinterest keytar slow-carb YOLO Portland."
# })

# comment9 = Comment.create({
#   content: "High Life Austin single-origin coffee, whatever tofu keytar flannel leggings Pinterest. Church-key cred fap beard Etsy. Church-key gastropub art party Blue Bottle. Chia pork belly tousled, biodiesel Thundercats scenester post-ironic Wes Anderson mumblecore Helvetica pour-over. Freegan narwhal keytar flannel semiotics. Selfies twee tote bag tofu, raw denim slow-carb tattooed swag Williamsburg whatever gentrify. Freegan skateboard try-hard art party, fixie bespoke paleo bicycle rights forage crucifix."
# })

# palmer_post1.comments << comment8
# palmer_post1.comments << comment9