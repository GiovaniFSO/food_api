Product.destroy_all
ProductCategory.destroy_all
Restaurant.destroy_all
Category.destroy_all

puts 'Create Categories'

path_image = 'public/images/categories/mexican.jpg'
c = Category.create(id: 1, title: 'mexican')
c.image.attach(io: File.open(path_image), filename: 'mexican.jpg')

path_image = 'public/images/categories/italian.jpeg'
c = Category.create(id: 2, title: 'italian')
c.image.attach(io: File.open(path_image), filename: 'italian.jpeg')

path_image = 'public/images/categories/japonese.jpeg'
c = Category.create(id: 3, title: 'japonese')
c.image.attach(io: File.open(path_image), filename: 'japonese.jpeg')

path_image = 'public/images/categories/vegan.jpeg'
c = Category.create(id: 4, title: 'vegan')
c.image.attach(io: File.open(path_image), filename: 'vegan.jpeg')

path_image = 'public/images/categories/peruvian.jpg'
c = Category.create(id: 5, title: 'peruvian')
c.image.attach(io: File.open(path_image), filename: 'peruvian.jpg')


puts 'Create Restaurant'

# Mexican Restaurants
path_image = 'public/images/restaurants/1.jpeg'
r = Restaurant.create!(
  name: 'El Gallo Taqueria (Manhattan)',
  description: "Wish you could ask someone what's recommended here? Of the 57 things on the menu at this late night go-to,
                the burrito is one of the most popular items and the quesadilla and the taco are two of the items that are most
                commonly ordered together.",
  delivery_tax: 5.50,
  city: 'New York', street: 'Broome Street',
  number: '369', neighborhood: 'NY 10013', category_id: 1
)
r.image.attach(io: File.open(path_image), filename: '1.jpg')
pc = ProductCategory.create!(title: 'Mexican Food', restaurant: r)
prod = Product.create!(name: 'Nachos', price: 13,
                       description: 'Tortilla chips topped with your choice of cheese & filling, beans, guacamole,
                                     pico de gallo, pickled jalapenos & crema. Served with your choice of salsa on the side.',
                       product_category: pc)
prod.image.attach(io: File.open('public/images/products/nachosg.jpg'), filename: 'nachosg.jpg')
prod = Product.create!(name: 'Classic Nachos', price: 14,
                       description: 'Pinto beans, three cheese blend, topped with pickled jalapeños.
                                     Served with sour cream, and pico de gallo.',
                       product_category: pc)
prod.image.attach(io: File.open('public/images/products/nachosg2.jpeg'), filename: 'nachosg2.jpeg')


path_image = 'public/images/restaurants/1.jpeg'
r = Restaurant.create!(
  name: 'Taco Bell (58A Fulton St)',
  description: "Wondering what's recommended here at this late night go-to? Users love the
                Crunchwrap Supreme®, which is one of the most ordered items on the menu,
                as well as the Chicken Quesadilla and the Grilled Cheese Burrito, which are two of the items most commonly ordered together",
  delivery_tax: 5.50,
  city: 'New York', street: 'Fulton St',
  number: '58a', neighborhood: 'NY 10038', category_id: 1
)
r.image.attach(io: File.open(path_image), filename: '1.jpg')
pc = ProductCategory.create!(title: 'Mexican Food', restaurant: r)
prod = Product.create!(name: 'Nacho Cheese Doritos® Locos Tacos Supreme®', price: 19,
                       description: 'A crunchy taco shell made from Nacho Cheese Doritos® is filled with seasoned beef,
                                     cool sour cream, crispy lettuce, shredded cheddar cheese and ripe tomatoes.',
                       product_category: pc)
prod.image.attach(io: File.open('public/images/products/nachosg.jpg'), filename: 'nachosg.jpg')
prod = Product.create!(name: 'Nachos BellGrande ', price: 5.87,
                       description: 'A portion of crispy tortilla chips topped with warm nacho cheese sauce, refried beans,
                                     seasoned beef, ripe tomatoes and cool sour cream.',
                       product_category: pc)
prod.image.attach(io: File.open('public/images/products/nachosg2.jpeg'), filename: 'nachosg2.jpeg')

path_image = 'public/images/restaurants/2.jpeg'
r = Restaurant.create!(
  name: "Mary's Breakfast Burritos",
  description: 'Breakfast and Brunch • American • Sandwiches.',
  delivery_tax: 3.50,
  city: 'New York', street: '4th Ave',
  number: '59', neighborhood: 'NY 10003', category_id: 1
)
r.image.attach(io: File.open(path_image), filename: '2.jpg')
pc = ProductCategory.create!(title: 'Mexican Food', restaurant: r)
prod = Product.create!(name: 'Bacon Breakfast Burrito', price: 19, description: 'Fresh eggs, crispy bacon, cheese, and pico de gallo.',  product_category: pc)
prod.image.attach(io: File.open('public/images/products/bt.jpg'), filename: 'bt.jpg')
prod = Product.create!(name: 'Steak Quesadilla', price: 25,
                       description: 'Hot quesadilla made with steak, peppers, onions, mixed mozzarella and cheddar cheese.
                                     Includes chips, sour cream and salsa on the side.',
                       product_category: pc)
prod.image.attach(io: File.open('public/images/products/quesa.jpeg'), filename: 'quesa.jpeg')


# Italian Restaurants
path_image = 'public/images/restaurants/3.jpeg'
r = Restaurant.create!(
  name: 'BELLA FIORE PASTA',
  description: 'Italian • Pasta • Comfort Food.',
  delivery_tax: 7.50,
  city: 'New York', street: 'East 7th Street',
  number: '102', neighborhood: 'NY 10009', category_id: 2
)
r.image.attach(io: File.open(path_image), filename: '3.jpg')
pc = ProductCategory.create!(title: 'Dinners', restaurant: r)
prod = Product.create!(name: 'Eggplant Parmigiana', price: 10.95,
                       description: 'Fine Italian loaf stuffed with meats and vegetables topped with marinara and parmigiano reggiano cheese.',
                       product_category: pc)
prod.image.attach(io: File.open('public/images/products/berinjela.jpg'), filename: 'berinjela.jpg')
prod = Product.create!(name: 'Cheese Fries with Bacon Bits', price: 35,
                       description: 'Crispy golden french fries smothered in creamy cheese then topped with crispy bacon bits.',
                       product_category: pc)
prod.image.attach(io: File.open('public/images/products/fritas.jpg'), filename: 'fritas.jpg')

path_image = 'public/images/restaurants/4.jpeg'
r = Restaurant.create!(
  name: 'La Pergoletti',
  description: 'Nossa missão é estabelecer relações comerciais benéficas com diversos fornecedores que compartilham nosso compromisso com o atendimento ao cliente, qualidade e preços competitivos.',
  delivery_tax: 6.70,
  city: 'São Paulo', street: 'Rua Joaquim Pinto',
  number: '929', neighborhood: 'Vila Gomes Cardim', category_id: 2
)
r.image.attach(io: File.open(path_image), filename: '4.jpg')
pc = ProductCategory.create!(title: 'Fogazzas (Individuais)', restaurant: r)
prod = Product.create!(name: 'Fogazza Bacon', price: 12, description: 'Bacon, parmesão e mussarela.',  product_category: pc)
prod.image.attach(io: File.open('public/images/products/fogazza.jpg'), filename: 'fogazza.jpg')
prod = Product.create!(name: 'Fogazza A moda da Casa', price: 12, description: 'Calabresa, bacon, palmito e mussarela.',  product_category: pc)
prod.image.attach(io: File.open('public/images/products/fogazza.jpg'), filename: 'fogazza.jpg')

# Japonese Restaurants
path_image = 'public/images/restaurants/5.jpeg'
r = Restaurant.create!(
  name: 'Sushi Eterno',
  description: 'Existimos para garantir que cada hóspede receba um serviço rápido, profissional, amigável e cortês.',
  delivery_tax: 7.50,
  city: 'São Paulo', street: 'Avenida Manoel Domingos Pinto',
  number: '507', neighborhood: 'Parque Anhangüera', category_id: 3
)
r.image.attach(io: File.open(path_image), filename: '5.jpg')
pc = ProductCategory.create!(title: 'Entrada', restaurant: r)
prod = Product.create!(name: 'Temaki', price: 19.99, description: 'Enrolado de arroz com alga marinha em forma de cone',  product_category: pc)
prod.image.attach(io: File.open('public/images/products/temaki.jpeg'), filename: 'temaki.jpeg')
prod = Product.create!(name: 'Sashimi', price: 30.90, description: 'Peixe cru fatiado, salmao, atum e peixe prego',  product_category: pc)
prod.image.attach(io: File.open('public/images/products/sashimi.jpg'), filename: 'sashimi.jpg')

#Maceio
path_image = 'public/images/restaurants/5.jpeg'
r = Restaurant.create!(
  name: 'Sushi Eterno - Maceio',
  description: 'Existimos para garantir que cada hóspede receba um serviço rápido, profissional, amigável e cortês.',
  delivery_tax: 7.50,
  city: 'Maceio', street: 'Avenida do mar',
  number: '2344', neighborhood: 'Belo mar', category_id: 3
)
r.image.attach(io: File.open(path_image), filename: '5.jpg')
pc = ProductCategory.create!(title: 'Entrada', restaurant: r)
prod = Product.create!(name: 'Temaki', price: 19.99, description: 'Enrolado de arroz com alga marinha em forma de cone',  product_category: pc)
prod.image.attach(io: File.open('public/images/products/temaki.jpeg'), filename: 'temaki.jpeg')
prod = Product.create!(name: 'Sashimi', price: 30.90, description: 'Peixe cru fatiado, salmao, atum e peixe prego',  product_category: pc)
prod.image.attach(io: File.open('public/images/products/sashimi.jpg'), filename: 'sashimi.jpg')

path_image = 'public/images/restaurants/6.jpeg'
r = Restaurant.create!(
  name: 'Okuyamah',
  description: 'Restaurante conceituado, vencedor por 5 vezes como melhor restaurante Japones de São Paulo.',
  delivery_tax: 8.30,
  city: 'São Paulo', street: 'Rua Francisco Artassio',
  number: '134', neighborhood: 'Jardim das Laranjeiras', category_id: 3
)
r.image.attach(io: File.open(path_image), filename: '6.jpg')
pc = ProductCategory.create!(title: 'Entrada', restaurant: r)
prod = Product.create!(name: 'Hossomaki 16 unidades', price: 20.90, description: 'Enrolado fino com folha de alga marinha por fora.',  product_category: pc)
prod.image.attach(io: File.open('public/images/products/hosomaki.jpg'), filename: 'hosomaki.jpg')
prod = Product.create!(name: 'Hot roll - 10 unidades', price: 12, description: '10 unidades.',  product_category: pc)
prod.image.attach(io: File.open('public/images/products/hot-holl.jpg'), filename: 'hot-holl.jpg')