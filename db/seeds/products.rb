category_1 = Category.find_by(name: "Smartphones")

p_01 = Product.create(name: "iPhone XS", description: "Super retina screen", stock: 10,  sku: "AIX0120", company_id: 1 )
p_01.categories << category_1
p_01.image.attach(io: File.open("app/assets/images/products/product1.jpg"), filename: "product1.jpg")
p_01.prices << Price.create(salesprice: 150000, pricecost: 100000)

p_02 = Product.create(name: "Xiaomi Mi Mix 3", description: "Borderless, powerful, super camera", stock: 12, sku: "XPP0313" ,  company_id: 1)
p_02.categories << category_1
p_02.image.attach(io: File.open("app/assets/images/products/product2.jpg"), filename: "product2.jpg")
p_02.prices << Price.create(salesprice: 350000, pricecost: 200000)

p_03 = Product.create(name: "Xiaomi Pocophone", description: "The best phone for millenials", stock: 15,  sku: "XPP0313", company_id: 1)
p_03.categories << category_1
p_03.image.attach(io: File.open("app/assets/images/products/product3.jpg"), filename: "product3.jpg")
p_03.prices << Price.create(salesprice: 550000, pricecost: 400000)

p_04 = Product.create(name: "Samsung S10", description: "Beautiful, elegant, powerful phone", stock: 10,  sku: "S100901", company_id: 1)
p_04.categories << category_1
p_04.image.attach(io: File.open("app/assets/images/products/product4.jpg"), filename: "product4.jpg")
p_04.prices << Price.create(salesprice: 600000, pricecost: 500000)

category_2 = Category.find_by(name: "Shoes")

p_05 = Product.create(name: "Zico Beach Sandal", description: "The best sandal ever", stock: 50, sku: "ZSD009", company_id: 1)
p_05.categories << category_2
p_05.image.attach(io: File.open("app/assets/images/products/product5.jpg"), filename: "product5.jpg")
p_05.prices << Price.create(salesprice: 15000, pricecost: 10000)

p_06 = Product.create(name: "Adidas Superstart", description: "The old school sneakers", stock: 13, sku: "ASS090", company_id: 1)
p_06.categories << category_2
p_06.image.attach(io: File.open("app/assets/images/products/product6.jpg"), filename: "product6.jpg")
p_06.prices << Price.create(salesprice: 350000, pricecost: 250000)

p_07 = Product.create(name: "Timberland Premium", description: "The classic yellow boots", stock: 15,  sku: "TPB132", company_id: 1)
p_07.categories << category_2
p_07.image.attach(io: File.open("app/assets/images/products/product7.jpg"), filename: "product7.jpg")
p_07.prices << Price.create(salesprice: 75000, pricecost: 50000)

category_3 = Category.find_by(name: "Accesories")

p_08 = Product.create(name: "Men Wallet", description: "Waterproof leather wallet", stock: 50, sku: "MW2323", company_id: 1)
p_08.categories << category_3
p_08.image.attach(io: File.open("app/assets/images/products/product8.jpg"), filename: "product8.jpg")
p_08.prices << Price.create(salesprice: 3500, pricecost: 2000)

p_09 = Product.create(name: "Keychain", description: "Keep your keys together. Safe.", stock: 60, sku: "KC3245", company_id: 1)
p_09.categories << category_3
p_09.image.attach(io: File.open("app/assets/images/products/product9.jpg"), filename: "product9.jpg")
p_09.prices << Price.create(salesprice: 1500, pricecost: 1000)

p_10 = Product.create(name: "Casio L12 Watch", description: "Never be late again, arrive on time", stock: 8, sku: "CW7788", company_id: 1)
p_10.categories << category_3
p_10.image.attach(io: File.open("app/assets/images/products/product10.jpg"), filename: "product10.jpg")
p_10.prices << Price.create(salesprice: 15000, pricecost: 10000)
