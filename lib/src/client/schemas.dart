part of bigquery_v2_api;

class Dataset {

  /** [Optional] An array of objects that define dataset access for one or more entities. You can set this property when inserting or updating a dataset in order to control who is allowed to access the data. If unspecified at dataset creation time, BigQuery adds default dataset access for the following entities: access.specialGroup: projectReaders; access.role: READER; access.specialGroup: projectWriters; access.role: WRITER; access.specialGroup: projectOwners; access.role: OWNER; access.userByEmail: [dataset creator email]; access.role: OWNER; */
  core.List<DatasetAccess> access;

  /** [Output-only] The time when this dataset was created, in milliseconds since the epoch. */
  core.int creationTime;

  /** [Required] A reference that identifies the dataset. */
  DatasetReference datasetReference;

  /** [Optional] A user-friendly description of the dataset. */
  core.String description;

  /** [Output-only] A hash of the resource. */
  core.String etag;

  /** [Optional] A descriptive name for the dataset. */
  core.String friendlyName;

  /** [Output-only] The fully-qualified unique name of the dataset in the format projectId:datasetId. The dataset name without the project name is given in the datasetId field. When creating a new dataset, leave this field blank, and instead specify the datasetId field. */
  core.String id;

  /** [Output-only] The resource type. */
  core.String kind;

  /** [Output-only] The date when this dataset or any of its tables was last modified, in milliseconds since the epoch. */
  core.int lastModifiedTime;

  /** [Output-only] A URL that can be used to access the resource again. You can use this URL in Get or Update requests to the resource. */
  core.String selfLink;

  /** Create new Dataset from JSON data */
  Dataset.fromJson(core.Map json) {
    if (json.containsKey("access")) {
      access = json["access"].map((accessItem) => new DatasetAccess.fromJson(accessItem)).toList();
    }
    if (json.containsKey("creationTime")) {
      creationTime = (json["creationTime"] is core.String) ? core.int.parse(json["creationTime"]) : json["creationTime"];
    }
    if (json.containsKey("datasetReference")) {
      datasetReference = new DatasetReference.fromJson(json["datasetReference"]);
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("friendlyName")) {
      friendlyName = json["friendlyName"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("lastModifiedTime")) {
      lastModifiedTime = (json["lastModifiedTime"] is core.String) ? core.int.parse(json["lastModifiedTime"]) : json["lastModifiedTime"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for Dataset */
  core.Map toJson() {
    var output = new core.Map();

    if (access != null) {
      output["access"] = access.map((accessItem) => accessItem.toJson()).toList();
    }
    if (creationTime != null) {
      output["creationTime"] = creationTime;
    }
    if (datasetReference != null) {
      output["datasetReference"] = datasetReference.toJson();
    }
    if (description != null) {
      output["description"] = description;
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (friendlyName != null) {
      output["friendlyName"] = friendlyName;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (lastModifiedTime != null) {
      output["lastModifiedTime"] = lastModifiedTime;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of Dataset */
  core.String toString() => JSON.encode(this.toJson());

}

class DatasetAccess {

  /** [Pick one] A domain to grant access to. Any users signed in with the domain specified will be granted the specified access. Example: "example.com". */
  core.String domain;

  /** [Pick one] An email address of a Google Group to grant access to. */
  core.String groupByEmail;

  /** [Required] Describes the rights granted to the user specified by the other member of the access object. The following string values are supported: READER, WRITER, OWNER. */
  core.String role;

  /** [Pick one] A special group to grant access to. Possible values include: projectOwners: Owners of the enclosing project. projectReaders: Readers of the enclosing project. projectWriters: Writers of the enclosing project. allAuthenticatedUsers: All authenticated BigQuery users. */
  core.String specialGroup;

  /** [Pick one] An email address of a user to grant access to. For example: fred@example.com. */
  core.String userByEmail;

  /** [Pick one] A view from a different dataset to grant access to. Queries executed against that view will have read access to tables in this dataset. The role field is not required when this field is set. If that view is updated by any user, access to the view needs to be granted again via an update operation. */
  TableReference view;

  /** Create new DatasetAccess from JSON data */
  DatasetAccess.fromJson(core.Map json) {
    if (json.containsKey("domain")) {
      domain = json["domain"];
    }
    if (json.containsKey("groupByEmail")) {
      groupByEmail = json["groupByEmail"];
    }
    if (json.containsKey("role")) {
      role = json["role"];
    }
    if (json.containsKey("specialGroup")) {
      specialGroup = json["specialGroup"];
    }
    if (json.containsKey("userByEmail")) {
      userByEmail = json["userByEmail"];
    }
    if (json.containsKey("view")) {
      view = new TableReference.fromJson(json["view"]);
    }
  }

  /** Create JSON Object for DatasetAccess */
  core.Map toJson() {
    var output = new core.Map();

    if (domain != null) {
      output["domain"] = domain;
    }
    if (groupByEmail != null) {
      output["groupByEmail"] = groupByEmail;
    }
    if (role != null) {
      output["role"] = role;
    }
    if (specialGroup != null) {
      output["specialGroup"] = specialGroup;
    }
    if (userByEmail != null) {
      output["userByEmail"] = userByEmail;
    }
    if (view != null) {
      output["view"] = view.toJson();
    }

    return output;
  }

  /** Return String representation of DatasetAccess */
  core.String toString() => JSON.encode(this.toJson());

}

class DatasetList {

  /** An array of the dataset resources in the project. Each resource contains basic information. For full information about a particular dataset resource, use the Datasets: get method. This property is omitted when there are no datasets in the project. */
  core.List<DatasetListDatasets> datasets;

  /** A hash value of the results page. You can use this property to determine if the page has changed since the last request. */
  core.String etag;

  /** The list type. This property always returns the value "bigquery#datasetList". */
  core.String kind;

  /** A token that can be used to request the next results page. This property is omitted on the final results page. */
  core.String nextPageToken;

  /** Create new DatasetList from JSON data */
  DatasetList.fromJson(core.Map json) {
    if (json.containsKey("datasets")) {
      datasets = json["datasets"].map((datasetsItem) => new DatasetListDatasets.fromJson(datasetsItem)).toList();
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for DatasetList */
  core.Map toJson() {
    var output = new core.Map();

    if (datasets != null) {
      output["datasets"] = datasets.map((datasetsItem) => datasetsItem.toJson()).toList();
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of DatasetList */
  core.String toString() => JSON.encode(this.toJson());

}

class DatasetListDatasets {

  /** The dataset reference. Use this property to access specific parts of the dataset's ID, such as project ID or dataset ID. */
  DatasetReference datasetReference;

  /** A descriptive name for the dataset, if one exists. */
  core.String friendlyName;

  /** The fully-qualified, unique, opaque ID of the dataset. */
  core.String id;

  /** The resource type. This property always returns the value "bigquery#dataset". */
  core.String kind;

  /** Create new DatasetListDatasets from JSON data */
  DatasetListDatasets.fromJson(core.Map json) {
    if (json.containsKey("datasetReference")) {
      datasetReference = new DatasetReference.fromJson(json["datasetReference"]);
    }
    if (json.containsKey("friendlyName")) {
      friendlyName = json["friendlyName"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for DatasetListDatasets */
  core.Map toJson() {
    var output = new core.Map();

    if (datasetReference != null) {
      output["datasetReference"] = datasetReference.toJson();
    }
    if (friendlyName != null) {
      output["friendlyName"] = friendlyName;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of DatasetListDatasets */
  core.String toString() => JSON.encode(this.toJson());

}

class DatasetReference {

  /** [Required] A unique ID for this dataset, without the project name. */
  core.String datasetId;

  /** [Optional] The ID of the container project. */
  core.String projectId;

  /** Create new DatasetReference from JSON data */
  DatasetReference.fromJson(core.Map json) {
    if (json.containsKey("datasetId")) {
      datasetId = json["datasetId"];
    }
    if (json.containsKey("projectId")) {
      projectId = json["projectId"];
    }
  }

  /** Create JSON Object for DatasetReference */
  core.Map toJson() {
    var output = new core.Map();

    if (datasetId != null) {
      output["datasetId"] = datasetId;
    }
    if (projectId != null) {
      output["projectId"] = projectId;
    }

    return output;
  }

  /** Return String representation of DatasetReference */
  core.String toString() => JSON.encode(this.toJson());

}

class ErrorProto {

  /** Debugging information. This property is internal to Google and should not be used. */
  core.String debugInfo;

  /** Specifies where the error occurred, if present. */
  core.String location;

  /** A human-readable description of the error. */
  core.String message;

  /** A short error code that summarizes the error. */
  core.String reason;

  /** Create new ErrorProto from JSON data */
  ErrorProto.fromJson(core.Map json) {
    if (json.containsKey("debugInfo")) {
      debugInfo = json["debugInfo"];
    }
    if (json.containsKey("location")) {
      location = json["location"];
    }
    if (json.containsKey("message")) {
      message = json["message"];
    }
    if (json.containsKey("reason")) {
      reason = json["reason"];
    }
  }

  /** Create JSON Object for ErrorProto */
  core.Map toJson() {
    var output = new core.Map();

    if (debugInfo != null) {
      output["debugInfo"] = debugInfo;
    }
    if (location != null) {
      output["location"] = location;
    }
    if (message != null) {
      output["message"] = message;
    }
    if (reason != null) {
      output["reason"] = reason;
    }

    return output;
  }

  /** Return String representation of ErrorProto */
  core.String toString() => JSON.encode(this.toJson());

}

class GetQueryResultsResponse {

  /** Whether the query result was fetched from the query cache. */
  core.bool cacheHit;

  /** A hash of this response. */
  core.String etag;

  /** Whether the query has completed or not. If rows or totalRows are present, this will always be true. If this is false, totalRows will not be available. */
  core.bool jobComplete;

  /** Reference to the BigQuery Job that was created to run the query. This field will be present even if the original request timed out, in which case GetQueryResults can be used to read the results once the query has completed. Since this API only returns the first page of results, subsequent pages can be fetched via the same mechanism (GetQueryResults). */
  JobReference jobReference;

  /** The resource type of the response. */
  core.String kind;

  /** A token used for paging results. */
  core.String pageToken;

  /** An object with as many results as can be contained within the maximum permitted reply size. To get any additional rows, you can call GetQueryResults and specify the jobReference returned above. Present only when the query completes successfully. */
  core.List<TableRow> rows;

  /** The schema of the results. Present only when the query completes successfully. */
  TableSchema schema;

  /** The total number of rows in the complete query result set, which can be more than the number of rows in this single page of results. Present only when the query completes successfully. */
  core.String totalRows;

  /** Create new GetQueryResultsResponse from JSON data */
  GetQueryResultsResponse.fromJson(core.Map json) {
    if (json.containsKey("cacheHit")) {
      cacheHit = json["cacheHit"];
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("jobComplete")) {
      jobComplete = json["jobComplete"];
    }
    if (json.containsKey("jobReference")) {
      jobReference = new JobReference.fromJson(json["jobReference"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("pageToken")) {
      pageToken = json["pageToken"];
    }
    if (json.containsKey("rows")) {
      rows = json["rows"].map((rowsItem) => new TableRow.fromJson(rowsItem)).toList();
    }
    if (json.containsKey("schema")) {
      schema = new TableSchema.fromJson(json["schema"]);
    }
    if (json.containsKey("totalRows")) {
      totalRows = json["totalRows"];
    }
  }

  /** Create JSON Object for GetQueryResultsResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (cacheHit != null) {
      output["cacheHit"] = cacheHit;
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (jobComplete != null) {
      output["jobComplete"] = jobComplete;
    }
    if (jobReference != null) {
      output["jobReference"] = jobReference.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (pageToken != null) {
      output["pageToken"] = pageToken;
    }
    if (rows != null) {
      output["rows"] = rows.map((rowsItem) => rowsItem.toJson()).toList();
    }
    if (schema != null) {
      output["schema"] = schema.toJson();
    }
    if (totalRows != null) {
      output["totalRows"] = totalRows;
    }

    return output;
  }

  /** Return String representation of GetQueryResultsResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class Job {

  /** [Required] Describes the job configuration. */
  JobConfiguration configuration;

  /** [Output-only] A hash of this resource. */
  core.String etag;

  /** [Output-only] Opaque ID field of the job */
  core.String id;

  /** [Optional] Reference describing the unique-per-user name of the job. */
  JobReference jobReference;

  /** [Output-only] The type of the resource. */
  core.String kind;

  /** [Output-only] A URL that can be used to access this resource again. */
  core.String selfLink;

  /** [Output-only] Information about the job, including starting time and ending time of the job. */
  JobStatistics statistics;

  /** [Output-only] The status of this job. Examine this value when polling an asynchronous job to see if the job is complete. */
  JobStatus status;

  /** Create new Job from JSON data */
  Job.fromJson(core.Map json) {
    if (json.containsKey("configuration")) {
      configuration = new JobConfiguration.fromJson(json["configuration"]);
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("jobReference")) {
      jobReference = new JobReference.fromJson(json["jobReference"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("statistics")) {
      statistics = new JobStatistics.fromJson(json["statistics"]);
    }
    if (json.containsKey("status")) {
      status = new JobStatus.fromJson(json["status"]);
    }
  }

  /** Create JSON Object for Job */
  core.Map toJson() {
    var output = new core.Map();

    if (configuration != null) {
      output["configuration"] = configuration.toJson();
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (jobReference != null) {
      output["jobReference"] = jobReference.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (statistics != null) {
      output["statistics"] = statistics.toJson();
    }
    if (status != null) {
      output["status"] = status.toJson();
    }

    return output;
  }

  /** Return String representation of Job */
  core.String toString() => JSON.encode(this.toJson());

}

class JobConfiguration {

  /** [Pick one] Copies a table. */
  JobConfigurationTableCopy copy;

  /** [Optional] If set, don't actually run this job. A valid query will return a mostly empty response with some processing statistics, while an invalid query will return the same error it would if it wasn't a dry run. Behavior of non-query jobs is undefined. */
  core.bool dryRun;

  /** [Pick one] Configures an extract job. */
  JobConfigurationExtract extract;

  /** [Pick one] Configures a link job. */
  JobConfigurationLink link;

  /** [Pick one] Configures a load job. */
  JobConfigurationLoad load;

  /** [Pick one] Configures a query job. */
  JobConfigurationQuery query;

  /** Create new JobConfiguration from JSON data */
  JobConfiguration.fromJson(core.Map json) {
    if (json.containsKey("copy")) {
      copy = new JobConfigurationTableCopy.fromJson(json["copy"]);
    }
    if (json.containsKey("dryRun")) {
      dryRun = json["dryRun"];
    }
    if (json.containsKey("extract")) {
      extract = new JobConfigurationExtract.fromJson(json["extract"]);
    }
    if (json.containsKey("link")) {
      link = new JobConfigurationLink.fromJson(json["link"]);
    }
    if (json.containsKey("load")) {
      load = new JobConfigurationLoad.fromJson(json["load"]);
    }
    if (json.containsKey("query")) {
      query = new JobConfigurationQuery.fromJson(json["query"]);
    }
  }

  /** Create JSON Object for JobConfiguration */
  core.Map toJson() {
    var output = new core.Map();

    if (copy != null) {
      output["copy"] = copy.toJson();
    }
    if (dryRun != null) {
      output["dryRun"] = dryRun;
    }
    if (extract != null) {
      output["extract"] = extract.toJson();
    }
    if (link != null) {
      output["link"] = link.toJson();
    }
    if (load != null) {
      output["load"] = load.toJson();
    }
    if (query != null) {
      output["query"] = query.toJson();
    }

    return output;
  }

  /** Return String representation of JobConfiguration */
  core.String toString() => JSON.encode(this.toJson());

}

class JobConfigurationExtract {

  /** [Optional] The compression type to use for exported files. Possible values include GZIP and NONE. The default value is NONE. */
  core.String compression;

  /** [Optional] The exported file format. Possible values include CSV, NEWLINE_DELIMITED_JSON and AVRO. The default value is CSV. Tables with nested or repeated fields cannot be exported as CSV. */
  core.String destinationFormat;

  /** [Pick one] DEPRECATED: Use destinationUris instead, passing only one URI as necessary. The fully-qualified Google Cloud Storage URI where the extracted table should be written. */
  core.String destinationUri;

  /** [Pick one] A list of fully-qualified Google Cloud Storage URIs where the extracted table should be written. */
  core.List<core.String> destinationUris;

  /** [Optional] Delimiter to use between fields in the exported data. Default is ',' */
  core.String fieldDelimiter;

  /** [Optional] Whether to print out a header row in the results. Default is true. */
  core.bool printHeader;

  /** [Required] A reference to the table being exported. */
  TableReference sourceTable;

  /** Create new JobConfigurationExtract from JSON data */
  JobConfigurationExtract.fromJson(core.Map json) {
    if (json.containsKey("compression")) {
      compression = json["compression"];
    }
    if (json.containsKey("destinationFormat")) {
      destinationFormat = json["destinationFormat"];
    }
    if (json.containsKey("destinationUri")) {
      destinationUri = json["destinationUri"];
    }
    if (json.containsKey("destinationUris")) {
      destinationUris = json["destinationUris"].toList();
    }
    if (json.containsKey("fieldDelimiter")) {
      fieldDelimiter = json["fieldDelimiter"];
    }
    if (json.containsKey("printHeader")) {
      printHeader = json["printHeader"];
    }
    if (json.containsKey("sourceTable")) {
      sourceTable = new TableReference.fromJson(json["sourceTable"]);
    }
  }

  /** Create JSON Object for JobConfigurationExtract */
  core.Map toJson() {
    var output = new core.Map();

    if (compression != null) {
      output["compression"] = compression;
    }
    if (destinationFormat != null) {
      output["destinationFormat"] = destinationFormat;
    }
    if (destinationUri != null) {
      output["destinationUri"] = destinationUri;
    }
    if (destinationUris != null) {
      output["destinationUris"] = destinationUris.toList();
    }
    if (fieldDelimiter != null) {
      output["fieldDelimiter"] = fieldDelimiter;
    }
    if (printHeader != null) {
      output["printHeader"] = printHeader;
    }
    if (sourceTable != null) {
      output["sourceTable"] = sourceTable.toJson();
    }

    return output;
  }

  /** Return String representation of JobConfigurationExtract */
  core.String toString() => JSON.encode(this.toJson());

}

class JobConfigurationLink {

  /** [Optional] Specifies whether the job is allowed to create new tables. The following values are supported: CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table. CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result. The default value is CREATE_IF_NEEDED. Creation, truncation and append actions occur as one atomic update upon job completion. */
  core.String createDisposition;

  /** [Required] The destination table of the link job. */
  TableReference destinationTable;

  /** [Required] URI of source table to link. */
  core.List<core.String> sourceUri;

  /** [Optional] Specifies the action that occurs if the destination table already exists. The following values are supported: WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data. WRITE_APPEND: If the table already exists, BigQuery appends the data to the table. WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result. The default value is WRITE_EMPTY. Each action is atomic and only occurs if BigQuery is able to complete the job successfully. Creation, truncation and append actions occur as one atomic update upon job completion. */
  core.String writeDisposition;

  /** Create new JobConfigurationLink from JSON data */
  JobConfigurationLink.fromJson(core.Map json) {
    if (json.containsKey("createDisposition")) {
      createDisposition = json["createDisposition"];
    }
    if (json.containsKey("destinationTable")) {
      destinationTable = new TableReference.fromJson(json["destinationTable"]);
    }
    if (json.containsKey("sourceUri")) {
      sourceUri = json["sourceUri"].toList();
    }
    if (json.containsKey("writeDisposition")) {
      writeDisposition = json["writeDisposition"];
    }
  }

  /** Create JSON Object for JobConfigurationLink */
  core.Map toJson() {
    var output = new core.Map();

    if (createDisposition != null) {
      output["createDisposition"] = createDisposition;
    }
    if (destinationTable != null) {
      output["destinationTable"] = destinationTable.toJson();
    }
    if (sourceUri != null) {
      output["sourceUri"] = sourceUri.toList();
    }
    if (writeDisposition != null) {
      output["writeDisposition"] = writeDisposition;
    }

    return output;
  }

  /** Return String representation of JobConfigurationLink */
  core.String toString() => JSON.encode(this.toJson());

}

class JobConfigurationLoad {

  /** [Optional] Accept rows that are missing trailing optional columns. The missing values are treated as nulls. Default is false which treats short rows as errors. Only applicable to CSV, ignored for other formats. */
  core.bool allowJaggedRows;

  /** Indicates if BigQuery should allow quoted data sections that contain newline characters in a CSV file. The default value is false. */
  core.bool allowQuotedNewlines;

  /** [Optional] Specifies whether the job is allowed to create new tables. The following values are supported: CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table. CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result. The default value is CREATE_IF_NEEDED. Creation, truncation and append actions occur as one atomic update upon job completion. */
  core.String createDisposition;

  /** [Required] The destination table to load the data into. */
  TableReference destinationTable;

  /** [Optional] The character encoding of the data. The supported values are UTF-8 or ISO-8859-1. The default value is UTF-8. BigQuery decodes the data after the raw, binary data has been split using the values of the quote and fieldDelimiter properties. */
  core.String encoding;

  /** [Optional] The separator for fields in a CSV file. BigQuery converts the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the data in its raw, binary state. BigQuery also supports the escape sequence "\t" to specify a tab separator. The default value is a comma (','). */
  core.String fieldDelimiter;

  /** [Optional] Accept rows that contain values that do not match the schema. The unknown values are ignored. Default is false which treats unknown values as errors. For CSV this ignores extra values at the end of a line. For JSON this ignores named values that do not match any column name. */
  core.bool ignoreUnknownValues;

  /** [Optional] The maximum number of bad records that BigQuery can ignore when running the job. If the number of bad records exceeds this value, an 'invalid' error is returned in the job result and the job fails. The default value is 0, which requires that all records are valid. */
  core.int maxBadRecords;

  /** [Optional] The value that is used to quote data sections in a CSV file. BigQuery converts the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the data in its raw, binary state. The default value is a double-quote ('"'). If your data does not contain quoted sections, set the property value to an empty string. If your data contains quoted newline characters, you must also set the allowQuotedNewlines property to true. */
  core.String quote;

  /** [Optional] The schema for the destination table. The schema can be omitted if the destination table already exists or if the schema can be inferred from the loaded data. */
  TableSchema schema;

  /** [Deprecated] The inline schema. For CSV schemas, specify as "Field1:Type1[,Field2:Type2]*". For example, "foo:STRING, bar:INTEGER, baz:FLOAT". */
  core.String schemaInline;

  /** [Deprecated] The format of the schemaInline property. */
  core.String schemaInlineFormat;

  /** [Optional] The number of rows at the top of a CSV file that BigQuery will skip when loading the data. The default value is 0. This property is useful if you have header rows in the file that should be skipped. */
  core.int skipLeadingRows;

  /** [Optional] The format of the data files. For CSV files, specify "CSV". For datastore backups, specify "DATASTORE_BACKUP". For newline-delimited JSON, specify "NEWLINE_DELIMITED_JSON". The default value is CSV. */
  core.String sourceFormat;

  /** [Required] The fully-qualified URIs that point to your data on Google Cloud Storage. */
  core.List<core.String> sourceUris;

  /** [Optional] Specifies the action that occurs if the destination table already exists. The following values are supported: WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data. WRITE_APPEND: If the table already exists, BigQuery appends the data to the table. WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result. The default value is WRITE_EMPTY. Each action is atomic and only occurs if BigQuery is able to complete the job successfully. Creation, truncation and append actions occur as one atomic update upon job completion. */
  core.String writeDisposition;

  /** Create new JobConfigurationLoad from JSON data */
  JobConfigurationLoad.fromJson(core.Map json) {
    if (json.containsKey("allowJaggedRows")) {
      allowJaggedRows = json["allowJaggedRows"];
    }
    if (json.containsKey("allowQuotedNewlines")) {
      allowQuotedNewlines = json["allowQuotedNewlines"];
    }
    if (json.containsKey("createDisposition")) {
      createDisposition = json["createDisposition"];
    }
    if (json.containsKey("destinationTable")) {
      destinationTable = new TableReference.fromJson(json["destinationTable"]);
    }
    if (json.containsKey("encoding")) {
      encoding = json["encoding"];
    }
    if (json.containsKey("fieldDelimiter")) {
      fieldDelimiter = json["fieldDelimiter"];
    }
    if (json.containsKey("ignoreUnknownValues")) {
      ignoreUnknownValues = json["ignoreUnknownValues"];
    }
    if (json.containsKey("maxBadRecords")) {
      maxBadRecords = json["maxBadRecords"];
    }
    if (json.containsKey("quote")) {
      quote = json["quote"];
    }
    if (json.containsKey("schema")) {
      schema = new TableSchema.fromJson(json["schema"]);
    }
    if (json.containsKey("schemaInline")) {
      schemaInline = json["schemaInline"];
    }
    if (json.containsKey("schemaInlineFormat")) {
      schemaInlineFormat = json["schemaInlineFormat"];
    }
    if (json.containsKey("skipLeadingRows")) {
      skipLeadingRows = json["skipLeadingRows"];
    }
    if (json.containsKey("sourceFormat")) {
      sourceFormat = json["sourceFormat"];
    }
    if (json.containsKey("sourceUris")) {
      sourceUris = json["sourceUris"].toList();
    }
    if (json.containsKey("writeDisposition")) {
      writeDisposition = json["writeDisposition"];
    }
  }

  /** Create JSON Object for JobConfigurationLoad */
  core.Map toJson() {
    var output = new core.Map();

    if (allowJaggedRows != null) {
      output["allowJaggedRows"] = allowJaggedRows;
    }
    if (allowQuotedNewlines != null) {
      output["allowQuotedNewlines"] = allowQuotedNewlines;
    }
    if (createDisposition != null) {
      output["createDisposition"] = createDisposition;
    }
    if (destinationTable != null) {
      output["destinationTable"] = destinationTable.toJson();
    }
    if (encoding != null) {
      output["encoding"] = encoding;
    }
    if (fieldDelimiter != null) {
      output["fieldDelimiter"] = fieldDelimiter;
    }
    if (ignoreUnknownValues != null) {
      output["ignoreUnknownValues"] = ignoreUnknownValues;
    }
    if (maxBadRecords != null) {
      output["maxBadRecords"] = maxBadRecords;
    }
    if (quote != null) {
      output["quote"] = quote;
    }
    if (schema != null) {
      output["schema"] = schema.toJson();
    }
    if (schemaInline != null) {
      output["schemaInline"] = schemaInline;
    }
    if (schemaInlineFormat != null) {
      output["schemaInlineFormat"] = schemaInlineFormat;
    }
    if (skipLeadingRows != null) {
      output["skipLeadingRows"] = skipLeadingRows;
    }
    if (sourceFormat != null) {
      output["sourceFormat"] = sourceFormat;
    }
    if (sourceUris != null) {
      output["sourceUris"] = sourceUris.toList();
    }
    if (writeDisposition != null) {
      output["writeDisposition"] = writeDisposition;
    }

    return output;
  }

  /** Return String representation of JobConfigurationLoad */
  core.String toString() => JSON.encode(this.toJson());

}

class JobConfigurationQuery {

  /** If true, allows the query to produce arbitrarily large result tables at a slight cost in performance. Requires destinationTable to be set. */
  core.bool allowLargeResults;

  /** [Optional] Specifies whether the job is allowed to create new tables. The following values are supported: CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table. CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result. The default value is CREATE_IF_NEEDED. Creation, truncation and append actions occur as one atomic update upon job completion. */
  core.String createDisposition;

  /** [Optional] Specifies the default dataset to use for unqualified table names in the query. */
  DatasetReference defaultDataset;

  /** [Optional] Describes the table where the query results should be stored. If not present, a new table will be created to store the results. */
  TableReference destinationTable;

  /** [Experimental] Flattens all nested and repeated fields in the query results. The default value is true. allowLargeResults must be true if this is set to false. */
  core.bool flattenResults;

  /** [Deprecated] This property is deprecated. */
  core.bool preserveNulls;

  /** [Optional] Specifies a priority for the query. Possible values include INTERACTIVE and BATCH. The default value is INTERACTIVE. */
  core.String priority;

  /** [Required] BigQuery SQL query to execute. */
  core.String query;

  /** [Optional] Whether to look for the result in the query cache. The query cache is a best-effort cache that will be flushed whenever tables in the query are modified. Moreover, the query cache is only available when a query does not have a destination table specified. */
  core.bool useQueryCache;

  /** [Optional] Specifies the action that occurs if the destination table already exists. The following values are supported: WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data. WRITE_APPEND: If the table already exists, BigQuery appends the data to the table. WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result. The default value is WRITE_EMPTY. Each action is atomic and only occurs if BigQuery is able to complete the job successfully. Creation, truncation and append actions occur as one atomic update upon job completion. */
  core.String writeDisposition;

  /** Create new JobConfigurationQuery from JSON data */
  JobConfigurationQuery.fromJson(core.Map json) {
    if (json.containsKey("allowLargeResults")) {
      allowLargeResults = json["allowLargeResults"];
    }
    if (json.containsKey("createDisposition")) {
      createDisposition = json["createDisposition"];
    }
    if (json.containsKey("defaultDataset")) {
      defaultDataset = new DatasetReference.fromJson(json["defaultDataset"]);
    }
    if (json.containsKey("destinationTable")) {
      destinationTable = new TableReference.fromJson(json["destinationTable"]);
    }
    if (json.containsKey("flattenResults")) {
      flattenResults = json["flattenResults"];
    }
    if (json.containsKey("preserveNulls")) {
      preserveNulls = json["preserveNulls"];
    }
    if (json.containsKey("priority")) {
      priority = json["priority"];
    }
    if (json.containsKey("query")) {
      query = json["query"];
    }
    if (json.containsKey("useQueryCache")) {
      useQueryCache = json["useQueryCache"];
    }
    if (json.containsKey("writeDisposition")) {
      writeDisposition = json["writeDisposition"];
    }
  }

  /** Create JSON Object for JobConfigurationQuery */
  core.Map toJson() {
    var output = new core.Map();

    if (allowLargeResults != null) {
      output["allowLargeResults"] = allowLargeResults;
    }
    if (createDisposition != null) {
      output["createDisposition"] = createDisposition;
    }
    if (defaultDataset != null) {
      output["defaultDataset"] = defaultDataset.toJson();
    }
    if (destinationTable != null) {
      output["destinationTable"] = destinationTable.toJson();
    }
    if (flattenResults != null) {
      output["flattenResults"] = flattenResults;
    }
    if (preserveNulls != null) {
      output["preserveNulls"] = preserveNulls;
    }
    if (priority != null) {
      output["priority"] = priority;
    }
    if (query != null) {
      output["query"] = query;
    }
    if (useQueryCache != null) {
      output["useQueryCache"] = useQueryCache;
    }
    if (writeDisposition != null) {
      output["writeDisposition"] = writeDisposition;
    }

    return output;
  }

  /** Return String representation of JobConfigurationQuery */
  core.String toString() => JSON.encode(this.toJson());

}

class JobConfigurationTableCopy {

  /** [Optional] Specifies whether the job is allowed to create new tables. The following values are supported: CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table. CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result. The default value is CREATE_IF_NEEDED. Creation, truncation and append actions occur as one atomic update upon job completion. */
  core.String createDisposition;

  /** [Required] The destination table */
  TableReference destinationTable;

  /** [Pick one] Source table to copy. */
  TableReference sourceTable;

  /** [Pick one] Source tables to copy. */
  core.List<TableReference> sourceTables;

  /** [Optional] Specifies the action that occurs if the destination table already exists. The following values are supported: WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data. WRITE_APPEND: If the table already exists, BigQuery appends the data to the table. WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result. The default value is WRITE_EMPTY. Each action is atomic and only occurs if BigQuery is able to complete the job successfully. Creation, truncation and append actions occur as one atomic update upon job completion. */
  core.String writeDisposition;

  /** Create new JobConfigurationTableCopy from JSON data */
  JobConfigurationTableCopy.fromJson(core.Map json) {
    if (json.containsKey("createDisposition")) {
      createDisposition = json["createDisposition"];
    }
    if (json.containsKey("destinationTable")) {
      destinationTable = new TableReference.fromJson(json["destinationTable"]);
    }
    if (json.containsKey("sourceTable")) {
      sourceTable = new TableReference.fromJson(json["sourceTable"]);
    }
    if (json.containsKey("sourceTables")) {
      sourceTables = json["sourceTables"].map((sourceTablesItem) => new TableReference.fromJson(sourceTablesItem)).toList();
    }
    if (json.containsKey("writeDisposition")) {
      writeDisposition = json["writeDisposition"];
    }
  }

  /** Create JSON Object for JobConfigurationTableCopy */
  core.Map toJson() {
    var output = new core.Map();

    if (createDisposition != null) {
      output["createDisposition"] = createDisposition;
    }
    if (destinationTable != null) {
      output["destinationTable"] = destinationTable.toJson();
    }
    if (sourceTable != null) {
      output["sourceTable"] = sourceTable.toJson();
    }
    if (sourceTables != null) {
      output["sourceTables"] = sourceTables.map((sourceTablesItem) => sourceTablesItem.toJson()).toList();
    }
    if (writeDisposition != null) {
      output["writeDisposition"] = writeDisposition;
    }

    return output;
  }

  /** Return String representation of JobConfigurationTableCopy */
  core.String toString() => JSON.encode(this.toJson());

}

class JobList {

  /** A hash of this page of results. */
  core.String etag;

  /** List of jobs that were requested. */
  core.List<JobListJobs> jobs;

  /** The resource type of the response. */
  core.String kind;

  /** A token to request the next page of results. */
  core.String nextPageToken;

  /** Total number of jobs in this collection. */
  core.int totalItems;

  /** Create new JobList from JSON data */
  JobList.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("jobs")) {
      jobs = json["jobs"].map((jobsItem) => new JobListJobs.fromJson(jobsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("totalItems")) {
      totalItems = json["totalItems"];
    }
  }

  /** Create JSON Object for JobList */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (jobs != null) {
      output["jobs"] = jobs.map((jobsItem) => jobsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (totalItems != null) {
      output["totalItems"] = totalItems;
    }

    return output;
  }

  /** Return String representation of JobList */
  core.String toString() => JSON.encode(this.toJson());

}

class JobListJobs {

  /** [Full-projection-only] Specifies the job configuration. */
  JobConfiguration configuration;

  /** A result object that will be present only if the job has failed. */
  ErrorProto errorResult;

  /** Unique opaque ID of the job. */
  core.String id;

  /** Job reference uniquely identifying the job. */
  JobReference jobReference;

  /** The resource type. */
  core.String kind;

  /** Running state of the job. When the state is DONE, errorResult can be checked to determine whether the job succeeded or failed. */
  core.String state;

  /** [Output-only] Information about the job, including starting time and ending time of the job. */
  JobStatistics statistics;

  /** [Full-projection-only] Describes the state of the job. */
  JobStatus status;

  /** [Full-projection-only] User who ran the job. */
  core.String user_email;

  /** Create new JobListJobs from JSON data */
  JobListJobs.fromJson(core.Map json) {
    if (json.containsKey("configuration")) {
      configuration = new JobConfiguration.fromJson(json["configuration"]);
    }
    if (json.containsKey("errorResult")) {
      errorResult = new ErrorProto.fromJson(json["errorResult"]);
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("jobReference")) {
      jobReference = new JobReference.fromJson(json["jobReference"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("state")) {
      state = json["state"];
    }
    if (json.containsKey("statistics")) {
      statistics = new JobStatistics.fromJson(json["statistics"]);
    }
    if (json.containsKey("status")) {
      status = new JobStatus.fromJson(json["status"]);
    }
    if (json.containsKey("user_email")) {
      user_email = json["user_email"];
    }
  }

  /** Create JSON Object for JobListJobs */
  core.Map toJson() {
    var output = new core.Map();

    if (configuration != null) {
      output["configuration"] = configuration.toJson();
    }
    if (errorResult != null) {
      output["errorResult"] = errorResult.toJson();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (jobReference != null) {
      output["jobReference"] = jobReference.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (state != null) {
      output["state"] = state;
    }
    if (statistics != null) {
      output["statistics"] = statistics.toJson();
    }
    if (status != null) {
      output["status"] = status.toJson();
    }
    if (user_email != null) {
      output["user_email"] = user_email;
    }

    return output;
  }

  /** Return String representation of JobListJobs */
  core.String toString() => JSON.encode(this.toJson());

}

class JobReference {

  /** [Required] ID of the job. */
  core.String jobId;

  /** [Required] Project ID being billed for the job. */
  core.String projectId;

  /** Create new JobReference from JSON data */
  JobReference.fromJson(core.Map json) {
    if (json.containsKey("jobId")) {
      jobId = json["jobId"];
    }
    if (json.containsKey("projectId")) {
      projectId = json["projectId"];
    }
  }

  /** Create JSON Object for JobReference */
  core.Map toJson() {
    var output = new core.Map();

    if (jobId != null) {
      output["jobId"] = jobId;
    }
    if (projectId != null) {
      output["projectId"] = projectId;
    }

    return output;
  }

  /** Return String representation of JobReference */
  core.String toString() => JSON.encode(this.toJson());

}

class JobStatistics {

  /** [Output-only] Creation time of this job, in milliseconds since the epoch. This field will be present on all jobs. */
  core.int creationTime;

  /** [Output-only] End time of this job, in milliseconds since the epoch. This field will be present whenever a job is in the DONE state. */
  core.int endTime;

  /** [Output-only] Statistics for a load job. */
  JobStatistics3 load;

  /** [Output-only] Statistics for a query job. */
  JobStatistics2 query;

  /** [Output-only] Start time of this job, in milliseconds since the epoch. This field will be present when the job transitions from the PENDING state to either RUNNING or DONE. */
  core.int startTime;

  /** [Output-only] [Deprecated] Use the bytes processed in the query statistics instead. */
  core.int totalBytesProcessed;

  /** Create new JobStatistics from JSON data */
  JobStatistics.fromJson(core.Map json) {
    if (json.containsKey("creationTime")) {
      creationTime = (json["creationTime"] is core.String) ? core.int.parse(json["creationTime"]) : json["creationTime"];
    }
    if (json.containsKey("endTime")) {
      endTime = (json["endTime"] is core.String) ? core.int.parse(json["endTime"]) : json["endTime"];
    }
    if (json.containsKey("load")) {
      load = new JobStatistics3.fromJson(json["load"]);
    }
    if (json.containsKey("query")) {
      query = new JobStatistics2.fromJson(json["query"]);
    }
    if (json.containsKey("startTime")) {
      startTime = (json["startTime"] is core.String) ? core.int.parse(json["startTime"]) : json["startTime"];
    }
    if (json.containsKey("totalBytesProcessed")) {
      totalBytesProcessed = (json["totalBytesProcessed"] is core.String) ? core.int.parse(json["totalBytesProcessed"]) : json["totalBytesProcessed"];
    }
  }

  /** Create JSON Object for JobStatistics */
  core.Map toJson() {
    var output = new core.Map();

    if (creationTime != null) {
      output["creationTime"] = creationTime;
    }
    if (endTime != null) {
      output["endTime"] = endTime;
    }
    if (load != null) {
      output["load"] = load.toJson();
    }
    if (query != null) {
      output["query"] = query.toJson();
    }
    if (startTime != null) {
      output["startTime"] = startTime;
    }
    if (totalBytesProcessed != null) {
      output["totalBytesProcessed"] = totalBytesProcessed;
    }

    return output;
  }

  /** Return String representation of JobStatistics */
  core.String toString() => JSON.encode(this.toJson());

}

class JobStatistics2 {

  /** [Output-only] Whether the query result was fetched from the query cache. */
  core.bool cacheHit;

  /** [Output-only] Total bytes processed for this job. */
  core.int totalBytesProcessed;

  /** Create new JobStatistics2 from JSON data */
  JobStatistics2.fromJson(core.Map json) {
    if (json.containsKey("cacheHit")) {
      cacheHit = json["cacheHit"];
    }
    if (json.containsKey("totalBytesProcessed")) {
      totalBytesProcessed = (json["totalBytesProcessed"] is core.String) ? core.int.parse(json["totalBytesProcessed"]) : json["totalBytesProcessed"];
    }
  }

  /** Create JSON Object for JobStatistics2 */
  core.Map toJson() {
    var output = new core.Map();

    if (cacheHit != null) {
      output["cacheHit"] = cacheHit;
    }
    if (totalBytesProcessed != null) {
      output["totalBytesProcessed"] = totalBytesProcessed;
    }

    return output;
  }

  /** Return String representation of JobStatistics2 */
  core.String toString() => JSON.encode(this.toJson());

}

class JobStatistics3 {

  /** [Output-only] Number of bytes of source data in a joad job. */
  core.int inputFileBytes;

  /** [Output-only] Number of source files in a load job. */
  core.int inputFiles;

  /** [Output-only] Size of the loaded data in bytes. Note that while an import job is in the running state, this value may change. */
  core.int outputBytes;

  /** [Output-only] Number of rows imported in a load job. Note that while an import job is in the running state, this value may change. */
  core.int outputRows;

  /** Create new JobStatistics3 from JSON data */
  JobStatistics3.fromJson(core.Map json) {
    if (json.containsKey("inputFileBytes")) {
      inputFileBytes = (json["inputFileBytes"] is core.String) ? core.int.parse(json["inputFileBytes"]) : json["inputFileBytes"];
    }
    if (json.containsKey("inputFiles")) {
      inputFiles = (json["inputFiles"] is core.String) ? core.int.parse(json["inputFiles"]) : json["inputFiles"];
    }
    if (json.containsKey("outputBytes")) {
      outputBytes = (json["outputBytes"] is core.String) ? core.int.parse(json["outputBytes"]) : json["outputBytes"];
    }
    if (json.containsKey("outputRows")) {
      outputRows = (json["outputRows"] is core.String) ? core.int.parse(json["outputRows"]) : json["outputRows"];
    }
  }

  /** Create JSON Object for JobStatistics3 */
  core.Map toJson() {
    var output = new core.Map();

    if (inputFileBytes != null) {
      output["inputFileBytes"] = inputFileBytes;
    }
    if (inputFiles != null) {
      output["inputFiles"] = inputFiles;
    }
    if (outputBytes != null) {
      output["outputBytes"] = outputBytes;
    }
    if (outputRows != null) {
      output["outputRows"] = outputRows;
    }

    return output;
  }

  /** Return String representation of JobStatistics3 */
  core.String toString() => JSON.encode(this.toJson());

}

class JobStatus {

  /** [Output-only] Final error result of the job. If present, indicates that the job has completed and was unsuccessful. */
  ErrorProto errorResult;

  /** [Output-only] All errors encountered during the running of the job. Errors here do not necessarily mean that the job has completed or was unsuccessful. */
  core.List<ErrorProto> errors;

  /** [Output-only] Running state of the job. */
  core.String state;

  /** Create new JobStatus from JSON data */
  JobStatus.fromJson(core.Map json) {
    if (json.containsKey("errorResult")) {
      errorResult = new ErrorProto.fromJson(json["errorResult"]);
    }
    if (json.containsKey("errors")) {
      errors = json["errors"].map((errorsItem) => new ErrorProto.fromJson(errorsItem)).toList();
    }
    if (json.containsKey("state")) {
      state = json["state"];
    }
  }

  /** Create JSON Object for JobStatus */
  core.Map toJson() {
    var output = new core.Map();

    if (errorResult != null) {
      output["errorResult"] = errorResult.toJson();
    }
    if (errors != null) {
      output["errors"] = errors.map((errorsItem) => errorsItem.toJson()).toList();
    }
    if (state != null) {
      output["state"] = state;
    }

    return output;
  }

  /** Return String representation of JobStatus */
  core.String toString() => JSON.encode(this.toJson());

}

/** Represents a single JSON object. */
class JsonObject {

  /** Create new JsonObject from JSON data */
  JsonObject.fromJson(core.Map json) {
  }

  /** Create JSON Object for JsonObject */
  core.Map toJson() {
    var output = new core.Map();


    return output;
  }

  /** Return String representation of JsonObject */
  core.String toString() => JSON.encode(this.toJson());

}

class JsonValue {

  /** Create new JsonValue from JSON data */
  JsonValue.fromJson(core.Map json) {
  }

  /** Create JSON Object for JsonValue */
  core.Map toJson() {
    var output = new core.Map();


    return output;
  }

  /** Return String representation of JsonValue */
  core.String toString() => JSON.encode(this.toJson());

}

class ProjectList {

  /** A hash of the page of results */
  core.String etag;

  /** The type of list. */
  core.String kind;

  /** A token to request the next page of results. */
  core.String nextPageToken;

  /** Projects to which you have at least READ access. */
  core.List<ProjectListProjects> projects;

  /** The total number of projects in the list. */
  core.int totalItems;

  /** Create new ProjectList from JSON data */
  ProjectList.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("projects")) {
      projects = json["projects"].map((projectsItem) => new ProjectListProjects.fromJson(projectsItem)).toList();
    }
    if (json.containsKey("totalItems")) {
      totalItems = json["totalItems"];
    }
  }

  /** Create JSON Object for ProjectList */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (projects != null) {
      output["projects"] = projects.map((projectsItem) => projectsItem.toJson()).toList();
    }
    if (totalItems != null) {
      output["totalItems"] = totalItems;
    }

    return output;
  }

  /** Return String representation of ProjectList */
  core.String toString() => JSON.encode(this.toJson());

}

class ProjectListProjects {

  /** A descriptive name for this project. */
  core.String friendlyName;

  /** An opaque ID of this project. */
  core.String id;

  /** The resource type. */
  core.String kind;

  /** The numeric ID of this project. */
  core.String numericId;

  /** A unique reference to this project. */
  ProjectReference projectReference;

  /** Create new ProjectListProjects from JSON data */
  ProjectListProjects.fromJson(core.Map json) {
    if (json.containsKey("friendlyName")) {
      friendlyName = json["friendlyName"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("numericId")) {
      numericId = json["numericId"];
    }
    if (json.containsKey("projectReference")) {
      projectReference = new ProjectReference.fromJson(json["projectReference"]);
    }
  }

  /** Create JSON Object for ProjectListProjects */
  core.Map toJson() {
    var output = new core.Map();

    if (friendlyName != null) {
      output["friendlyName"] = friendlyName;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (numericId != null) {
      output["numericId"] = numericId;
    }
    if (projectReference != null) {
      output["projectReference"] = projectReference.toJson();
    }

    return output;
  }

  /** Return String representation of ProjectListProjects */
  core.String toString() => JSON.encode(this.toJson());

}

class ProjectReference {

  /** [Required] ID of the project. Can be either the numeric ID or the assigned ID of the project. */
  core.String projectId;

  /** Create new ProjectReference from JSON data */
  ProjectReference.fromJson(core.Map json) {
    if (json.containsKey("projectId")) {
      projectId = json["projectId"];
    }
  }

  /** Create JSON Object for ProjectReference */
  core.Map toJson() {
    var output = new core.Map();

    if (projectId != null) {
      output["projectId"] = projectId;
    }

    return output;
  }

  /** Return String representation of ProjectReference */
  core.String toString() => JSON.encode(this.toJson());

}

class QueryRequest {

  /** [Optional] Specifies the default datasetId and projectId to assume for any unqualified table names in the query. If not set, all table names in the query string must be qualified in the format 'datasetId.tableId'. */
  DatasetReference defaultDataset;

  /** [Optional] If set, don't actually run the query. A valid query will return an empty response, while an invalid query will return the same error it would if it wasn't a dry run. The default value is false. */
  core.bool dryRun;

  /** The resource type of the request. */
  core.String kind;

  /** [Optional] The maximum number of rows of data to return per page of results. Setting this flag to a small value such as 1000 and then paging through results might improve reliability when the query result set is large. In addition to this limit, responses are also limited to 10 MB. By default, there is no maximum row count, and only the byte limit applies. */
  core.int maxResults;

  /** [Deprecated] This property is deprecated. */
  core.bool preserveNulls;

  /** [Required] A query string, following the BigQuery query syntax, of the query to execute. Example: "SELECT count(f1) FROM [myProjectId:myDatasetId.myTableId]". */
  core.String query;

  /** [Optional] How long to wait for the query to complete, in milliseconds, before the request times out and returns. Note that this is only a timeout for the request, not the query. If the query takes longer to run than the timeout value, the call returns without any results and with the 'jobComplete' flag set to false. You can call GetQueryResults() to wait for the query to complete and read the results. The default value is 10000 milliseconds (10 seconds). */
  core.int timeoutMs;

  /** [Optional] Whether to look for the result in the query cache. The query cache is a best-effort cache that will be flushed whenever tables in the query are modified. The default value is true. */
  core.bool useQueryCache;

  /** Create new QueryRequest from JSON data */
  QueryRequest.fromJson(core.Map json) {
    if (json.containsKey("defaultDataset")) {
      defaultDataset = new DatasetReference.fromJson(json["defaultDataset"]);
    }
    if (json.containsKey("dryRun")) {
      dryRun = json["dryRun"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("maxResults")) {
      maxResults = json["maxResults"];
    }
    if (json.containsKey("preserveNulls")) {
      preserveNulls = json["preserveNulls"];
    }
    if (json.containsKey("query")) {
      query = json["query"];
    }
    if (json.containsKey("timeoutMs")) {
      timeoutMs = json["timeoutMs"];
    }
    if (json.containsKey("useQueryCache")) {
      useQueryCache = json["useQueryCache"];
    }
  }

  /** Create JSON Object for QueryRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (defaultDataset != null) {
      output["defaultDataset"] = defaultDataset.toJson();
    }
    if (dryRun != null) {
      output["dryRun"] = dryRun;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (maxResults != null) {
      output["maxResults"] = maxResults;
    }
    if (preserveNulls != null) {
      output["preserveNulls"] = preserveNulls;
    }
    if (query != null) {
      output["query"] = query;
    }
    if (timeoutMs != null) {
      output["timeoutMs"] = timeoutMs;
    }
    if (useQueryCache != null) {
      output["useQueryCache"] = useQueryCache;
    }

    return output;
  }

  /** Return String representation of QueryRequest */
  core.String toString() => JSON.encode(this.toJson());

}

class QueryResponse {

  /** Whether the query result was fetched from the query cache. */
  core.bool cacheHit;

  /** Whether the query has completed or not. If rows or totalRows are present, this will always be true. If this is false, totalRows will not be available. */
  core.bool jobComplete;

  /** Reference to the Job that was created to run the query. This field will be present even if the original request timed out, in which case GetQueryResults can be used to read the results once the query has completed. Since this API only returns the first page of results, subsequent pages can be fetched via the same mechanism (GetQueryResults). */
  JobReference jobReference;

  /** The resource type. */
  core.String kind;

  /** A token used for paging results. */
  core.String pageToken;

  /** An object with as many results as can be contained within the maximum permitted reply size. To get any additional rows, you can call GetQueryResults and specify the jobReference returned above. */
  core.List<TableRow> rows;

  /** The schema of the results. Present only when the query completes successfully. */
  TableSchema schema;

  /** The total number of bytes processed for this query. If this query was a dry run, this is the number of bytes that would be processed if the query were run. */
  core.int totalBytesProcessed;

  /** The total number of rows in the complete query result set, which can be more than the number of rows in this single page of results. */
  core.String totalRows;

  /** Create new QueryResponse from JSON data */
  QueryResponse.fromJson(core.Map json) {
    if (json.containsKey("cacheHit")) {
      cacheHit = json["cacheHit"];
    }
    if (json.containsKey("jobComplete")) {
      jobComplete = json["jobComplete"];
    }
    if (json.containsKey("jobReference")) {
      jobReference = new JobReference.fromJson(json["jobReference"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("pageToken")) {
      pageToken = json["pageToken"];
    }
    if (json.containsKey("rows")) {
      rows = json["rows"].map((rowsItem) => new TableRow.fromJson(rowsItem)).toList();
    }
    if (json.containsKey("schema")) {
      schema = new TableSchema.fromJson(json["schema"]);
    }
    if (json.containsKey("totalBytesProcessed")) {
      totalBytesProcessed = (json["totalBytesProcessed"] is core.String) ? core.int.parse(json["totalBytesProcessed"]) : json["totalBytesProcessed"];
    }
    if (json.containsKey("totalRows")) {
      totalRows = json["totalRows"];
    }
  }

  /** Create JSON Object for QueryResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (cacheHit != null) {
      output["cacheHit"] = cacheHit;
    }
    if (jobComplete != null) {
      output["jobComplete"] = jobComplete;
    }
    if (jobReference != null) {
      output["jobReference"] = jobReference.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (pageToken != null) {
      output["pageToken"] = pageToken;
    }
    if (rows != null) {
      output["rows"] = rows.map((rowsItem) => rowsItem.toJson()).toList();
    }
    if (schema != null) {
      output["schema"] = schema.toJson();
    }
    if (totalBytesProcessed != null) {
      output["totalBytesProcessed"] = totalBytesProcessed;
    }
    if (totalRows != null) {
      output["totalRows"] = totalRows;
    }

    return output;
  }

  /** Return String representation of QueryResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class Table {

  /** [Output-only] The time when this table was created, in milliseconds since the epoch. */
  core.int creationTime;

  /** [Optional] A user-friendly description of this table. */
  core.String description;

  /** [Output-only] A hash of this resource. */
  core.String etag;

  /** [Optional] The time when this table expires, in milliseconds since the epoch. If not present, the table will persist indefinitely. Expired tables will be deleted and their storage reclaimed. */
  core.int expirationTime;

  /** [Optional] A descriptive name for this table. */
  core.String friendlyName;

  /** [Output-only] An opaque ID uniquely identifying the table. */
  core.String id;

  /** [Output-only] The type of the resource. */
  core.String kind;

  /** [Output-only] The time when this table was last modified, in milliseconds since the epoch. */
  core.int lastModifiedTime;

  /** [Output-only] The size of the table in bytes. */
  core.int numBytes;

  /** [Output-only] The number of rows of data in this table. */
  core.String numRows;

  /** [Optional] Describes the schema of this table. */
  TableSchema schema;

  /** [Output-only] A URL that can be used to access this resource again. */
  core.String selfLink;

  /** [Required] Reference describing the ID of this table. */
  TableReference tableReference;

  /** [Output-only] Describes the table type. The following values are supported: TABLE: A normal BigQuery table. VIEW: A virtual table defined by a SQL query. The default value is TABLE. */
  core.String type;

  /** [Optional] The view definition. */
  ViewDefinition view;

  /** Create new Table from JSON data */
  Table.fromJson(core.Map json) {
    if (json.containsKey("creationTime")) {
      creationTime = (json["creationTime"] is core.String) ? core.int.parse(json["creationTime"]) : json["creationTime"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("expirationTime")) {
      expirationTime = (json["expirationTime"] is core.String) ? core.int.parse(json["expirationTime"]) : json["expirationTime"];
    }
    if (json.containsKey("friendlyName")) {
      friendlyName = json["friendlyName"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("lastModifiedTime")) {
      lastModifiedTime = (json["lastModifiedTime"] is core.String) ? core.int.parse(json["lastModifiedTime"]) : json["lastModifiedTime"];
    }
    if (json.containsKey("numBytes")) {
      numBytes = (json["numBytes"] is core.String) ? core.int.parse(json["numBytes"]) : json["numBytes"];
    }
    if (json.containsKey("numRows")) {
      numRows = json["numRows"];
    }
    if (json.containsKey("schema")) {
      schema = new TableSchema.fromJson(json["schema"]);
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("tableReference")) {
      tableReference = new TableReference.fromJson(json["tableReference"]);
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("view")) {
      view = new ViewDefinition.fromJson(json["view"]);
    }
  }

  /** Create JSON Object for Table */
  core.Map toJson() {
    var output = new core.Map();

    if (creationTime != null) {
      output["creationTime"] = creationTime;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (expirationTime != null) {
      output["expirationTime"] = expirationTime;
    }
    if (friendlyName != null) {
      output["friendlyName"] = friendlyName;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (lastModifiedTime != null) {
      output["lastModifiedTime"] = lastModifiedTime;
    }
    if (numBytes != null) {
      output["numBytes"] = numBytes;
    }
    if (numRows != null) {
      output["numRows"] = numRows;
    }
    if (schema != null) {
      output["schema"] = schema.toJson();
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (tableReference != null) {
      output["tableReference"] = tableReference.toJson();
    }
    if (type != null) {
      output["type"] = type;
    }
    if (view != null) {
      output["view"] = view.toJson();
    }

    return output;
  }

  /** Return String representation of Table */
  core.String toString() => JSON.encode(this.toJson());

}

/** Represents a single cell in the result set. Users of the java client can detect whether their value result is null by calling 'com.google.api.client.util.Data.isNull(cell.getV())'. */
class TableCell {

  core.Object v;

  /** Create new TableCell from JSON data */
  TableCell.fromJson(core.Map json) {
    if (json.containsKey("v")) {
      v = json["v"];
    }
  }

  /** Create JSON Object for TableCell */
  core.Map toJson() {
    var output = new core.Map();

    if (v != null) {
      output["v"] = v;
    }

    return output;
  }

  /** Return String representation of TableCell */
  core.String toString() => JSON.encode(this.toJson());

}

class TableDataInsertAllRequest {

  /** The resource type of the response. */
  core.String kind;

  /** The rows to insert. */
  core.List<TableDataInsertAllRequestRows> rows;

  /** Create new TableDataInsertAllRequest from JSON data */
  TableDataInsertAllRequest.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("rows")) {
      rows = json["rows"].map((rowsItem) => new TableDataInsertAllRequestRows.fromJson(rowsItem)).toList();
    }
  }

  /** Create JSON Object for TableDataInsertAllRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (rows != null) {
      output["rows"] = rows.map((rowsItem) => rowsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of TableDataInsertAllRequest */
  core.String toString() => JSON.encode(this.toJson());

}

class TableDataInsertAllRequestRows {

  /** [Optional] A unique ID for each row. BigQuery uses this property to detect duplicate insertion requests on a best-effort basis. */
  core.String insertId;

  /** [Required] A JSON object that contains a row of data. The object's properties and values must match the destination table's schema. */
  JsonObject json;

  /** Create new TableDataInsertAllRequestRows from JSON data */
  TableDataInsertAllRequestRows.fromJson(core.Map json) {
    if (json.containsKey("insertId")) {
      insertId = json["insertId"];
    }
    if (json.containsKey("json")) {
      json = new JsonObject.fromJson(json["json"]);
    }
  }

  /** Create JSON Object for TableDataInsertAllRequestRows */
  core.Map toJson() {
    var output = new core.Map();

    if (insertId != null) {
      output["insertId"] = insertId;
    }
    if (json != null) {
      output["json"] = json.toJson();
    }

    return output;
  }

  /** Return String representation of TableDataInsertAllRequestRows */
  core.String toString() => JSON.encode(this.toJson());

}

class TableDataInsertAllResponse {

  /** An array of errors for rows that were not inserted. */
  core.List<TableDataInsertAllResponseInsertErrors> insertErrors;

  /** The resource type of the response. */
  core.String kind;

  /** Create new TableDataInsertAllResponse from JSON data */
  TableDataInsertAllResponse.fromJson(core.Map json) {
    if (json.containsKey("insertErrors")) {
      insertErrors = json["insertErrors"].map((insertErrorsItem) => new TableDataInsertAllResponseInsertErrors.fromJson(insertErrorsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for TableDataInsertAllResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (insertErrors != null) {
      output["insertErrors"] = insertErrors.map((insertErrorsItem) => insertErrorsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of TableDataInsertAllResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class TableDataInsertAllResponseInsertErrors {

  /** Error information for the row indicated by the index property. */
  core.List<ErrorProto> errors;

  /** The index of the row that error applies to. */
  core.int index;

  /** Create new TableDataInsertAllResponseInsertErrors from JSON data */
  TableDataInsertAllResponseInsertErrors.fromJson(core.Map json) {
    if (json.containsKey("errors")) {
      errors = json["errors"].map((errorsItem) => new ErrorProto.fromJson(errorsItem)).toList();
    }
    if (json.containsKey("index")) {
      index = json["index"];
    }
  }

  /** Create JSON Object for TableDataInsertAllResponseInsertErrors */
  core.Map toJson() {
    var output = new core.Map();

    if (errors != null) {
      output["errors"] = errors.map((errorsItem) => errorsItem.toJson()).toList();
    }
    if (index != null) {
      output["index"] = index;
    }

    return output;
  }

  /** Return String representation of TableDataInsertAllResponseInsertErrors */
  core.String toString() => JSON.encode(this.toJson());

}

class TableDataList {

  /** A hash of this page of results. */
  core.String etag;

  /** The resource type of the response. */
  core.String kind;

  /** A token used for paging results. Providing this token instead of the startIndex parameter can help you retrieve stable results when an underlying table is changing. */
  core.String pageToken;

  /** Rows of results. */
  core.List<TableRow> rows;

  /** The total number of rows in the complete table. */
  core.int totalRows;

  /** Create new TableDataList from JSON data */
  TableDataList.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("pageToken")) {
      pageToken = json["pageToken"];
    }
    if (json.containsKey("rows")) {
      rows = json["rows"].map((rowsItem) => new TableRow.fromJson(rowsItem)).toList();
    }
    if (json.containsKey("totalRows")) {
      totalRows = (json["totalRows"] is core.String) ? core.int.parse(json["totalRows"]) : json["totalRows"];
    }
  }

  /** Create JSON Object for TableDataList */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (pageToken != null) {
      output["pageToken"] = pageToken;
    }
    if (rows != null) {
      output["rows"] = rows.map((rowsItem) => rowsItem.toJson()).toList();
    }
    if (totalRows != null) {
      output["totalRows"] = totalRows;
    }

    return output;
  }

  /** Return String representation of TableDataList */
  core.String toString() => JSON.encode(this.toJson());

}

class TableFieldSchema {

  /** [Optional] The field description. */
  core.String description;

  /** [Optional] Describes the nested schema fields if the type property is set to RECORD. */
  core.List<TableFieldSchema> fields;

  /** [Optional] The field mode. Possible values include NULLABLE, REQUIRED and REPEATED. The default value is NULLABLE. */
  core.String mode;

  /** [Required] The field name. */
  core.String name;

  /** [Required] The field data type. Possible values include STRING, INTEGER, FLOAT, BOOLEAN, TIMESTAMP or RECORD (where RECORD indicates that the field contains a nested schema). */
  core.String type;

  /** Create new TableFieldSchema from JSON data */
  TableFieldSchema.fromJson(core.Map json) {
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("fields")) {
      fields = json["fields"].map((fieldsItem) => new TableFieldSchema.fromJson(fieldsItem)).toList();
    }
    if (json.containsKey("mode")) {
      mode = json["mode"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for TableFieldSchema */
  core.Map toJson() {
    var output = new core.Map();

    if (description != null) {
      output["description"] = description;
    }
    if (fields != null) {
      output["fields"] = fields.map((fieldsItem) => fieldsItem.toJson()).toList();
    }
    if (mode != null) {
      output["mode"] = mode;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of TableFieldSchema */
  core.String toString() => JSON.encode(this.toJson());

}

class TableList {

  /** A hash of this page of results. */
  core.String etag;

  /** The type of list. */
  core.String kind;

  /** A token to request the next page of results. */
  core.String nextPageToken;

  /** Tables in the requested dataset. */
  core.List<TableListTables> tables;

  /** The total number of tables in the dataset. */
  core.int totalItems;

  /** Create new TableList from JSON data */
  TableList.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("tables")) {
      tables = json["tables"].map((tablesItem) => new TableListTables.fromJson(tablesItem)).toList();
    }
    if (json.containsKey("totalItems")) {
      totalItems = json["totalItems"];
    }
  }

  /** Create JSON Object for TableList */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (tables != null) {
      output["tables"] = tables.map((tablesItem) => tablesItem.toJson()).toList();
    }
    if (totalItems != null) {
      output["totalItems"] = totalItems;
    }

    return output;
  }

  /** Return String representation of TableList */
  core.String toString() => JSON.encode(this.toJson());

}

class TableListTables {

  /** The user-friendly name for this table. */
  core.String friendlyName;

  /** An opaque ID of the table */
  core.String id;

  /** The resource type. */
  core.String kind;

  /** A reference uniquely identifying the table. */
  TableReference tableReference;

  /** The type of table. Possible values are: TABLE, VIEW. */
  core.String type;

  /** Create new TableListTables from JSON data */
  TableListTables.fromJson(core.Map json) {
    if (json.containsKey("friendlyName")) {
      friendlyName = json["friendlyName"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("tableReference")) {
      tableReference = new TableReference.fromJson(json["tableReference"]);
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for TableListTables */
  core.Map toJson() {
    var output = new core.Map();

    if (friendlyName != null) {
      output["friendlyName"] = friendlyName;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (tableReference != null) {
      output["tableReference"] = tableReference.toJson();
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of TableListTables */
  core.String toString() => JSON.encode(this.toJson());

}

class TableReference {

  /** [Required] ID of the dataset containing the table. */
  core.String datasetId;

  /** [Required] ID of the project billed for storage of the table. */
  core.String projectId;

  /** [Required] ID of the table. */
  core.String tableId;

  /** Create new TableReference from JSON data */
  TableReference.fromJson(core.Map json) {
    if (json.containsKey("datasetId")) {
      datasetId = json["datasetId"];
    }
    if (json.containsKey("projectId")) {
      projectId = json["projectId"];
    }
    if (json.containsKey("tableId")) {
      tableId = json["tableId"];
    }
  }

  /** Create JSON Object for TableReference */
  core.Map toJson() {
    var output = new core.Map();

    if (datasetId != null) {
      output["datasetId"] = datasetId;
    }
    if (projectId != null) {
      output["projectId"] = projectId;
    }
    if (tableId != null) {
      output["tableId"] = tableId;
    }

    return output;
  }

  /** Return String representation of TableReference */
  core.String toString() => JSON.encode(this.toJson());

}

/** Represents a single row in the result set, consisting of one or more fields. */
class TableRow {

  core.List<TableCell> f;

  /** Create new TableRow from JSON data */
  TableRow.fromJson(core.Map json) {
    if (json.containsKey("f")) {
      f = json["f"].map((fItem) => new TableCell.fromJson(fItem)).toList();
    }
  }

  /** Create JSON Object for TableRow */
  core.Map toJson() {
    var output = new core.Map();

    if (f != null) {
      output["f"] = f.map((fItem) => fItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of TableRow */
  core.String toString() => JSON.encode(this.toJson());

}

class TableSchema {

  /** Describes the fields in a table. */
  core.List<TableFieldSchema> fields;

  /** Create new TableSchema from JSON data */
  TableSchema.fromJson(core.Map json) {
    if (json.containsKey("fields")) {
      fields = json["fields"].map((fieldsItem) => new TableFieldSchema.fromJson(fieldsItem)).toList();
    }
  }

  /** Create JSON Object for TableSchema */
  core.Map toJson() {
    var output = new core.Map();

    if (fields != null) {
      output["fields"] = fields.map((fieldsItem) => fieldsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of TableSchema */
  core.String toString() => JSON.encode(this.toJson());

}

class ViewDefinition {

  /** [Required] A query that BigQuery executes when the view is referenced. */
  core.String query;

  /** Create new ViewDefinition from JSON data */
  ViewDefinition.fromJson(core.Map json) {
    if (json.containsKey("query")) {
      query = json["query"];
    }
  }

  /** Create JSON Object for ViewDefinition */
  core.Map toJson() {
    var output = new core.Map();

    if (query != null) {
      output["query"] = query;
    }

    return output;
  }

  /** Return String representation of ViewDefinition */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
