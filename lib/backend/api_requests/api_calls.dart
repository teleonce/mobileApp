import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start App API Group Code

class AppAPIGroup {
  static String baseUrl = 'https://teleonce.com/wp-json/app';
  static Map<String, String> headers = {};
  static NewsCall newsCall = NewsCall();
  static ProgramsCall programsCall = ProgramsCall();
  static BrandedCall brandedCall = BrandedCall();
  static BannersCall bannersCall = BannersCall();
  static NewsCategoriesCall newsCategoriesCall = NewsCategoriesCall();
  static HomeCall homeCall = HomeCall();
  static LastestNewsCall lastestNewsCall = LastestNewsCall();
  static LatestShowsCall latestShowsCall = LatestShowsCall();
  static ShowInfoCall showInfoCall = ShowInfoCall();
  static NewsCatCall newsCatCall = NewsCatCall();
  static ShowCategoriesCall showCategoriesCall = ShowCategoriesCall();
}

class NewsCall {
  Future<ApiCallResponse> call({
    String? category = '',
    String? postsPerPage = '',
    String? paged = '',
    String? offset = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'News',
      apiUrl: '${AppAPIGroup.baseUrl}/v2/news/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'category': category,
        'posts_per_page': postsPerPage,
        'paged': paged,
        'offset': offset,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? title(dynamic response) => (getJsonField(
        response,
        r'''$[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? image(dynamic response) => (getJsonField(
        response,
        r'''$[:].image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? date(dynamic response) => (getJsonField(
        response,
        r'''$[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? video(dynamic response) => (getJsonField(
        response,
        r'''$[:].video''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<String>? link(dynamic response) => (getJsonField(
        response,
        r'''$[:].link''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? content(dynamic response) => (getJsonField(
        response,
        r'''$[:].content''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? category(dynamic response) => getJsonField(
        response,
        r'''$[:].category''',
        true,
      ) as List?;
  List? time(dynamic response) => getJsonField(
        response,
        r'''$[:].time''',
        true,
      ) as List?;
}

class ProgramsCall {
  Future<ApiCallResponse> call({
    String? category = '',
    String? postsPerPage = '',
    String? paged = '',
    String? offset = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Programs',
      apiUrl: '${AppAPIGroup.baseUrl}/v2/shows/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'category': category,
        'posts_per_page': postsPerPage,
        'paged': paged,
        'offset': offset,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? title(dynamic response) => (getJsonField(
        response,
        r'''$[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? image(dynamic response) => (getJsonField(
        response,
        r'''$[:].image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? date(dynamic response) => (getJsonField(
        response,
        r'''$[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? video(dynamic response) => (getJsonField(
        response,
        r'''$[:].video''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<String>? link(dynamic response) => (getJsonField(
        response,
        r'''$[:].link''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? content(dynamic response) => (getJsonField(
        response,
        r'''$[:].content''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? category(dynamic response) => getJsonField(
        response,
        r'''$[:].category''',
        true,
      ) as List?;
}

class BrandedCall {
  Future<ApiCallResponse> call({
    String? category = '',
    String? postsPerPage = '',
    String? paged = '',
    String? offset = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Branded',
      apiUrl: '${AppAPIGroup.baseUrl}/v1/branded-content/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'category': category,
        'posts_per_page': postsPerPage,
        'paged': paged,
        'offset': offset,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? title(dynamic response) => (getJsonField(
        response,
        r'''$[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? image(dynamic response) => (getJsonField(
        response,
        r'''$[:].image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? date(dynamic response) => (getJsonField(
        response,
        r'''$[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? video(dynamic response) => (getJsonField(
        response,
        r'''$[:].video''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<String>? link(dynamic response) => (getJsonField(
        response,
        r'''$[:].link''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class BannersCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Banners',
      apiUrl: '${AppAPIGroup.baseUrl}/v2/banner',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? image(dynamic response) => (getJsonField(
        response,
        r'''$[:].image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? linkApp(dynamic response) => (getJsonField(
        response,
        r'''$[:].link_app''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? link(dynamic response) => (getJsonField(
        response,
        r'''$[:].link''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class NewsCategoriesCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'News Categories',
      apiUrl: '${AppAPIGroup.baseUrl}/v2/news/categories',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? icon(dynamic response) => (getJsonField(
        response,
        r'''$[:].icon''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class HomeCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'HOME',
      apiUrl: '${AppAPIGroup.baseUrl}/v2/home',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? noticias(dynamic response) => getJsonField(
        response,
        r'''$.noticias''',
        true,
      ) as List?;
  List? branded(dynamic response) => getJsonField(
        response,
        r'''$.branded''',
        true,
      ) as List?;
  List<int>? brandedId(dynamic response) => (getJsonField(
        response,
        r'''$.branded[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? brandedTitle(dynamic response) => (getJsonField(
        response,
        r'''$.branded[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? brandedImage(dynamic response) => (getJsonField(
        response,
        r'''$.branded[:].image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? brandedDate(dynamic response) => (getJsonField(
        response,
        r'''$.branded[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? brandedCategory(dynamic response) => getJsonField(
        response,
        r'''$.branded[:].category''',
        true,
      ) as List?;
  List<String>? brandedLink(dynamic response) => (getJsonField(
        response,
        r'''$.branded[:].link''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? brandedVideo(dynamic response) => (getJsonField(
        response,
        r'''$.branded[:].video''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<int>? noticiasId(dynamic response) => (getJsonField(
        response,
        r'''$.noticias[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? noticiasTitle(dynamic response) => (getJsonField(
        response,
        r'''$.noticias[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? noticiasImage(dynamic response) => (getJsonField(
        response,
        r'''$.noticias[:].image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? noticiasDate(dynamic response) => (getJsonField(
        response,
        r'''$.noticias[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? noticiasCategory(dynamic response) => (getJsonField(
        response,
        r'''$.noticias[:].category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? noticiasLink(dynamic response) => (getJsonField(
        response,
        r'''$.noticias[:].link''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? noticiasVideo(dynamic response) => (getJsonField(
        response,
        r'''$.noticias[:].video''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List? programas(dynamic response) => getJsonField(
        response,
        r'''$.programas''',
        true,
      ) as List?;
  List<int>? programasId(dynamic response) => (getJsonField(
        response,
        r'''$.programas[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? programasTitle(dynamic response) => (getJsonField(
        response,
        r'''$.programas[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? programasImage(dynamic response) => (getJsonField(
        response,
        r'''$.programas[:].image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? programasDate(dynamic response) => (getJsonField(
        response,
        r'''$.programas[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? programasCategory(dynamic response) => (getJsonField(
        response,
        r'''$.programas[:].category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? programasLink(dynamic response) => (getJsonField(
        response,
        r'''$.programas[:].link''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? programasVideo(dynamic response) => (getJsonField(
        response,
        r'''$.programas[:].video''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  dynamic userLocation(dynamic response) => getJsonField(
        response,
        r'''$.userlocation''',
      );
  String? country(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.userlocation.country''',
      ));
  List? baner(dynamic response) => getJsonField(
        response,
        r'''$.banner''',
        true,
      ) as List?;
  List<String>? bannerImage(dynamic response) => (getJsonField(
        response,
        r'''$.banner[:].image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? bannerVideo(dynamic response) => (getJsonField(
        response,
        r'''$.banner[:].video''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<bool>? bannerLink(dynamic response) => (getJsonField(
        response,
        r'''$.banner[:].link''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<bool>? bannerLinkApp(dynamic response) => (getJsonField(
        response,
        r'''$.banner[:].link_app''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List? bannerTitle(dynamic response) => getJsonField(
        response,
        r'''$.banner[:].title''',
        true,
      ) as List?;
  List? bannerTime(dynamic response) => getJsonField(
        response,
        r'''$.banner[:].time''',
        true,
      ) as List?;
  List? showsCat(dynamic response) => getJsonField(
        response,
        r'''$.categories_shows.data''',
        true,
      ) as List?;
}

class LastestNewsCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Lastest News',
      apiUrl: '${AppAPIGroup.baseUrl}/v2/lastest-news/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? internacionales(dynamic response) => getJsonField(
        response,
        r'''$.Internacionales''',
        true,
      ) as List?;
  List<int>? internacionalesId(dynamic response) => (getJsonField(
        response,
        r'''$.Internacionales[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? internacionalesTitle(dynamic response) => (getJsonField(
        response,
        r'''$.Internacionales[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? internacionalesContent(dynamic response) => (getJsonField(
        response,
        r'''$.Internacionales[:].content''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? internacionalesImage(dynamic response) => (getJsonField(
        response,
        r'''$.Internacionales[:].image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? internacionalesDate(dynamic response) => (getJsonField(
        response,
        r'''$.Internacionales[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? internacioalesTime(dynamic response) => (getJsonField(
        response,
        r'''$.Internacionales[:].time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? internacionalesVideo(dynamic response) => (getJsonField(
        response,
        r'''$.Internacionales[:].video''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<String>? internacionalesLink(dynamic response) => (getJsonField(
        response,
        r'''$.Internacionales[:].link''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? internacionnalesCategory(dynamic response) => (getJsonField(
        response,
        r'''$.Internacionales[:].category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? locales(dynamic response) => getJsonField(
        response,
        r'''$.Locales''',
        true,
      ) as List?;
  List<int>? localesId(dynamic response) => (getJsonField(
        response,
        r'''$.Locales[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? localesTitle(dynamic response) => (getJsonField(
        response,
        r'''$.Locales[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? localesCotent(dynamic response) => (getJsonField(
        response,
        r'''$.Locales[:].content''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? localesImage(dynamic response) => (getJsonField(
        response,
        r'''$.Locales[:].image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? localesDate(dynamic response) => (getJsonField(
        response,
        r'''$.Locales[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? localesTime(dynamic response) => (getJsonField(
        response,
        r'''$.Locales[:].time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? localesCategory(dynamic response) => (getJsonField(
        response,
        r'''$.Locales[:].category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? localesLink(dynamic response) => (getJsonField(
        response,
        r'''$.Locales[:].link''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? localesVideo(dynamic response) => (getJsonField(
        response,
        r'''$.Locales[:].video''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List? deportes(dynamic response) => getJsonField(
        response,
        r'''$.Deportes''',
        true,
      ) as List?;
  List<int>? deportesId(dynamic response) => (getJsonField(
        response,
        r'''$.Deportes[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? deportesTitle(dynamic response) => (getJsonField(
        response,
        r'''$.Deportes[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? deportesContent(dynamic response) => (getJsonField(
        response,
        r'''$.Deportes[:].content''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? deportesImage(dynamic response) => (getJsonField(
        response,
        r'''$.Deportes[:].image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? deportesDate(dynamic response) => (getJsonField(
        response,
        r'''$.Deportes[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? deportesTime(dynamic response) => (getJsonField(
        response,
        r'''$.Deportes[:].time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? deportesCategory(dynamic response) => (getJsonField(
        response,
        r'''$.Deportes[:].category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? deportesLink(dynamic response) => (getJsonField(
        response,
        r'''$.Deportes[:].link''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? deportesVideo(dynamic response) => (getJsonField(
        response,
        r'''$.Deportes[:].video''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List? entretenimiento(dynamic response) => getJsonField(
        response,
        r'''$.Entretenimiento''',
        true,
      ) as List?;
  List<int>? entretenimientoId(dynamic response) => (getJsonField(
        response,
        r'''$.Entretenimiento[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? entretenimientoTitle(dynamic response) => (getJsonField(
        response,
        r'''$.Entretenimiento[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? entretenimientoContent(dynamic response) => (getJsonField(
        response,
        r'''$.Entretenimiento[:].content''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? entretenimientoImage(dynamic response) => (getJsonField(
        response,
        r'''$.Entretenimiento[:].image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? entretenimientoDate(dynamic response) => (getJsonField(
        response,
        r'''$.Entretenimiento[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? entretenimientoTime(dynamic response) => (getJsonField(
        response,
        r'''$.Entretenimiento[:].time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? entretenimientoCategory(dynamic response) => (getJsonField(
        response,
        r'''$.Entretenimiento[:].category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? entretenimientoLink(dynamic response) => (getJsonField(
        response,
        r'''$.Entretenimiento[:].link''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? entretenimientoVideo(dynamic response) => (getJsonField(
        response,
        r'''$.Entretenimiento[:].video''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List? latest(dynamic response) => getJsonField(
        response,
        r'''$.latest''',
        true,
      ) as List?;
  List<int>? latestId(dynamic response) => (getJsonField(
        response,
        r'''$.latest[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? latestTitle(dynamic response) => (getJsonField(
        response,
        r'''$.latest[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? latestContent(dynamic response) => (getJsonField(
        response,
        r'''$.latest[:].content''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? latestImage(dynamic response) => (getJsonField(
        response,
        r'''$.latest[:].image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? latestDate(dynamic response) => (getJsonField(
        response,
        r'''$.latest[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? latestTime(dynamic response) => (getJsonField(
        response,
        r'''$.latest[:].time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? latestCategory(dynamic response) => (getJsonField(
        response,
        r'''$.latest[:].category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? latestLink(dynamic response) => (getJsonField(
        response,
        r'''$.latest[:].link''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? latestVideo(dynamic response) => (getJsonField(
        response,
        r'''$.latest[:].video''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List? politica(dynamic response) => getJsonField(
        response,
        r'''$.Política''',
        true,
      ) as List?;
  List<int>? politicaId(dynamic response) => (getJsonField(
        response,
        r'''$.Política[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? politicaTitle(dynamic response) => (getJsonField(
        response,
        r'''$.Política[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? politicaContent(dynamic response) => (getJsonField(
        response,
        r'''$.Política[:].content''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? politicaImage(dynamic response) => (getJsonField(
        response,
        r'''$.Política[:].image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? politicaDate(dynamic response) => (getJsonField(
        response,
        r'''$.Política[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? politicaTime(dynamic response) => (getJsonField(
        response,
        r'''$.Política[:].time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? politicaCategory(dynamic response) => (getJsonField(
        response,
        r'''$.Política[:].category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? politicaLink(dynamic response) => (getJsonField(
        response,
        r'''$.Política[:].link''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? politicaVideo(dynamic response) => (getJsonField(
        response,
        r'''$.Política[:].video''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List? salud(dynamic response) => getJsonField(
        response,
        r'''$.Salud''',
        true,
      ) as List?;
  List<int>? saludId(dynamic response) => (getJsonField(
        response,
        r'''$.Salud[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? saludTitle(dynamic response) => (getJsonField(
        response,
        r'''$.Salud[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? saludContent(dynamic response) => (getJsonField(
        response,
        r'''$.Salud[:].content''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? saludImage(dynamic response) => (getJsonField(
        response,
        r'''$.Salud[:].image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? saludDate(dynamic response) => (getJsonField(
        response,
        r'''$.Salud[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? saludTime(dynamic response) => (getJsonField(
        response,
        r'''$.Salud[:].time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? saludCategory(dynamic response) => (getJsonField(
        response,
        r'''$.Salud[:].category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? saludLink(dynamic response) => (getJsonField(
        response,
        r'''$.Salud[:].link''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? saludVideo(dynamic response) => (getJsonField(
        response,
        r'''$.Salud[:].video''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List? seguridad(dynamic response) => getJsonField(
        response,
        r'''$.Seguridad''',
        true,
      ) as List?;
  List<int>? seguridadId(dynamic response) => (getJsonField(
        response,
        r'''$.Seguridad[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? seguridadTitle(dynamic response) => (getJsonField(
        response,
        r'''$.Seguridad[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? seguridadContent(dynamic response) => (getJsonField(
        response,
        r'''$.Seguridad[:].content''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? seguridadImage(dynamic response) => (getJsonField(
        response,
        r'''$.Seguridad[:].image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? seguridadDate(dynamic response) => (getJsonField(
        response,
        r'''$.Seguridad[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? seguridadTime(dynamic response) => (getJsonField(
        response,
        r'''$.Seguridad[:].time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? seguridadCatgeory(dynamic response) => (getJsonField(
        response,
        r'''$.Seguridad[:].category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? seguridadLink(dynamic response) => (getJsonField(
        response,
        r'''$.Seguridad[:].link''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? seguridadVideo(dynamic response) => (getJsonField(
        response,
        r'''$.Seguridad[:].video''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List? tecnologia(dynamic response) => getJsonField(
        response,
        r'''$.Tecnología''',
        true,
      ) as List?;
}

class LatestShowsCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Latest Shows',
      apiUrl: '${AppAPIGroup.baseUrl}/v2/lastest-shows',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? latest(dynamic response) => getJsonField(
        response,
        r'''$.latest''',
        true,
      ) as List?;
  List? pRenVivo(dynamic response) => getJsonField(
        response,
        r'''$.prenvivo''',
        true,
      ) as List?;
  List? lasNoticias(dynamic response) => getJsonField(
        response,
        r'''$.lasnoticias''',
        true,
      ) as List?;
  List? laComay(dynamic response) => getJsonField(
        response,
        r'''$.lacomay''',
        true,
      ) as List?;
  List? laBoveda(dynamic response) => getJsonField(
        response,
        r'''$.labovedadeteleonce''',
        true,
      ) as List?;
  List? jpd(dynamic response) => getJsonField(
        response,
        r'''$.jugandopelotadura''',
        true,
      ) as List?;
  List? epdp(dynamic response) => getJsonField(
        response,
        r'''$.elpoderdelpueblo''',
        true,
      ) as List?;
  List? bannners(dynamic response) => getJsonField(
        response,
        r'''$.banner''',
        true,
      ) as List?;
  List? enLaManana(dynamic response) => getJsonField(
        response,
        r'''$.enlamanana''',
        true,
      ) as List?;
  List? quienCaera(dynamic response) => getJsonField(
        response,
        r'''$.quiencaera''',
        true,
      ) as List?;
  List? enAlerta(dynamic response) => getJsonField(
        response,
        r'''$.enalerta''',
        true,
      ) as List?;
  List? paGanar(dynamic response) => getJsonField(
        response,
        r'''$.paganaryreir''',
        true,
      ) as List?;
}

class ShowInfoCall {
  Future<ApiCallResponse> call({
    String? show = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Show Info',
      apiUrl: '${AppAPIGroup.baseUrl}/v1/shows/category/$show',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.name''',
      );
  dynamic cover(dynamic response) => getJsonField(
        response,
        r'''$.cover_image''',
      );
  dynamic banner(dynamic response) => getJsonField(
        response,
        r'''$.banner[:].mobile''',
      );
  dynamic video(dynamic response) => getJsonField(
        response,
        r'''$.banner[:].video''',
      );
  dynamic horario(dynamic response) => getJsonField(
        response,
        r'''$.time[:].friendly_time''',
      );
}

class NewsCatCall {
  Future<ApiCallResponse> call({
    String? cat = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'News Cat',
      apiUrl: '${AppAPIGroup.baseUrl}/v1/news/category/$cat',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.name''',
      );
}

class ShowCategoriesCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Show Categories',
      apiUrl: '${AppAPIGroup.baseUrl}/v1/shows/categories',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?;
  List? name(dynamic response) => getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?;
  List? image(dynamic response) => getJsonField(
        response,
        r'''$[:].image''',
        true,
      ) as List?;
}

/// End App API Group Code

class GetLiveCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetLive',
      apiUrl: 'https://teleonce.com/wp-json/app/v1/live',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static bool? live(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.is_live''',
      ));
}

class WeatherCall {
  static Future<ApiCallResponse> call({
    String? lat = '18.3892375',
    String? lon = '-66.0604725',
    String? units = 'imperial',
    String? appid = '5ea20c34427b9975a24ca2c9d4b64486',
    String? lang = 'es',
    String? exclude = 'minutely',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Weather',
      apiUrl: 'https://api.openweathermap.org/data/2.5/weather',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'lat': lat,
        'lon': lon,
        'units': units,
        'APPID': appid,
        'lang': lang,
        'exclude': exclude,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic temp(dynamic response) => getJsonField(
        response,
        r'''$.main.temp''',
      );
  static dynamic weatherIcon(dynamic response) => getJsonField(
        response,
        r'''$.weather[:].icon''',
      );
}

class CountryCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'country',
      apiUrl: 'https://geoip.razex.de/api/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? country(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.country.iso_code''',
      ));
  static String? countryName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.country.name''',
      ));
  static dynamic state(dynamic response) => getJsonField(
        response,
        r'''$.city.region_code''',
      );
  static dynamic stateName(dynamic response) => getJsonField(
        response,
        r'''$.city.region''',
      );
}

class BusquedaCall {
  static Future<ApiCallResponse> call({
    String? query = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Busqueda',
      apiUrl:
          'https://II7OT4KDT5-dsn.algolia.net/1/indexes/wp_searchable_posts/query',
      callType: ApiCallType.POST,
      headers: {
        'X-Algolia-API-Key': 'f17d37cf8adde0cae6409e2470c0762f',
        'X-Algolia-Application-Id': 'II7OT4KDT5',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? imageUrl(dynamic response) => (getJsonField(
        response,
        r'''$.hits[:].images.thumbnail.url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? link(dynamic response) => (getJsonField(
        response,
        r'''$.hits[:].permalink''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? categoria(dynamic response) => getJsonField(
        response,
        r'''$.hits[:].taxonomies.categorias''',
        true,
      ) as List?;
  static List<String>? content(dynamic response) => (getJsonField(
        response,
        r'''$.hits[:].content''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? title(dynamic response) => (getJsonField(
        response,
        r'''$.hits[:].post_title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? date(dynamic response) => getJsonField(
        response,
        r'''$.hits[:].post_date_formatted''',
        true,
      ) as List?;
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
