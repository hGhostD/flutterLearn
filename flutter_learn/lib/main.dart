import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  Product(this.title, this.description);
}

void main() {
  runApp(MaterialApp(
    title: '导航的传输数据与接收',
    home: ProductList(
      products: List.generate(
        20,
        (i)=>Product('序号$i', '编号$i'),
    )
    ),
  ));
}

class ProductList extends StatelessWidget {
  final List<Product> products;
  ProductList({Key key,@required this.products}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('商品列表'),),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index){
            return ListTile(
              title: Text(products[index].title),
              subtitle: Text(products[index].description),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context)=>ProductDetail(products: products[index])
                  )
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class ProductDetail extends StatelessWidget {
  final Product products;
  ProductDetail({Key key,@required this.products}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${products.title}'),),
      body: Center(
        child: Text('${products.description}'),
      ),
    );
  }
}
