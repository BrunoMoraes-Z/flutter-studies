import 'package:injections/modules/home/models/fact_model.dart';
import 'package:injections/shared/http/http_client.dart';

class HomeRepository {
  final HttpClient client;

  HomeRepository(this.client);

  Future<FactModel> getFact() async {
    final response = await client.get('/fact');
    if (response.hasError()) throw Exception('Nenhum fato encontrado.');
    return FactModel.fromJson(response.json);
  }
}
