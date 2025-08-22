class Product {
  String name;
  String company;
  int count;
  int price;

  Product({required this.name, required this.company, this.count = 0, this.price = 50000});

  // Product.name(this.name, this.company);
  // Product.all(this.name, this.company, this.count, this.price);

  void sale(){
    count += 1;
  }

  @override
  String toString() {
    return 'Product{name: $name, company: $company, count: $count, price: $price}';
  }
}