import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Wordpress Group Code

class WordpressGroup {
  static String baseUrl = 'https://teleoncestg.wpengine.com/wp-json';
  static Map<String, String> headers = {};
  static PostsCall postsCall = PostsCall();
  static SinglePostCall singlePostCall = SinglePostCall();
  static NoticiasCall noticiasCall = NoticiasCall();
  static SearchCall searchCall = SearchCall();
  static ProgramasCall programasCall = ProgramasCall();
}

class PostsCall {
  Future<ApiCallResponse> call({
    String? perPage = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Posts',
      apiUrl: '${WordpressGroup.baseUrl}/wp/v2/posts/',
      callType: ApiCallType.GET,
      headers: {
        ...WordpressGroup.headers,
      },
      params: {
        'per_page': perPage,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SinglePostCall {
  Future<ApiCallResponse> call({
    String? postId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Single Post',
      apiUrl: '${WordpressGroup.baseUrl}/wp/v2/posts/${postId}',
      callType: ApiCallType.GET,
      headers: {
        ...WordpressGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class NoticiasCall {
  Future<ApiCallResponse> call({
    String? perPage = '5',
    String? search = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Noticias',
      apiUrl: '${WordpressGroup.baseUrl}/wp/v2/noticias',
      callType: ApiCallType.GET,
      headers: {
        ...WordpressGroup.headers,
      },
      params: {
        'per_page': perPage,
        'search': search,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      );
  dynamic date(dynamic response) => getJsonField(
        response,
        r'''$[:].date''',
        true,
      );
  dynamic modified(dynamic response) => getJsonField(
        response,
        r'''$[:].modified''',
        true,
      );
  dynamic link(dynamic response) => getJsonField(
        response,
        r'''$[:].link''',
        true,
      );
  dynamic title(dynamic response) => getJsonField(
        response,
        r'''$[:].title.rendered''',
        true,
      );
  dynamic content(dynamic response) => getJsonField(
        response,
        r'''$[:].content.rendered''',
        true,
      );
  dynamic excerp(dynamic response) => getJsonField(
        response,
        r'''$[:].excerpt.rendered''',
        true,
      );
  dynamic categorias(dynamic response) => getJsonField(
        response,
        r'''$[:].categorias''',
        true,
      );
  dynamic image(dynamic response) => getJsonField(
        response,
        r'''$[:].fimg_url''',
        true,
      );
}

class SearchCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Search',
      apiUrl: '${WordpressGroup.baseUrl}/wp/v2/search',
      callType: ApiCallType.GET,
      headers: {
        ...WordpressGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ProgramasCall {
  Future<ApiCallResponse> call({
    String? perPage = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Programas',
      apiUrl: '${WordpressGroup.baseUrl}/wp/v2/programas',
      callType: ApiCallType.GET,
      headers: {
        ...WordpressGroup.headers,
      },
      params: {
        'per_page': perPage,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
      );
  dynamic date(dynamic response) => getJsonField(
        response,
        r'''$[:].date''',
      );
  dynamic link(dynamic response) => getJsonField(
        response,
        r'''$[:].link''',
      );
  dynamic title(dynamic response) => getJsonField(
        response,
        r'''$[:].title.rendered''',
      );
  dynamic image(dynamic response) => getJsonField(
        response,
        r'''$[:].fimg_url''',
      );
  dynamic content(dynamic response) => getJsonField(
        response,
        r'''$[:].content.rendered''',
      );
}

/// End Wordpress Group Code

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
}

class NewsCall {
  Future<ApiCallResponse> call({
    String? category = '',
    String? postsPerPage = '',
    String? paged = '',
    String? offset = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'News',
      apiUrl: '${AppAPIGroup.baseUrl}/v2/news/',
      callType: ApiCallType.GET,
      headers: {
        ...AppAPIGroup.headers,
      },
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
    );
  }

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      );
  dynamic title(dynamic response) => getJsonField(
        response,
        r'''$[:].title''',
        true,
      );
  dynamic image(dynamic response) => getJsonField(
        response,
        r'''$[:].image''',
        true,
      );
  dynamic date(dynamic response) => getJsonField(
        response,
        r'''$[:].date''',
        true,
      );
  dynamic video(dynamic response) => getJsonField(
        response,
        r'''$[:].video''',
        true,
      );
  dynamic link(dynamic response) => getJsonField(
        response,
        r'''$[:].link''',
        true,
      );
  dynamic content(dynamic response) => getJsonField(
        response,
        r'''$[:].content''',
        true,
      );
  dynamic category(dynamic response) => getJsonField(
        response,
        r'''$[:].category''',
        true,
      );
  dynamic time(dynamic response) => getJsonField(
        response,
        r'''$[:].time''',
        true,
      );
}

class ProgramsCall {
  Future<ApiCallResponse> call({
    String? category = '',
    String? postsPerPage = '',
    String? paged = '',
    String? offset = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Programs',
      apiUrl: '${AppAPIGroup.baseUrl}/v2/shows/',
      callType: ApiCallType.GET,
      headers: {
        ...AppAPIGroup.headers,
      },
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
    );
  }

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      );
  dynamic title(dynamic response) => getJsonField(
        response,
        r'''$[:].title''',
        true,
      );
  dynamic image(dynamic response) => getJsonField(
        response,
        r'''$[:].image''',
        true,
      );
  dynamic date(dynamic response) => getJsonField(
        response,
        r'''$[:].date''',
        true,
      );
  dynamic video(dynamic response) => getJsonField(
        response,
        r'''$[:].video''',
        true,
      );
  dynamic link(dynamic response) => getJsonField(
        response,
        r'''$[:].link''',
        true,
      );
  dynamic content(dynamic response) => getJsonField(
        response,
        r'''$[:].content''',
        true,
      );
  dynamic category(dynamic response) => getJsonField(
        response,
        r'''$[:].category''',
        true,
      );
}

class BrandedCall {
  Future<ApiCallResponse> call({
    String? category = '',
    String? postsPerPage = '',
    String? paged = '',
    String? offset = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Branded',
      apiUrl: '${AppAPIGroup.baseUrl}/v1/branded-content/',
      callType: ApiCallType.GET,
      headers: {
        ...AppAPIGroup.headers,
      },
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
    );
  }

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      );
  dynamic title(dynamic response) => getJsonField(
        response,
        r'''$[:].title''',
        true,
      );
  dynamic image(dynamic response) => getJsonField(
        response,
        r'''$[:].image''',
        true,
      );
  dynamic date(dynamic response) => getJsonField(
        response,
        r'''$[:].date''',
        true,
      );
  dynamic video(dynamic response) => getJsonField(
        response,
        r'''$[:].video''',
        true,
      );
  dynamic link(dynamic response) => getJsonField(
        response,
        r'''$[:].link''',
        true,
      );
}

class BannersCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Banners',
      apiUrl: '${AppAPIGroup.baseUrl}/v2/banner',
      callType: ApiCallType.GET,
      headers: {
        ...AppAPIGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic image(dynamic response) => getJsonField(
        response,
        r'''$[:].image''',
        true,
      );
  dynamic linkApp(dynamic response) => getJsonField(
        response,
        r'''$[:].link_app''',
        true,
      );
  dynamic link(dynamic response) => getJsonField(
        response,
        r'''$[:].link''',
        true,
      );
}

class NewsCategoriesCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'News Categories',
      apiUrl: '${AppAPIGroup.baseUrl}/v2/news/categories',
      callType: ApiCallType.GET,
      headers: {
        ...AppAPIGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[:].name''',
        true,
      );
  dynamic icon(dynamic response) => getJsonField(
        response,
        r'''$[:].icon''',
        true,
      );
}

class HomeCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'HOME',
      apiUrl: '${AppAPIGroup.baseUrl}/v2/home',
      callType: ApiCallType.GET,
      headers: {
        ...AppAPIGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic noticias(dynamic response) => getJsonField(
        response,
        r'''$.noticias''',
        true,
      );
  dynamic branded(dynamic response) => getJsonField(
        response,
        r'''$.branded''',
        true,
      );
  dynamic brandedId(dynamic response) => getJsonField(
        response,
        r'''$.branded[:].id''',
        true,
      );
  dynamic brandedTitle(dynamic response) => getJsonField(
        response,
        r'''$.branded[:].title''',
        true,
      );
  dynamic brandedImage(dynamic response) => getJsonField(
        response,
        r'''$.branded[:].image''',
        true,
      );
  dynamic brandedDate(dynamic response) => getJsonField(
        response,
        r'''$.branded[:].date''',
        true,
      );
  dynamic brandedCategory(dynamic response) => getJsonField(
        response,
        r'''$.branded[:].category''',
        true,
      );
  dynamic brandedLink(dynamic response) => getJsonField(
        response,
        r'''$.branded[:].link''',
        true,
      );
  dynamic brandedVideo(dynamic response) => getJsonField(
        response,
        r'''$.branded[:].video''',
        true,
      );
  dynamic noticiasId(dynamic response) => getJsonField(
        response,
        r'''$.noticias[:].id''',
        true,
      );
  dynamic noticiasTitle(dynamic response) => getJsonField(
        response,
        r'''$.noticias[:].title''',
        true,
      );
  dynamic noticiasImage(dynamic response) => getJsonField(
        response,
        r'''$.noticias[:].image''',
        true,
      );
  dynamic noticiasDate(dynamic response) => getJsonField(
        response,
        r'''$.noticias[:].date''',
        true,
      );
  dynamic noticiasCategory(dynamic response) => getJsonField(
        response,
        r'''$.noticias[:].category''',
        true,
      );
  dynamic noticiasLink(dynamic response) => getJsonField(
        response,
        r'''$.noticias[:].link''',
        true,
      );
  dynamic noticiasVideo(dynamic response) => getJsonField(
        response,
        r'''$.noticias[:].video''',
        true,
      );
  dynamic programas(dynamic response) => getJsonField(
        response,
        r'''$.programas''',
        true,
      );
  dynamic programasId(dynamic response) => getJsonField(
        response,
        r'''$.programas[:].id''',
        true,
      );
  dynamic programasTitle(dynamic response) => getJsonField(
        response,
        r'''$.programas[:].title''',
        true,
      );
  dynamic programasImage(dynamic response) => getJsonField(
        response,
        r'''$.programas[:].image''',
        true,
      );
  dynamic programasDate(dynamic response) => getJsonField(
        response,
        r'''$.programas[:].date''',
        true,
      );
  dynamic programasCategory(dynamic response) => getJsonField(
        response,
        r'''$.programas[:].category''',
        true,
      );
  dynamic programasLink(dynamic response) => getJsonField(
        response,
        r'''$.programas[:].link''',
        true,
      );
  dynamic programasVideo(dynamic response) => getJsonField(
        response,
        r'''$.programas[:].video''',
        true,
      );
  dynamic userLocation(dynamic response) => getJsonField(
        response,
        r'''$.userlocation''',
      );
  dynamic country(dynamic response) => getJsonField(
        response,
        r'''$.userlocation.country''',
      );
  dynamic baner(dynamic response) => getJsonField(
        response,
        r'''$.banner''',
        true,
      );
  dynamic bannerImage(dynamic response) => getJsonField(
        response,
        r'''$.banner[:].image''',
        true,
      );
  dynamic bannerVideo(dynamic response) => getJsonField(
        response,
        r'''$.banner[:].video''',
        true,
      );
  dynamic bannerLink(dynamic response) => getJsonField(
        response,
        r'''$.banner[:].link''',
        true,
      );
  dynamic bannerLinkApp(dynamic response) => getJsonField(
        response,
        r'''$.banner[:].link_app''',
        true,
      );
  dynamic bannerTitle(dynamic response) => getJsonField(
        response,
        r'''$.banner[:].title''',
        true,
      );
  dynamic bannerTime(dynamic response) => getJsonField(
        response,
        r'''$.banner[:].time''',
        true,
      );
}

class LastestNewsCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Lastest News',
      apiUrl: '${AppAPIGroup.baseUrl}/v2/lastest-news/',
      callType: ApiCallType.GET,
      headers: {
        ...AppAPIGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic internacionales(dynamic response) => getJsonField(
        response,
        r'''$.Internacionales''',
        true,
      );
  dynamic internacionalesId(dynamic response) => getJsonField(
        response,
        r'''$.Internacionales[:].id''',
        true,
      );
  dynamic internacionalesTitle(dynamic response) => getJsonField(
        response,
        r'''$.Internacionales[:].title''',
        true,
      );
  dynamic internacionalesContent(dynamic response) => getJsonField(
        response,
        r'''$.Internacionales[:].content''',
        true,
      );
  dynamic internacionalesImage(dynamic response) => getJsonField(
        response,
        r'''$.Internacionales[:].image''',
        true,
      );
  dynamic internacionalesDate(dynamic response) => getJsonField(
        response,
        r'''$.Internacionales[:].date''',
        true,
      );
  dynamic internacioalesTime(dynamic response) => getJsonField(
        response,
        r'''$.Internacionales[:].time''',
        true,
      );
  dynamic internacionalesVideo(dynamic response) => getJsonField(
        response,
        r'''$.Internacionales[:].video''',
        true,
      );
  dynamic internacionalesLink(dynamic response) => getJsonField(
        response,
        r'''$.Internacionales[:].link''',
        true,
      );
  dynamic internacionnalesCategory(dynamic response) => getJsonField(
        response,
        r'''$.Internacionales[:].category''',
        true,
      );
  dynamic locales(dynamic response) => getJsonField(
        response,
        r'''$.Locales''',
        true,
      );
  dynamic localesId(dynamic response) => getJsonField(
        response,
        r'''$.Locales[:].id''',
        true,
      );
  dynamic localesTitle(dynamic response) => getJsonField(
        response,
        r'''$.Locales[:].title''',
        true,
      );
  dynamic localesCotent(dynamic response) => getJsonField(
        response,
        r'''$.Locales[:].content''',
        true,
      );
  dynamic localesImage(dynamic response) => getJsonField(
        response,
        r'''$.Locales[:].image''',
        true,
      );
  dynamic localesDate(dynamic response) => getJsonField(
        response,
        r'''$.Locales[:].date''',
        true,
      );
  dynamic localesTime(dynamic response) => getJsonField(
        response,
        r'''$.Locales[:].time''',
        true,
      );
  dynamic localesCategory(dynamic response) => getJsonField(
        response,
        r'''$.Locales[:].category''',
        true,
      );
  dynamic localesLink(dynamic response) => getJsonField(
        response,
        r'''$.Locales[:].link''',
        true,
      );
  dynamic localesVideo(dynamic response) => getJsonField(
        response,
        r'''$.Locales[:].video''',
        true,
      );
  dynamic deportes(dynamic response) => getJsonField(
        response,
        r'''$.Deportes''',
        true,
      );
  dynamic deportesId(dynamic response) => getJsonField(
        response,
        r'''$.Deportes[:].id''',
        true,
      );
  dynamic deportesTitle(dynamic response) => getJsonField(
        response,
        r'''$.Deportes[:].title''',
        true,
      );
  dynamic deportesContent(dynamic response) => getJsonField(
        response,
        r'''$.Deportes[:].content''',
        true,
      );
  dynamic deportesImage(dynamic response) => getJsonField(
        response,
        r'''$.Deportes[:].image''',
        true,
      );
  dynamic deportesDate(dynamic response) => getJsonField(
        response,
        r'''$.Deportes[:].date''',
        true,
      );
  dynamic deportesTime(dynamic response) => getJsonField(
        response,
        r'''$.Deportes[:].time''',
        true,
      );
  dynamic deportesCategory(dynamic response) => getJsonField(
        response,
        r'''$.Deportes[:].category''',
        true,
      );
  dynamic deportesLink(dynamic response) => getJsonField(
        response,
        r'''$.Deportes[:].link''',
        true,
      );
  dynamic deportesVideo(dynamic response) => getJsonField(
        response,
        r'''$.Deportes[:].video''',
        true,
      );
  dynamic entretenimiento(dynamic response) => getJsonField(
        response,
        r'''$.Entretenimiento''',
        true,
      );
  dynamic entretenimientoId(dynamic response) => getJsonField(
        response,
        r'''$.Entretenimiento[:].id''',
        true,
      );
  dynamic entretenimientoTitle(dynamic response) => getJsonField(
        response,
        r'''$.Entretenimiento[:].title''',
        true,
      );
  dynamic entretenimientoContent(dynamic response) => getJsonField(
        response,
        r'''$.Entretenimiento[:].content''',
        true,
      );
  dynamic entretenimientoImage(dynamic response) => getJsonField(
        response,
        r'''$.Entretenimiento[:].image''',
        true,
      );
  dynamic entretenimientoDate(dynamic response) => getJsonField(
        response,
        r'''$.Entretenimiento[:].date''',
        true,
      );
  dynamic entretenimientoTime(dynamic response) => getJsonField(
        response,
        r'''$.Entretenimiento[:].time''',
        true,
      );
  dynamic entretenimientoCategory(dynamic response) => getJsonField(
        response,
        r'''$.Entretenimiento[:].category''',
        true,
      );
  dynamic entretenimientoLink(dynamic response) => getJsonField(
        response,
        r'''$.Entretenimiento[:].link''',
        true,
      );
  dynamic entretenimientoVideo(dynamic response) => getJsonField(
        response,
        r'''$.Entretenimiento[:].video''',
        true,
      );
  dynamic latest(dynamic response) => getJsonField(
        response,
        r'''$.latest''',
        true,
      );
  dynamic latestId(dynamic response) => getJsonField(
        response,
        r'''$.latest[:].id''',
        true,
      );
  dynamic latestTitle(dynamic response) => getJsonField(
        response,
        r'''$.latest[:].title''',
        true,
      );
  dynamic latestContent(dynamic response) => getJsonField(
        response,
        r'''$.latest[:].content''',
        true,
      );
  dynamic latestImage(dynamic response) => getJsonField(
        response,
        r'''$.latest[:].image''',
        true,
      );
  dynamic latestDate(dynamic response) => getJsonField(
        response,
        r'''$.latest[:].date''',
        true,
      );
  dynamic latestTime(dynamic response) => getJsonField(
        response,
        r'''$.latest[:].time''',
        true,
      );
  dynamic latestCategory(dynamic response) => getJsonField(
        response,
        r'''$.latest[:].category''',
        true,
      );
  dynamic latestLink(dynamic response) => getJsonField(
        response,
        r'''$.latest[:].link''',
        true,
      );
  dynamic latestVideo(dynamic response) => getJsonField(
        response,
        r'''$.latest[:].video''',
        true,
      );
  dynamic politica(dynamic response) => getJsonField(
        response,
        r'''$.Política''',
        true,
      );
  dynamic politicaId(dynamic response) => getJsonField(
        response,
        r'''$.Política[:].id''',
        true,
      );
  dynamic politicaTitle(dynamic response) => getJsonField(
        response,
        r'''$.Política[:].title''',
        true,
      );
  dynamic politicaContent(dynamic response) => getJsonField(
        response,
        r'''$.Política[:].content''',
        true,
      );
  dynamic politicaImage(dynamic response) => getJsonField(
        response,
        r'''$.Política[:].image''',
        true,
      );
  dynamic politicaDate(dynamic response) => getJsonField(
        response,
        r'''$.Política[:].date''',
        true,
      );
  dynamic politicaTime(dynamic response) => getJsonField(
        response,
        r'''$.Política[:].time''',
        true,
      );
  dynamic politicaCategory(dynamic response) => getJsonField(
        response,
        r'''$.Política[:].category''',
        true,
      );
  dynamic politicaLink(dynamic response) => getJsonField(
        response,
        r'''$.Política[:].link''',
        true,
      );
  dynamic politicaVideo(dynamic response) => getJsonField(
        response,
        r'''$.Política[:].video''',
        true,
      );
  dynamic salud(dynamic response) => getJsonField(
        response,
        r'''$.Salud''',
        true,
      );
  dynamic saludId(dynamic response) => getJsonField(
        response,
        r'''$.Salud[:].id''',
        true,
      );
  dynamic saludTitle(dynamic response) => getJsonField(
        response,
        r'''$.Salud[:].title''',
        true,
      );
  dynamic saludContent(dynamic response) => getJsonField(
        response,
        r'''$.Salud[:].content''',
        true,
      );
  dynamic saludImage(dynamic response) => getJsonField(
        response,
        r'''$.Salud[:].image''',
        true,
      );
  dynamic saludDate(dynamic response) => getJsonField(
        response,
        r'''$.Salud[:].date''',
        true,
      );
  dynamic saludTime(dynamic response) => getJsonField(
        response,
        r'''$.Salud[:].time''',
        true,
      );
  dynamic saludCategory(dynamic response) => getJsonField(
        response,
        r'''$.Salud[:].category''',
        true,
      );
  dynamic saludLink(dynamic response) => getJsonField(
        response,
        r'''$.Salud[:].link''',
        true,
      );
  dynamic saludVideo(dynamic response) => getJsonField(
        response,
        r'''$.Salud[:].video''',
        true,
      );
  dynamic seguridad(dynamic response) => getJsonField(
        response,
        r'''$.Seguridad''',
        true,
      );
  dynamic seguridadId(dynamic response) => getJsonField(
        response,
        r'''$.Seguridad[:].id''',
        true,
      );
  dynamic seguridadTitle(dynamic response) => getJsonField(
        response,
        r'''$.Seguridad[:].title''',
        true,
      );
  dynamic seguridadContent(dynamic response) => getJsonField(
        response,
        r'''$.Seguridad[:].content''',
        true,
      );
  dynamic seguridadImage(dynamic response) => getJsonField(
        response,
        r'''$.Seguridad[:].image''',
        true,
      );
  dynamic seguridadDate(dynamic response) => getJsonField(
        response,
        r'''$.Seguridad[:].date''',
        true,
      );
  dynamic seguridadTime(dynamic response) => getJsonField(
        response,
        r'''$.Seguridad[:].time''',
        true,
      );
  dynamic seguridadCatgeory(dynamic response) => getJsonField(
        response,
        r'''$.Seguridad[:].category''',
        true,
      );
  dynamic seguridadLink(dynamic response) => getJsonField(
        response,
        r'''$.Seguridad[:].link''',
        true,
      );
  dynamic seguridadVideo(dynamic response) => getJsonField(
        response,
        r'''$.Seguridad[:].video''',
        true,
      );
}

class LatestShowsCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Latest Shows',
      apiUrl: '${AppAPIGroup.baseUrl}/v2/lastest-shows',
      callType: ApiCallType.GET,
      headers: {
        ...AppAPIGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic latest(dynamic response) => getJsonField(
        response,
        r'''$.latest''',
        true,
      );
  dynamic pRenVivo(dynamic response) => getJsonField(
        response,
        r'''$.prenvivo''',
        true,
      );
  dynamic lasNoticias(dynamic response) => getJsonField(
        response,
        r'''$.lasnoticias''',
        true,
      );
  dynamic laComay(dynamic response) => getJsonField(
        response,
        r'''$.lacomay''',
        true,
      );
  dynamic laBoveda(dynamic response) => getJsonField(
        response,
        r'''$.labovedadeteleonce''',
        true,
      );
  dynamic jpd(dynamic response) => getJsonField(
        response,
        r'''$.jugandopelotadura''',
        true,
      );
  dynamic epdp(dynamic response) => getJsonField(
        response,
        r'''$.elpoderdelpueblo''',
        true,
      );
  dynamic bannners(dynamic response) => getJsonField(
        response,
        r'''$.banner''',
        true,
      );
}

class ShowInfoCall {
  Future<ApiCallResponse> call({
    String? show = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Show Info',
      apiUrl: '${AppAPIGroup.baseUrl}/v1/shows/category/${show}',
      callType: ApiCallType.GET,
      headers: {
        ...AppAPIGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'News Cat',
      apiUrl: '${AppAPIGroup.baseUrl}/v1/news/category/${cat}',
      callType: ApiCallType.GET,
      headers: {
        ...AppAPIGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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

/// End App API Group Code

class GetCountryCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'GetCountry',
      apiUrl: 'https://teleonce.com/wp-json/app/v1/getCountry',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic country(dynamic response) => getJsonField(
        response,
        r'''$.country''',
      );
}

class WeatherCall {
  static Future<ApiCallResponse> call({
    String? lat = '18.3892375',
    String? lon = '-66.0604725',
    String? units = 'imperial',
    String? appid = '5ea20c34427b9975a24ca2c9d4b64486',
    String? lang = 'es',
    String? exclude = 'minutely',
  }) {
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
