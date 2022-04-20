User.create!([
  {name: "Peter", email: "peter@test.com", password_digest: "$2a$12$rig/EcIVJtmDcPnEenwvH.cHgA0Kw5t/UuRTAff6flvdyylcs42Ra"},
  {name: "Test", email: "test@test.com", password_digest: "$2a$12$d5qh7H4zWSPX7CKl447br.QRZcW7VTjFNhehP2V/wmAFVJS5PXeai"},
  {name: "kaz", email: "em@il.com", password_digest: "$2a$12$aXAJ.ILSv5MyXWJ1ATJFeeMYivv0r7HcXTqAe3eoShlB2GJD4pPPO"}
])

Post.create!([
  {user_id: 1, title: "Proactive intangible functionalities", body: "3 wolf moon stumptown next level cronut wolf. Kickstarter cornhole venmo locavore. Jean shorts street scenester skateboard next level tumblr taxidermy. Slow-carb readymade leggings single-origin coffee crucifix. Carry salvia ugh waistcoat etsy skateboard pop-up ramps. Pork belly cold-pressed authentic truffaut loko marfa diy listicle.", image: "https://i.picsum.photos/id/131/200/300.jpg?hmac=9q7mRSOguNBFGg_gPPRKlfjNINGjXWeDBTYPP1_gEas"},
  {user_id: 1, title: "Grass-roots web-enabled challenge", body: "Yuccie franzen beard bitters keffiyeh. Fixie swag echo mixtape distillery master venmo. Flannel gluten-free distillery. Banjo dreamcatcher messenger bag. Banh mi blog put a bird on it irony ugh tilde flexitarian cardigan. Seitan aesthetic trust fund leggings fashion axe williamsburg green juice keffiyeh.", image: "https://i.picsum.photos/id/852/200/300.jpg?hmac=6IMZOkPF_q5nf8IwfYdfxPUyKnyPL1w8moDjTeMOT5g"},
  {user_id: 1, title: "Multi-channelled regional parallelism", body: "Forage lomo vegan typewriter fanny pack. Shoreditch vice etsy wayfarers church-key letterpress chia. Slow-carb pbr&b banh mi irony. Ennui seitan flannel slow-carb muggle magic hashtag vhs. Forage health small batch. Five dollar toast helvetica skateboard blue bottle synth art party brooklyn scenester. Raw denim lo-fi forage hoodie shoreditch. Small batch cold-pressed drinking letterpress pork belly aesthetic.", image: "https://i.picsum.photos/id/135/200/300.jpg?hmac=d3sTOCUkxdC1OKCgh9wTPjck-gMWATyVHFvflla5vLI"},
  {user_id: 1, title: "Inverse intangible matrix", body: "Pop-up mixtape mumblecore tumblr keffiyeh vice. Tofu shabby chic mumblecore craft beer squid. Yr chambray ethical typewriter biodiesel butcher crucifix goth. Vice tote bag kickstarter chia swag ugh wes anderson next level. Slow-carb williamsburg distillery bespoke. Aesthetic beard sartorial single-origin coffee bicycle rights small batch brunch banh mi. Put a bird on it pop-up mixtape flexitarian slow-carb yr bitters helvetica. Readymade microdosing bespoke messenger bag hammock offal disrupt.", image: "https://i.picsum.photos/id/640/200/300.jpg?hmac=wFv1Wyd-STy0zsr2E2USifr--6VcaWg6pOhzelisMIg"},
  {user_id: 1, title: "Fully-configurable human-resource open architecture", body: "Occupy franzen williamsburg selvage heirloom 3 wolf moon butcher. Meh pitchfork mlkshk. Kinfolk next level jean shorts listicle everyday. Vinegar carry yr bitters. Banjo blue bottle park chia truffaut venmo selvage green juice. Synth church-key hoodie goth occupy mixtape park marfa. Kale chips literally slow-carb.", image: "https://i.picsum.photos/id/768/200/300.jpg?hmac=lFX2oZVTUayugh_YZQ5q6uoXJFYaOJz3d2_GLaIW2aU"},
  {user_id: 2, title: "Enhanced multi-tasking encryption", body: "Synth meh you probably haven't heard of them etsy. Mlkshk brooklyn butcher meh forage asymmetrical 90's. Drinking carry crucifix gastropub health. Godard yr photo booth. Five dollar toast lo-fi readymade synth venmo. Art party blog messenger bag listicle yuccie health chillwave.", image: "https://i.picsum.photos/id/100/200/300.jpg?hmac=MeTp97vw7VNDswRcCqUFkGNC8ILDvNfI4MRoHFyGcQ8"},
  {user_id: 2, title: "Open-source next generation application", body: "Mixtape dreamcatcher kickstarter post-ironic kinfolk. Church-key meggings you probably haven't heard of them. Tattooed vice green juice seitan cold-pressed sustainable tousled. Art party chillwave flexitarian mlkshk kitsch stumptown whatever put a bird on it. 3 wolf moon bespoke echo synth butcher. Tilde portland locavore shoreditch. Phlogiston bicycle rights distillery banh mi selfies waistcoat blue bottle ramps.", image: "https://i.picsum.photos/id/955/200/300.jpg?hmac=I4JBGrEHxErLo6XCZM73YcpyhJjX3GxLPggnlxcdU24"},
  {user_id: 2, title: "Synergistic upward-trending strategy", body: "Shoreditch pug shabby chic williamsburg quinoa photo booth. Pitchfork whatever readymade skateboard bicycle rights pinterest park. Tilde pop-up phlogiston portland yuccie sartorial squid disrupt. Fixie waistcoat flannel pop-up bespoke microdosing banjo. +1 gastropub occupy helvetica 8-bit lo-fi wolf. Semiotics wayfarers readymade tousled food truck diy chartreuse phlogiston. Keffiyeh cray taxidermy jean shorts flannel.", image: "https://i.picsum.photos/id/690/200/300.jpg?hmac=YX9nONyDZ_zuGZ5wLOen_mxLWVHEsjpkADU43laON4M"},
  {user_id: 3, title: "camera", body: "take pics", image: "https://media.cnn.com/api/v1/images/stellar/prod/210913111423-polaroid-now-lead.jpg?q=w_3073,h_1729,x_0,y_0,c_fill"},
  {user_id: 1, title: "Cloned zero defect knowledge user", body: "Squid cold-pressed sartorial. Next level hella green juice listicle you probably haven't heard of them jean shorts microdosing humblebrag. Neutra hella semiotics gastropub organic brooklyn. Humblebrag letterpress authentic. Bitters cred beard forage cray yr. Try-hard kinfolk cronut semiotics pinterest yr everyday. Stumptown art party gluten-free drinking asymmetrical authentic selvage.", image: "https://i.picsum.photos/id/302/200/300.jpg?hmac=b5e6gUSooYpWB3rLAPrDpnm8PsPb84p_NXRwD-DK-1I"}
])

