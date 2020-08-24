category_1 = Category.find_by(name: "Smartphones")

p_01 = Product.create(name: "iPhone XS", description: "Super retina screen", stock: 10,  sku: "AIX0120", company_id: 1 )
p_01.categories << category_1

p_02 = Product.create(name: "Xiaomi Mi Mix 3", description: "Borderless, powerful, super camera", stock: 12, sku: "XPP0313" ,  company_id: 1)
p_02.categories << category_1

p_03 = Product.create(name: "Xiaomi Pocophone", description: "The best phone for millenials", stock: 15,  sku: "XPP0313", company_id: 1)
p_03.categories << category_1

p_04 = Product.create(name: "Samsung S10", description: "Beautiful, elegant, powerful phone", stock: 10,  sku: "S100901", company_id: 1)
p_04.categories << category_1

category_2 = Category.find_by(name: "Shoes")

p_05 = Product.create(name: "Zico Beach Sandal", description: "The best sandal ever", stock: 50, sku: "ZSD009", company_id: 1)
p_05.categories << category_2

p_06 = Product.create(name: "Adidas Superstart", description: "The old school sneakers", stock: 13, sku: "ASS090", company_id: 1)
p_06.categories << category_2

p_07 = Product.create(name: "Timberland Premium", description: "The classic yellow boots", stock: 15,  sku: "TPB132", company_id: 1)
p_07.categories << category_2

category_3 = Category.find_by(name: "Accesories")

p_08 = Product.create(name: "Men Wallet", description: "Waterproof leather wallet", stock: 50, sku: "MW2323", company_id: 1)
p_08.categories << category_3

p_09 = Product.create(name: "Keychain", description: "Keep your keys together. Safe.", stock: 60, sku: "KC3245", company_id: 1)
p_09.categories << category_3

p_10 = Product.create(name: "Casio L12 Watch", description: "Never be late again, arrive on time", stock: 8, sku: "CW7788", company_id: 1)
p_10.categories << category_3
