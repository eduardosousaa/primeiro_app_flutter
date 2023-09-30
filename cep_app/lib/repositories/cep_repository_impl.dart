import 'dart:math';

import 'package:cep_app/models/enderecomodel.dart';
import 'package:dio/dio.dart';

import './cep_repository.dart';

class CepRepositoryImpl implements CepRepository {
  @override
  Future<EnderecoModel> getCep(String cep) async {
    try {
      final result = await Dio().get('https://viacep.com.br/ws/$cep/json/');
      return EnderecoModel.fromMap(result.data);
    } on DioException catch (e) {
      print('Erro ao buscar CEP ${e} :/');
      throw Exception('Erro ao buscar CEP');
    }
  }
}
