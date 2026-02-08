import 'package:either_type/product_repository.dart';

void main() {
  // fetchProduct();
  fetchEitherProduct();
}

void fetchProduct() async {
  try {
    final product = await ProductRepository().fetchProduct(1000);
    print(product);
  } catch (e) {
    print(e.toString());
  }
}

void fetchEitherProduct() async {
  final result = await ProductRepository().fetchEitherProduct(1);

  result.fold((error) => print(error), (product) => print(product));
}
