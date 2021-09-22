import 'dart:convert';

import 'package:infermedica/infermedica.dart';
import 'package:infermedica/src/models/requests/suggest_request.dart';
import 'package:infermedica/src/models/responses/diagnosis/diagnosis_response.dart';
import 'package:infermedica/src/models/responses/explanation/explanation_response.dart';
import 'package:infermedica/src/models/responses/parse/index.dart';
import 'package:infermedica/src/models/responses/rationale/index.dart';
import 'package:infermedica/src/models/responses/recommended_specialist/index.dart';
import 'package:infermedica/src/models/responses/search_result.dart';
import 'package:infermedica/src/models/responses/suggest_result.dart';
import 'package:infermedica/src/models/responses/triage/index.dart';

import '../src/models/symptom.dart';
import '../src/models/enums/enums.dart';
import 'package:http/http.dart';

import 'models/age_request_model.dart';
import 'models/requests/diagnosis/diagnosis_request.dart';
import 'models/requests/explanation/explanation_request.dart';
import 'models/requests/parse/parse_request.dart';
import 'models/requests/rationale/rational_request.dart';

class InfermedicaApi {
  /// This is you App-Id found on your Infermedica Dashboard
  final String _appId;

  /// This is you Api-Key found on your Infermedica Dashboard
  final String _appKey;
  final String? _interviewId;
  final String? _apiModel;
  final String _apiUrl = 'api.infermedica.com';
  final Client _client = Client();

  InfermedicaApi._(
      this._appId, this._appKey, this._interviewId, this._apiModel);

  static InfermedicaApi? _instance;

  static InfermedicaApi get instance {
    assert(_instance != null, 'Must call initialize');
    return _instance!;
  }

  /// Must be called first
  static InfermedicaApi initializeApi({
    required String appId,
    required String appKey,
    String? interviewId,
    String? apiModel,
  }) {
    _instance = InfermedicaApi._(appId, appKey, interviewId, apiModel);
    print('Infermedica Api Initialised');

    return _instance!;
  }

  /// Returns a list of all available symptoms
  Future<List<Symptom>> getSymptoms(int age,
      {AgeUnit? ageUnit = AgeUnit.year, bool? enableTriage3}) async {
    final uri = Uri.http(_apiUrl, '/v3/symptoms', {
      'age.value': '$age',
      'age.unit': ageUnit!.name,
      'enable_triage_3': enableTriage3.toString(),
    });

    try {
      final response = await _client.get(uri, headers: _buildHeaders());
      final responseString = _handleResponse(response);
      final list = jsonDecode(responseString) as List<dynamic>;

      return list.map((e) => Symptom.fromJson(jsonEncode(e))!).toList();
    } catch (e) {
      rethrow;
    }
  }

  /// Returns details of a single symptom specified by [id] parameter
  Future<Symptom> getSymptom(String id, int age,
      {AgeUnit? ageUnit = AgeUnit.year, bool? enableTriage3}) async {
    final uri = Uri.http(_apiUrl, '/v3/symptoms/$id', {
      'age.value': '$age',
      'age.unit': ageUnit!.name,
      'enable_triage_3': enableTriage3.toString(),
    });

    try {
      final response = await _client.get(uri, headers: _buildHeaders());
      final responseString = _handleResponse(response);

      return Symptom.fromJson(responseString)!;
    } catch (e) {
      rethrow;
    }
  }

  /// Suggests possible symptoms based on provided patient information
  Future<List<SuggestResult>> getSuggestions({
    required SexType sex,
    required int age,
    AgeUnit? unit,
    required SuggestMethods suggestMethod,
    List<Evidence>? evidence,
    Map<String, dynamic>? extras,
    String? evaluatedAt,
  }) async {
    final uri = Uri.http(
      _apiUrl,
      '/v3/suggest',
    );

    AgeRequestModel ageModel = AgeRequestModel(value: age, unit: unit);

    SuggestRequest request = SuggestRequest(
      sex: sex,
      age: ageModel,
      evidence: evidence!,
      extras: extras,
      evaluatedAt: evaluatedAt,
      suggestMethod: suggestMethod,
    );

    try {
      final response = await _client.post(uri,
          body: request.toJson(), headers: _buildHeaders());
      final responseString = _handleResponse(response);
      final list = jsonDecode(responseString) as List<dynamic>;

      return list.map((e) => SuggestResult.fromJson(jsonEncode(e))!).toList();
    } catch (e) {
      rethrow;
    }
  }

  /// Returns a list of concepts
  Future<List<ConceptItemModel>> getConcepts(
      {List<String>? ids, List<String>? types}) async {
    final uri = Uri.http(_apiUrl, '/v3/concepts', {
      'ids': ids,
      'types': types,
    });

    try {
      final response = await _client.get(uri, headers: _buildHeaders());
      final responseString = _handleResponse(response);
      final list = jsonDecode(responseString) as List<dynamic>;

      return list
          .map((e) => ConceptItemModel.fromJson(jsonEncode(e))!)
          .toList();
    } catch (e) {
      rethrow;
    }
  }

  /// Returns a particular concept specified by [id] parameter.
  Future<ConceptItemModel> getConcept(String id) async {
    final uri = Uri.http(_apiUrl, '/v3/concepts/$id');

    try {
      final response = await _client.get(uri, headers: _buildHeaders());
      final responseString = _handleResponse(response);

      return ConceptItemModel.fromJson(responseString)!;
    } catch (e) {
      rethrow;
    }
  }

  /// Returns a list of all available conditions.
  Future<List<Condition>> getConditions(int age,
      {AgeUnit? ageUnit = AgeUnit.year,
      bool? enableTriage3,
      bool? includeInternal}) async {
    final uri = Uri.http(_apiUrl, '/v3/conditions', {
      'age.value': '$age',
      'age.unit': ageUnit!.name,
      'enable_triage_3': enableTriage3.toString(),
      'include_internal': includeInternal,
    });

    try {
      final response = await _client.get(uri, headers: _buildHeaders());
      final responseString = _handleResponse(response);
      final list = jsonDecode(responseString) as List<dynamic>;

      return list.map((e) => Condition.fromJson(jsonEncode(e))!).toList();
    } catch (e) {
      rethrow;
    }
  }

  /// Returns details of a single condition specified by [id] parameter.
  Future<Condition> getCondition(String id, int age,
      {AgeUnit? ageUnit = AgeUnit.year,
      bool? enableTriage3,
      bool? includeInternal}) async {
    final uri = Uri.http(_apiUrl, '/v3/conditions/$id', {
      'age.value': '$age',
      'age.unit': ageUnit!.name,
      'enable_triage_3': enableTriage3.toString(),
      'include_internal': includeInternal,
    });

    try {
      final response = await _client.get(uri, headers: _buildHeaders());
      final responseString = _handleResponse(response);

      return Condition.fromJson(responseString)!;
    } catch (e) {
      rethrow;
    }
  }

  /// Suggests possible diagnoses and relevant observations based on provided patient information.
  Future<DiagnosisResponse> getDiagnosis(
      {required SexType sex,
      required int age,
      AgeUnit? unit,
      List<Evidence>? evidence,
      Map<String, dynamic>? extras,
      String? evaluatedAt}) async {
    final uri = Uri.http(
      _apiUrl,
      '/v3/diagnosis',
    );

    AgeRequestModel ageModel = AgeRequestModel(value: age, unit: unit);

    DiagnosisRequest request = DiagnosisRequest(
      sex: sex,
      age: ageModel,
      evidence: evidence,
      extras: extras,
      evaluatedAt: evaluatedAt,
    );

    try {
      final response = await _client.post(uri,
          body: request.toJson(), headers: _buildHeaders());
      final responseString = _handleResponse(response);

      return DiagnosisResponse.fromJson(responseString)!;
    } catch (e) {
      rethrow;
    }
  }

  /// Explains which evidence impact probability of selected condition.
  Future<ExplanationResponse> getExplanation(
      {required SexType sex,
      required int age,
      AgeUnit? unit,
      required String target,
      List<Evidence>? evidence,
      Map<String, dynamic>? extras,
      String? evaluatedAt}) async {
    final uri = Uri.http(
      _apiUrl,
      '/v3/explain',
    );

    AgeRequestModel ageModel = AgeRequestModel(value: age, unit: unit);

    ExplanationRequest request = ExplanationRequest(
        sex: sex,
        age: ageModel,
        evidence: evidence,
        extras: extras,
        evaluatedAt: evaluatedAt,
        target: target);
    try {
      final response = await _client.post(uri,
          body: request.toJson(), headers: _buildHeaders());
      final responseString = _handleResponse(response);

      return ExplanationResponse.fromJson(responseString)!;
    } catch (e) {
      rethrow;
    }
  }

  /// Returns information about data used by diagnostic engine.
  Future<Info> getInfo() async {
    final uri = Uri.http(_apiUrl, '/v3/info');

    try {
      final response = await _client.get(uri, headers: _buildHeaders());
      final responseString = _handleResponse(response);

      return Info.fromJson(responseString)!;
    } catch (e) {
      rethrow;
    }
  }

  /// Returns list of mentions of observation found in given text.
  Future<ParseResponse> parse({
    required int age,
    AgeUnit? unit,
    required String text,
    SexType? sex,
    bool? includeTokens,
    bool? correctSpelling,
    List<String>? conceptTypes,
  }) async {
    final uri = Uri.http(
      _apiUrl,
      '/v3/parse',
    );
    AgeRequestModel ageModel = AgeRequestModel(value: age, unit: unit);
    ParseRequest request = ParseRequest(
      age: ageModel,
      text: text,
      sex: sex,
      includeTokens: includeTokens,
      correctSpelling: correctSpelling,
      conceptTypes: conceptTypes,
    );

    try {
      final response = await _client.post(uri,
          body: request.toJson(), headers: _buildHeaders());
      final responseString = _handleResponse(response);

      return ParseResponse.fromJson(responseString)!;
    } catch (e) {
      rethrow;
    }
  }

  /// Returns rationale behind the question asked by the system.
  Future<RationaleResponse> getRationale({
    required SexType sex,
    required int age,
    AgeUnit? unit,
    List<Evidence>? evidence,
    Map<String, dynamic>? extras,
    String? evaluatedAt,
  }) async {
    final uri = Uri.http(
      _apiUrl,
      '/v3/rationale',
    );
    AgeRequestModel ageModel = AgeRequestModel(value: age, unit: unit);

    RationaleRequest request = RationaleRequest(
      age: ageModel,
      evidence: evidence,
      extras: extras,
      evaluatedAt: evaluatedAt,
      sex: sex,
    );

    try {
      final response = await _client.post(uri,
          body: request.toJson(), headers: _buildHeaders());
      final responseString = _handleResponse(response);

      return RationaleResponse.fromJson(responseString)!;
    } catch (e) {
      rethrow;
    }
  }

  /// Estimates recommended specialist based on provided patient information.
  Future<RecommendedSpecialist> recommendSpecialist({
    required SexType sex,
    required int age,
    AgeUnit? unit,
    List<Evidence>? evidence,
    Map<String, dynamic>? extras,
    String? evaluatedAt,
  }) async {
    final uri = Uri.http(
      _apiUrl,
      '/v3/recommend_specialist',
    );

    AgeRequestModel ageModel = AgeRequestModel(value: age, unit: unit);

    RationaleRequest request = RationaleRequest(
      age: ageModel,
      evidence: evidence,
      extras: extras,
      evaluatedAt: evaluatedAt,
      sex: sex,
    );

    try {
      final response = await _client.post(uri,
          body: request.toJson(), headers: _buildHeaders());
      final responseString = _handleResponse(response);

      return RecommendedSpecialist.fromJson(responseString)!;
    } catch (e) {
      rethrow;
    }
  }

  /// Suggests possible red flag symptoms based on provided patient information.
  Future<SuggestResult> getRedFlags({
    required SexType sex,
    required int age,
    AgeUnit? unit,
    List<Evidence>? evidence,
    Map<String, dynamic>? extras,
    String? evaluatedAt,
  }) async {
    final uri = Uri.http(
      _apiUrl,
      '/v3/red_flags',
    );

    AgeRequestModel ageModel = AgeRequestModel(value: age, unit: unit);

    RationaleRequest request = RationaleRequest(
      age: ageModel,
      evidence: evidence,
      extras: extras,
      evaluatedAt: evaluatedAt,
      sex: sex,
    );

    try {
      final response = await _client.post(uri,
          body: request.toJson(), headers: _buildHeaders());
      final responseString = _handleResponse(response);

      return SuggestResult.fromJson(responseString)!;
    } catch (e) {
      rethrow;
    }
  }

  /// Returns a list of all available risk factors.
  Future<List<RiskFactor>> getRiskFactors(int age,
      {AgeUnit? ageUnit = AgeUnit.year, bool? enableTriage3}) async {
    final uri = Uri.http(_apiUrl, '/v3/risk_factors', {
      'age.value': '$age',
      'age.unit': ageUnit!.name,
      'enable_triage_3': enableTriage3.toString(),
    });

    try {
      final response = await _client.get(uri, headers: _buildHeaders());
      final responseString = _handleResponse(response);
      final list = jsonDecode(responseString) as List<dynamic>;

      return list.map((e) => RiskFactor.fromJson(jsonEncode(e))!).toList();
    } catch (e) {
      rethrow;
    }
  }

  /// Returns details of a single risk factor specified by id parameter.
  Future<RiskFactor> getRiskFactor(String id, int age,
      {AgeUnit? ageUnit = AgeUnit.year, bool? enableTriage3}) async {
    final uri = Uri.http(_apiUrl, '/v3/risk_factors/$id', {
      'age.value': '$age',
      'age.unit': ageUnit!.name,
      'enable_triage_3': enableTriage3.toString(),
    });

    try {
      final response = await _client.get(uri, headers: _buildHeaders());
      final responseString = _handleResponse(response);

      return RiskFactor.fromJson(responseString)!;
    } catch (e) {
      rethrow;
    }
  }

  /// Returns list of observations matching the given phrase.
  Future<List<SearchResult>> search(String query, int age,
      {SexType? sex,
      AgeUnit? ageUnit = AgeUnit.year,
      int? maxResults,
      List<ResultType>? types}) async {
    final uri = Uri.http(_apiUrl, '/v3/search', {
      'phrase': query,
      'sex': sex?.name ?? '',
      'age.value': '$age',
      'age.unit': ageUnit!.name,
      'max_results': '$maxResults',
      'types': types?.map((e) => e.name).toList(),
    });

    try {
      final response = await _client.get(uri, headers: _buildHeaders());
      final responseString = _handleResponse(response);
      final list = jsonDecode(responseString) as List<dynamic>;

      return list.map((e) => SearchResult.fromJson(jsonEncode(e))!).toList();
    } catch (e) {
      rethrow;
    }
  }

  /// Estimates triage level based on provided patient information.
  Future<TriageResponse> getTriageLevel({
    required SexType sex,
    required int age,
    AgeUnit? unit,
    List<Evidence>? evidence,
    Map<String, dynamic>? extras,
    String? evaluatedAt,
  }) async {
    final uri = Uri.http(
      _apiUrl,
      '/v3/triage',
    );

    AgeRequestModel ageModel = AgeRequestModel(value: age, unit: unit);

    RationaleRequest request = RationaleRequest(
      age: ageModel,
      evidence: evidence,
      extras: extras,
      evaluatedAt: evaluatedAt,
      sex: sex,
    );

    try {
      final response = await _client.post(uri,
          body: request.toJson(), headers: _buildHeaders());
      final responseString = _handleResponse(response);

      return TriageResponse.fromJson(responseString)!;
    } catch (e) {
      rethrow;
    }
  }

  // Build request headers
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

  dynamic _handleResponse(Response response) {
    switch (response.statusCode) {
      case 201:
      case 200:
        print(['200/201 >>', response.body]);
        return response.body;

      case 400:
        print(['400 >>', response.body]);
        final error = json.decode(response.body);
        throw (error['message']);

      case 401:
        print(['401 >>', response.body]);
        final error = json.decode(response.body);
        throw (error['message']);

      case 403:
        print(['403 >>', response.body]);
        final error = json.decode(response.body);
        throw (error['message']);

      case 404:
        print(['404 >>', response.body]);
        final error = json.decode(response.body);
        throw (error['message']);

      case 409:
        print(['409 >>', response.body]);
        final error = json.decode(response.body);
        throw (error['message']);

      case 500:
      default:
        print(['500 >>', response.body]);
        final error = json.decode(response.body);
        throw (error['message']);
    }
  }
}
