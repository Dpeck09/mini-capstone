Product.create!([
  {name: "tv", price: "450.0", image_url: "https://images.samsung.com/is/image/samsung/levant-uhd-tu7000-ua43tu7000uxtw-rperspectivetitangray-229856895?$720_576_PNG$", description: "a nice new flatscreen for your living room", quantity: 19},
  {name: "conditioner", price: "9.0", image_url: "https://www.biolage.com/-/media/Project/Biolage/Biolagecom/Images/PDP/Primary-Images/Full-Density/884486233943_Biolage_Advanced_Full_Density_Conditioner_400ml_USA.jpg", description: "Hopefully will make your hair soft", quantity: 230},
  {name: "desk", price: "200.0", image_url: "https://m.media-amazon.com/images/I/71vSznKJfsL._AC_SX466_.jpg", description: "an all wood desk to help you stress out with coding", quantity: 27},
  {name: "couch", price: "8000.0", image_url: "https://i.pinimg.com/originals/04/ab/61/04ab61338cfad5b66fe4280544a13d69.jpg", description: "the nicest couch you have ever sat on", quantity: 10},
  {name: "Phone", price: "650.0", image_url: "https://www.att.com/idpassets/sales/uf/deals/cell-phone-deals/839650-Animated-Multi-Tile-iPhone12-retina.png", description: "you can call whoever you want", quantity: 200}
])

# products = Product.where(supplier_id: nil)

# products.each do |product|
#   product.supplier_id = rand(1..2)
#   product.save
# end