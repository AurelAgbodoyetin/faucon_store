import 'package:http/http.dart' as http;

class ProductsService {
  getAllProducts() async {
    var url = Uri.parse('https://fakestoreapi.com/products');
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
  }
}
