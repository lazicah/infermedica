import 'dart:convert';

import '../src/models/symptom.dart';
import '../src/models/enums/enums.dart';
import 'package:http/http.dart';

class InfermedicaApi {
  /// This is you App-Id found on your Infermedica Dashboard
  final String _appId;

  /// This is you Api-Key found on your Infermedica Dashboard
  final String _appKey;
  final String? _interviewId;
  final String? _apiModel;
  final String _apiUrl = 'https://api.infermedica.com/v3/';
  final Client _client = Client();

  InfermedicaApi._(
      this._appId, this._appKey, this._interviewId, this._apiModel);

  static InfermedicaApi? _instance;

  static InfermedicaApi get instance {
    assert(_instance != null, 'Must call initialize');
    return _instance!;
  }

  /// Must be called first
  static InfermedicaApi initialize({
    required String appId,
    required String appKey,
    String? interviewId,
    String? apiModel,
  }) {
    _instance = InfermedicaApi._(appId, appKey, interviewId, apiModel);
    return _instance!;
  }

  // Get Symptoms
  Future<List<Symptom?>> getSymptoms(int age,
      {AgeUnit? ageUnit, bool? enableTriage3}) async {
    try {
      final response =
          await _client.get(Uri.parse(_apiUrl), headers: _buildHeaders());
      if (response.statusCode == 200) {
        print(response.body);
        final list = jsonDecode(response.body) as List<Map<String, dynamic>>;

        return list.map((e) => Symptom.fromJson(jsonEncode(e))).toList();
      } else {
        var error = response.reasonPhrase;
        print('Error: $error');
        throw error!;
      }
    } catch (e) {
      rethrow;
    }
  }

  Map<String, String> _buildHeaders() {
    final headers = <String, String>{};
    headers.putIfAbsent('App-Id', () => _appId);
    headers.putIfAbsent('App-Key', () => _appKey);
    headers.putIfAbsent('Content-Type', () => 'application/json');
    if (_apiModel != null) {
      headers.putIfAbsent('Api-Model', () => _apiModel!);
    }
    if (_interviewId != null) {
      headers.putIfAbsent('Interview-Id', () => _interviewId!);
    }
    return headers;
  }
}
