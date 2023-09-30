import 'package:cep_app/models/enderecomodel.dart';

abstract class CepRepository {
  Future<EnderecoModel> getCep(String cep);
}
