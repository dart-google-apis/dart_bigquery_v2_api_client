part of bigquery_v2_api_browser;

/** Client to access the bigquery v2 API */
/** A data platform for customers to create, manage, share and query data. */
class Bigquery extends BrowserClient {

  DatasetsResource_ _datasets;
  DatasetsResource_ get datasets => _datasets;
  JobsResource_ _jobs;
  JobsResource_ get jobs => _jobs;
  ProjectsResource_ _projects;
  ProjectsResource_ get projects => _projects;
  TabledataResource_ _tabledata;
  TabledataResource_ get tabledata => _tabledata;
  TablesResource_ _tables;
  TablesResource_ get tables => _tables;

  /** OAuth Scope2: View and manage your data in Google BigQuery */
  static const core.String BIGQUERY_SCOPE = "https://www.googleapis.com/auth/bigquery";

  /** OAuth Scope2: Manage your data and permissions in Google Cloud Storage */
  static const core.String DEVSTORAGE_FULL_CONTROL_SCOPE = "https://www.googleapis.com/auth/devstorage.full_control";

  /** OAuth Scope2: View your data in Google Cloud Storage */
  static const core.String DEVSTORAGE_READ_ONLY_SCOPE = "https://www.googleapis.com/auth/devstorage.read_only";

  /** OAuth Scope2: Manage your data in Google Cloud Storage */
  static const core.String DEVSTORAGE_READ_WRITE_SCOPE = "https://www.googleapis.com/auth/devstorage.read_write";

  /**
   * Data format for the response.
   * Added as queryParameter for each request.
   */
  core.String get alt => params["alt"];
  set alt(core.String value) => params["alt"] = value;

  /**
   * Selector specifying which fields to include in a partial response.
   * Added as queryParameter for each request.
   */
  core.String get fields => params["fields"];
  set fields(core.String value) => params["fields"] = value;

  /**
   * API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
   * Added as queryParameter for each request.
   */
  core.String get key => params["key"];
  set key(core.String value) => params["key"] = value;

  /**
   * OAuth 2.0 token for the current user.
   * Added as queryParameter for each request.
   */
  core.String get oauth_token => params["oauth_token"];
  set oauth_token(core.String value) => params["oauth_token"] = value;

  /**
   * Returns response with indentations and line breaks.
   * Added as queryParameter for each request.
   */
  core.bool get prettyPrint => params["prettyPrint"];
  set prettyPrint(core.bool value) => params["prettyPrint"] = value;

  /**
   * Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
   * Added as queryParameter for each request.
   */
  core.String get quotaUser => params["quotaUser"];
  set quotaUser(core.String value) => params["quotaUser"] = value;

  /**
   * IP address of the site where the request originates. Use this if you want to enforce per-user limits.
   * Added as queryParameter for each request.
   */
  core.String get userIp => params["userIp"];
  set userIp(core.String value) => params["userIp"] = value;

  Bigquery([oauth.OAuth2 auth]) : super(auth) {
    basePath = "/bigquery/v2/";
    rootUrl = "https://www.googleapis.com/";
    _datasets = new DatasetsResource_(this);
    _jobs = new JobsResource_(this);
    _projects = new ProjectsResource_(this);
    _tabledata = new TabledataResource_(this);
    _tables = new TablesResource_(this);
  }
}
