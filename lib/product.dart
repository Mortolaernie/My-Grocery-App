import 'package:my_grocery_app/assets.dart';
import 'package:my_grocery_app/main.dart';
class Product {
  final String image;
  final String id;
  final String name;
  final String vendor;
  final double price;

  Product({
    required this.image,
    required this.id,
    required this.name,
    required this.vendor,
    required this.price,
  });
}
final List<Product> products = [
  Product(image: AssetImages.apple, id: '1', name: 'Apple', vendor: 'Fresh Farms', price: 0.99),
  Product(image: AssetImages.banana, id: '2', name: 'Banana', vendor: 'Tropical Goods', price: 0.59),
  Product(image: AssetImages.broccoli, id: '3', name: 'Broccoli', vendor: 'Veggie Delight', price: 0.49),
  Product(image: AssetImages.cabbage, id: '4', name: 'Cabbage', vendor: 'Fresh Farms', price: 2.99),
  Product(image: AssetImages.carrots, id: '5', name: 'Carrots', vendor: 'Fresh Farms', price: 1.99),
  Product(image: AssetImages.egg, id: '6', name: 'Egg', vendor: 'Baking Essentials', price: 3.49),
  Product(image: AssetImages.eggplant, id: '7', name: 'Eggplant', vendor: 'Veggie Delight', price: 2.49),
  Product(image: AssetImages.grapes, id: '8', name: 'Grapes', vendor: 'Tropical Goods', price: 4.99),
  Product(image: AssetImages.honey, id: '9', name: 'Honey', vendor: 'Tropical Goods', price: 5.49),
  Product(image: AssetImages.kiwi, id: '10', name: 'Kiwi', vendor: 'Fresh Squeezed', price: 2.99),
  Product(image: AssetImages.lemon, id: '11', name: 'Lemon', vendor: 'Green Grocers', price: 1.99),
  Product(image: AssetImages.lettuce, id: '12', name: 'Lettuce', vendor: 'Salad Stop', price: 1.49),
  Product(image: AssetImages.mango, id: '13', name: 'Mango', vendor: 'Tropical Fruits', price: 1.99),
  Product(image: AssetImages.orange, id: '14', name: 'Orange', vendor: 'Healthy Snacks', price: 3.99),
  Product(image: AssetImages.pea, id: '15', name: 'Pea', vendor: 'Tropical Goods', price: 6.99),
  Product(image: AssetImages.potato, id: '16', name: 'Potato', vendor: 'Tropical Goods', price: 2.99),
  Product(image: AssetImages.rosemary, id: '17', name: 'Rosemary', vendor: 'Tropical Goods', price: 4.49),
  Product(image: AssetImages.spinach, id: '18', name: 'Spinach', vendor: 'Tropical Goods', price: 2.49),
  Product(image: AssetImages.strawberry, id: '19', name: 'Strawberry', vendor: 'Tropical Goods', price: 1.99),
  Product(image: AssetImages.tomato, id: '20', name: 'Tomato', vendor: 'Tropical Goods', price: 0.79),

];
