User.create(name: "diana", image_url: "https://images.pexels.com/photos/1858175/pexels-photo-1858175.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2", email: "diana@email.com", password: "password")

User.create(name: "bobby", image_url: "https://images.pexels.com/photos/1212984/pexels-photo-1212984.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2", email: "bobby@email.com", password: "password")

User.create(name: "zeke", image_url: "https://images.pexels.com/photos/1182292/pexels-photo-1182292.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2", email: "zeke@email.com", password: "password")

Post.create(user_id: 1, image_url: "https://media.gettyimages.com/photos/portrait-of-female-athlete-looking-over-shoulder-on-sunny-day-picture-id1316107204?k=20&m=1316107204&s=612x612&w=0&h=UxQX2xxJOpXcv7k5Jiy20HUlvy018l32939vgGG61ww=", content: "this a post by diana(1)")

Post.create(user_id: 2, image_url: "https://s.yimg.com/ny/api/res/1.2/Ja2Zl3GdMRwfG3ORN.OnVA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTQyNw--/https://s.yimg.com/uu/api/res/1.2/Ao4zwoKtVmaPYVv_WRcXEg--~B/aD01MDA7dz03NTA7YXBwaWQ9eXRhY2h5b24-/https://media.zenfs.com/en/insidermonkey.com/1d4116b14ee56e45986e16d2375e364a", content: "this a post by bobby(2)")

Post.create(user_id: 3, image_url: "https://media.istockphoto.com/photos/independence-monument-mexico-city-picture-id1064279806?k=20&m=1064279806&s=612x612&w=0&h=ne4rnaVbIkID9PdNLYMAKXdQt1SKItBJdylAPAm5Xr0=", content: "this a post by zeke(3)")
