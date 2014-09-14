library bigquery_v2_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_bigquery_v2_api/src/browser_client.dart';
import "package:google_bigquery_v2_api/bigquery_v2_api_client.dart";

/** A data platform for customers to create, manage, share and query data. */
@deprecated
class Bigquery extends Client with BrowserClient {

  /** OAuth Scope2: View and manage your data in Google BigQuery */
  static const String BIGQUERY_SCOPE = "https://www.googleapis.com/auth/bigquery";

  /** OAuth Scope2: Insert data into Google BigQuery */
  static const String BIGQUERY_INSERTDATA_SCOPE = "https://www.googleapis.com/auth/bigquery.insertdata";

  /** OAuth Scope2: View and manage your data across Google Cloud Platform services */
  static const String CLOUD_PLATFORM_SCOPE = "https://www.googleapis.com/auth/cloud-platform";

  /** OAuth Scope2: Manage your data and permissions in Google Cloud Storage */
  static const String DEVSTORAGE_FULL_CONTROL_SCOPE = "https://www.googleapis.com/auth/devstorage.full_control";

  /** OAuth Scope2: View your data in Google Cloud Storage */
  static const String DEVSTORAGE_READ_ONLY_SCOPE = "https://www.googleapis.com/auth/devstorage.read_only";

  /** OAuth Scope2: Manage your data in Google Cloud Storage */
  static const String DEVSTORAGE_READ_WRITE_SCOPE = "https://www.googleapis.com/auth/devstorage.read_write";

  final oauth.OAuth2 auth;

  Bigquery([oauth.OAuth2 this.auth]);
}
