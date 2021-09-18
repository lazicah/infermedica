import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:infermedica/src/models/responses/diagnosis/category.dart';
import 'package:infermedica/src/models/responses/diagnosis/choice.dart';
import 'package:infermedica/src/models/responses/diagnosis/condition_details.dart';
import 'age_request_model.dart';
import 'concept_model.dart';
import 'enums/enums.dart';
import 'evidence.dart';
import 'info.dart';
import 'risk_factor.dart';
import 'symptom.dart';
import './responses/diagnosis/index.dart';
import './responses/explanation/index.dart';
import './responses/parse/index.dart';
import './responses/rationale/index.dart';
import './responses/triage/index.dart';
import './responses/recommended_specialist/index.dart';
import './responses/search_result.dart';
import './responses/suggest_result.dart';
import './requests/diagnosis/diagnosis_request.dart';
import './requests/explanation/explanation_request.dart';
import './requests/parse/parse_request.dart';
import './requests/rationale/rational_request.dart';
import './requests/suggest_request.dart';

part 'serializers.g.dart';

@SerializersFor([
  // Enums
  SexFilter,
  Prevalence,
  Acuteness,
  Severity,
  TriageLevel,
  RecommendedChannel,
  ConceptItemType,
  QuestionType,
  ChoiceId,
  AgeUnit,
  SourceType,
  SexType,
  RationaleType,
  ResultType,
  SuggestMethods,
  ParentRelation,

  // Models
  ConceptItemModel,
  AgeRequestModel,
  Evidence,
  RiskFactor,
  Info,
  Symptom,

  // Responses
  DiagnosisResponse,
  ParseResponse,
  RationaleResponse,
  TriageResponse,
  ExplanationResponse,
  SpecialistResponse,
  SearchResult,
  SuggestResult,

  // Requests
  DiagnosisRequest,
  ExplanationRequest,
  ParseRequest,
  RationaleRequest,
  SuggestRequest,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
