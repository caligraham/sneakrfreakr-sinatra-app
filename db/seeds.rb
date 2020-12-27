#Where i will write the seed data for my project.

chris_brown = User.create(username: "cbreezy89", image_url: "https://www.gstatic.com/tv/thumb/persons/499496/499496_v9_bc.jpg", password: "pw")

dj_khaled = User.create(username: "anotherone2020", image_url: "https://images.app.goo.gl/Fj5csbzEQZQdtzb7A", password: "pw")

rick_ross = User.create(username: "rickyrozay1234", image_url: "https://images.app.goo.gl/8ZHpZ37XGGnbLSNc6", password: "pw")

Post.create(title: "Chris Breezy's Insane Sneaker Collection", image_url: "https://images.app.goo.gl/gZaQNdqCbtBgNzYx7", description: "‘Sex And The City’ saw Carrie Bradshaw heralded as a pinnacle for women’s shoe goals with a walk-in closet and cabinetry for every kind of heel, platform and wedge you could imagine. But she may have just met her match in Chris Brown who doesn’t boast a walk-in closet but several rooms – yes, rooms – that dwarves most people’s homes.", user_id: chris_brown.id)

Post.create(title: "DJ Khaled's Over-The-Top Shoe Closet", image_url: "https://now-cdn.ruelala.com/wp-content/uploads/2017/09/28110024/thumbnail-74afd00afc5b39c8977bc32d12c3d350.jpeg", description: "DJ Khaled has the major key when it comes to shoe closets. From $200 Yeezys to custom Air Jordans that cost more than your rent, his sneaker collection is one to see.", user_id: dj_khaled.id)

Post.create(title: "Rick Ross Shows Off His Decked-Out Sneaker Collection", image_url: "https://images.app.goo.gl/oFzXL6ppj7Uug2Gj8", description: "Not to be outdone, however, the MMG rapper shows off his affinity for Nike and Jordan Brand, among others, as he even strategically decorated his residence by placing a number of kicks on cars, in his personal bowling alley and among action figures. After all, Ross does claim to be the biggest boss that you've seen thus far, and his sneaker collection matches to perfection.", user_id: rick_ross.id)

Post.create(title: "Another Look At Mr MMG's Mega-Mass Heat", image_url: "https://images.app.goo.gl/5Dfuvf2ZSymkusU57", description: "Get another look at some of the sneakers that are owned by The Teflon Don Rick Ross in his 109 room house. As you can see in the images above Rozay has a substantial shoe collection that includes everything from Air Jordans, Reeboks (the brand he’s signed to), adidas and even some Diadoras.", user_id: rick_ross.id)