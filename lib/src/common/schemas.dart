part of bigquery_v2_api_client;

class Dataset {

  /** [Optional] Describes users' rights on the dataset. You can assign the same role to multiple users, and assign multiple roles to the same user.
Default values assigned to a new dataset are as follows: OWNER - Project owners, dataset creator READ - Project readers WRITE - Project writers
See ACLs and Rights for a description of these rights. If you specify any of these roles when creating a dataset, the assigned roles will overwrite the defaults listed above.
To revoke rights to a dataset, call datasets.update() and omit the names of anyone whose rights you wish to revoke. However, every dataset must have at least one entity granted OWNER role.
Each access object can have only one of the following members: userByEmail, groupByEmail, domain, or allAuthenticatedUsers. */
  core.List<DatasetAccess> access;

  /** [Output-only] The time when this dataset was created, in milliseconds since the epoch. */
  core.String creationTime;

  /** [Required] Reference identifying dataset. */
  DatasetReference datasetReference;

  /** [Optional] A user-friendly string description for the dataset. This might be shown in BigQuery UI for browsing the dataset. */
  core.String description;

  /** [Output-only] A hash of this resource. */
  core.String etag;

  /** [Optional] A descriptive name for this dataset, which might be shown in any BigQuery user interfaces for browsing the dataset. Use datasetId for making API calls. */
  core.String friendlyName;

  /** [Output-only] The fully-qualified unique name of this dataset in the format projectId:datasetId. The dataset name without the project name is given in the datasetId field. When creating a new dataset, leave this field blank, and instead specify the datasetId field. */
  core.String id;

  /** [Output-only] The resource type. */
  core.String kind;

  /** [Output-only] The date when this dataset or any of its tables was last modified, in milliseconds since the epoch. */
  core.String lastModifiedTime;

  /** [Output-only] An URL that can be used to access this resource again. You can use this URL in Get or Update requests to this resource. */
  core.String selfLink;

  /** Create new Dataset from JSON data */
  Dataset.fromJson(core.Map json) {
    if (json.containsKey("access")) {
      access = [];
      json["access"].forEach((item) {
        access.add(new DatasetAccess.fromJson(item));
      });
    }
    if (json.containsKey("creationTime")) {
      creationTime = json["creationTime"];
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
      lastModifiedTime = json["lastModifiedTime"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for Dataset */
  core.Map toJson() {
    var output = new core.Map();

    if (access != null) {
      output["access"] = new core.List();
      access.forEach((item) {
        output["access"].add(item.toJson());
      });
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
  core.String toString() => JSON.stringify(this.toJson());

}

class DatasetAccess {

  /** [Pick one] A domain to grant access to. Any users signed in with the domain specified will be granted the specified access. Example: "example.com". */
  core.String domain;

  /** [Pick one] A fully-qualified email address of a mailing list to grant access to. This must be either a Google Groups mailing list (ends in @googlegroups.com) or a group managed by an enterprise version of Google Groups. */
  core.String groupByEmail;

  /** [Required] Describes the rights granted to the user specified by the other member of the access object. The following string values are supported: READ - User can call any list() or get() method on any collection or resource. WRITE - User can call any method on any collection except for datasets, on which they can call list() and get(). OWNER - User can call any method. The dataset creator is granted this role by default. */
  core.String role;

  /** [Pick one] A special group to grant access to. The valid values are: projectOwners: Owners of the enclosing project. projectReaders: Readers of the enclosing project. projectWriters: Writers of the enclosing project. allAuthenticatedUsers: All authenticated BigQuery users. */
  core.String specialGroup;

  /** [Pick one] A fully qualified email address of a user to grant access to. For example: fred@example.com. */
  core.String userByEmail;

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

    return output;
  }

  /** Return String representation of DatasetAccess */
  core.String toString() => JSON.stringify(this.toJson());

}

class DatasetList {

  /** An array of one or more summarized dataset resources. Absent when there are no datasets in the specified project. */
  core.List<DatasetListDatasets> datasets;

  /** A hash of this page of results. See Paging Through Results in the developer's guide. */
  core.String etag;

  /** The type of list. */
  core.String kind;

  /** A token to request the next page of results. Present only when there is more than one page of results.* See Paging Through Results in the developer's guide. */
  core.String nextPageToken;

  /** Create new DatasetList from JSON data */
  DatasetList.fromJson(core.Map json) {
    if (json.containsKey("datasets")) {
      datasets = [];
      json["datasets"].forEach((item) {
        datasets.add(new DatasetListDatasets.fromJson(item));
      });
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
      output["datasets"] = new core.List();
      datasets.forEach((item) {
        output["datasets"].add(item.toJson());
      });
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
  core.String toString() => JSON.stringify(this.toJson());

}

class DatasetListDatasets {

  /** Reference identifying dataset. */
  DatasetReference datasetReference;

  /** A descriptive name for this dataset, if one exists. */
  core.String friendlyName;

  /** The fully-qualified unique name of this dataset in the format projectId:datasetId. */
  core.String id;

  /** The resource type. */
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
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

}

class ErrorProto {

  /** Debugging information for the service, if present. Should be ignored. */
  core.String debugInfo;

  /** Specifies where the error occurred, if present. */
  core.String location;

  /** A human readable explanation of the error. */
  core.String message;

  /** Specifies the error reason. For example, reason will be "required" or "invalid" if some field was missing or malformed. */
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
  core.String toString() => JSON.stringify(this.toJson());

}

class GetQueryResultsResponse {

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
      rows = [];
      json["rows"].forEach((item) {
        rows.add(new TableRow.fromJson(item));
      });
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
      output["rows"] = new core.List();
      rows.forEach((item) {
        output["rows"].add(item.toJson());
      });
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
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

}

class JobConfigurationExtract {

  /** [Experimental] Optional and defaults to CSV. Format with which files should be exported. To export to CSV, specify "CSV". Tables with nested or repeated fields cannot be exported as CSV. To export to newline-delimited JSON, specify "NEWLINE_DELIMITED_JSON". */
  core.String destinationFormat;

  /** [Required] The fully-qualified Google Cloud Storage URI where the extracted table should be written. */
  core.String destinationUri;

  /** [Optional] Delimiter to use between fields in the exported data. Default is ',' */
  core.String fieldDelimiter;

  /** [Optional] Whether to print out a heder row in the results. Default is true. */
  core.bool printHeader;

  /** [Required] A reference to the table being exported. */
  TableReference sourceTable;

  /** Create new JobConfigurationExtract from JSON data */
  JobConfigurationExtract.fromJson(core.Map json) {
    if (json.containsKey("destinationFormat")) {
      destinationFormat = json["destinationFormat"];
    }
    if (json.containsKey("destinationUri")) {
      destinationUri = json["destinationUri"];
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

    if (destinationFormat != null) {
      output["destinationFormat"] = destinationFormat;
    }
    if (destinationUri != null) {
      output["destinationUri"] = destinationUri;
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
  core.String toString() => JSON.stringify(this.toJson());

}

class JobConfigurationLink {

  /** [Optional] Whether or not to create a new table, if none exists. */
  core.String createDisposition;

  /** [Required] The destination table of the link job. */
  TableReference destinationTable;

  /** [Required] URI of source table to link. */
  core.List<core.String> sourceUri;

  /** [Optional] Whether to overwrite an existing table (WRITE_TRUNCATE), append to an existing table (WRITE_APPEND), or require that the the table is empty (WRITE_EMPTY). Default is WRITE_APPEND. */
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
      sourceUri = [];
      json["sourceUri"].forEach((item) {
        sourceUri.add(item);
      });
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
      output["sourceUri"] = new core.List();
      sourceUri.forEach((item) {
        output["sourceUri"].add(item);
      });
    }
    if (writeDisposition != null) {
      output["writeDisposition"] = writeDisposition;
    }

    return output;
  }

  /** Return String representation of JobConfigurationLink */
  core.String toString() => JSON.stringify(this.toJson());

}

class JobConfigurationLoad {

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

  /** [Optional] Specifies the action that occurs if the destination table already exists. Each action is atomic and only occurs if BigQuery is able to fully load the data and the load job completes without error. The following values are supported: WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table. WRITE_APPEND: If the table already exists, BigQuery appends the data to the table. WRITE_EMPTY: If the table already exists, a 'duplicate' error is returned in the job result. Creation, truncation and append actions occur as one atomic update upon job completion. */
  core.String writeDisposition;

  /** Create new JobConfigurationLoad from JSON data */
  JobConfigurationLoad.fromJson(core.Map json) {
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
      sourceUris = [];
      json["sourceUris"].forEach((item) {
        sourceUris.add(item);
      });
    }
    if (json.containsKey("writeDisposition")) {
      writeDisposition = json["writeDisposition"];
    }
  }

  /** Create JSON Object for JobConfigurationLoad */
  core.Map toJson() {
    var output = new core.Map();

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
      output["sourceUris"] = new core.List();
      sourceUris.forEach((item) {
        output["sourceUris"].add(item);
      });
    }
    if (writeDisposition != null) {
      output["writeDisposition"] = writeDisposition;
    }

    return output;
  }

  /** Return String representation of JobConfigurationLoad */
  core.String toString() => JSON.stringify(this.toJson());

}

class JobConfigurationQuery {

  /** [Experimental] If true, allows >128M results to be materialized in the destination table. Requires destination_table to be set. */
  core.bool allowLargeResults;

  /** [Optional] Whether to create the table if it doesn't already exist (CREATE_IF_NEEDED) or to require the table already exist (CREATE_NEVER). Default is CREATE_IF_NEEDED. */
  core.String createDisposition;

  /** [Optional] Specifies the default dataset to assume for unqualified table names in the query. */
  DatasetReference defaultDataset;

  /** [Optional] Describes the table where the query results should be stored. If not present, a new table will be created to store the results. */
  TableReference destinationTable;

  /** [Experimental] If set, preserve null values in table data, rather than mapping null values to the column's default value. This flag currently defaults to false, but the default will soon be changed to true. Shortly afterward, this flag will be removed completely. Please specify true if possible, and false only if you need to force the old behavior while updating client code. */
  core.bool preserveNulls;

  /** [Optional] Specifies a priority for the query. Default is INTERACTIVE. Alternative is BATCH. */
  core.String priority;

  /** [Required] BigQuery SQL query to execute. */
  core.String query;

  /** [Optional] Whether to overwrite an existing table (WRITE_TRUNCATE), append to an existing table (WRITE_APPEND), or require that the the table is empty (WRITE_EMPTY). Default is WRITE_EMPTY. */
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
    if (json.containsKey("preserveNulls")) {
      preserveNulls = json["preserveNulls"];
    }
    if (json.containsKey("priority")) {
      priority = json["priority"];
    }
    if (json.containsKey("query")) {
      query = json["query"];
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
    if (preserveNulls != null) {
      output["preserveNulls"] = preserveNulls;
    }
    if (priority != null) {
      output["priority"] = priority;
    }
    if (query != null) {
      output["query"] = query;
    }
    if (writeDisposition != null) {
      output["writeDisposition"] = writeDisposition;
    }

    return output;
  }

  /** Return String representation of JobConfigurationQuery */
  core.String toString() => JSON.stringify(this.toJson());

}

class JobConfigurationTableCopy {

  /** [Optional] Whether or not to create a new table, if none exists. */
  core.String createDisposition;

  /** [Required] The destination table */
  TableReference destinationTable;

  /** [Required] Source table to copy. */
  TableReference sourceTable;

  /** [Optional] Whether or not to append or require the table to be empty. */
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
    if (writeDisposition != null) {
      output["writeDisposition"] = writeDisposition;
    }

    return output;
  }

  /** Return String representation of JobConfigurationTableCopy */
  core.String toString() => JSON.stringify(this.toJson());

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
      jobs = [];
      json["jobs"].forEach((item) {
        jobs.add(new JobListJobs.fromJson(item));
      });
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
      output["jobs"] = new core.List();
      jobs.forEach((item) {
        output["jobs"].add(item.toJson());
      });
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
  core.String toString() => JSON.stringify(this.toJson());

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

    return output;
  }

  /** Return String representation of JobListJobs */
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

}

class JobStatistics {

  /** [Output-only] End time of this job, in milliseconds since the epoch. */
  core.String endTime;

  /** [Output-only] Statistics for a load job. */
  JobStatistics3 load;

  /** [Output-only] Statistics for a query job. */
  JobStatistics2 query;

  /** [Output-only] Start time of this job, in milliseconds since the epoch. */
  core.String startTime;

  /** [Output-only] [Deprecated] Use the bytes processed in the query statistics instead. */
  core.String totalBytesProcessed;

  /** Create new JobStatistics from JSON data */
  JobStatistics.fromJson(core.Map json) {
    if (json.containsKey("endTime")) {
      endTime = json["endTime"];
    }
    if (json.containsKey("load")) {
      load = new JobStatistics3.fromJson(json["load"]);
    }
    if (json.containsKey("query")) {
      query = new JobStatistics2.fromJson(json["query"]);
    }
    if (json.containsKey("startTime")) {
      startTime = json["startTime"];
    }
    if (json.containsKey("totalBytesProcessed")) {
      totalBytesProcessed = json["totalBytesProcessed"];
    }
  }

  /** Create JSON Object for JobStatistics */
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.stringify(this.toJson());

}

class JobStatistics2 {

  /** [Output-only] Total bytes processed for this job. */
  core.String totalBytesProcessed;

  /** Create new JobStatistics2 from JSON data */
  JobStatistics2.fromJson(core.Map json) {
    if (json.containsKey("totalBytesProcessed")) {
      totalBytesProcessed = json["totalBytesProcessed"];
    }
  }

  /** Create JSON Object for JobStatistics2 */
  core.Map toJson() {
    var output = new core.Map();

    if (totalBytesProcessed != null) {
      output["totalBytesProcessed"] = totalBytesProcessed;
    }

    return output;
  }

  /** Return String representation of JobStatistics2 */
  core.String toString() => JSON.stringify(this.toJson());

}

class JobStatistics3 {

  /** [Output-only] Number of bytes of source data in a joad job. */
  core.String inputFileBytes;

  /** [Output-only] Number of source files in a load job. */
  core.String inputFiles;

  /** [Output-only] Size of the loaded data in bytes. Note that while an import job is in the running state, this value may change. */
  core.String outputBytes;

  /** [Output-only] Number of rows imported in a load job. Note that while an import job is in the running state, this value may change. */
  core.String outputRows;

  /** Create new JobStatistics3 from JSON data */
  JobStatistics3.fromJson(core.Map json) {
    if (json.containsKey("inputFileBytes")) {
      inputFileBytes = json["inputFileBytes"];
    }
    if (json.containsKey("inputFiles")) {
      inputFiles = json["inputFiles"];
    }
    if (json.containsKey("outputBytes")) {
      outputBytes = json["outputBytes"];
    }
    if (json.containsKey("outputRows")) {
      outputRows = json["outputRows"];
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
  core.String toString() => JSON.stringify(this.toJson());

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
      errors = [];
      json["errors"].forEach((item) {
        errors.add(new ErrorProto.fromJson(item));
      });
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
      output["errors"] = new core.List();
      errors.forEach((item) {
        output["errors"].add(item.toJson());
      });
    }
    if (state != null) {
      output["state"] = state;
    }

    return output;
  }

  /** Return String representation of JobStatus */
  core.String toString() => JSON.stringify(this.toJson());

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
      projects = [];
      json["projects"].forEach((item) {
        projects.add(new ProjectListProjects.fromJson(item));
      });
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
      output["projects"] = new core.List();
      projects.forEach((item) {
        output["projects"].add(item.toJson());
      });
    }
    if (totalItems != null) {
      output["totalItems"] = totalItems;
    }

    return output;
  }

  /** Return String representation of ProjectList */
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

}

class QueryRequest {

  /** [Optional] Specifies the default datasetId and projectId to assume for any unqualified table names in the query. If not set, all table names in the query string must be fully-qualified in the format projectId:datasetId.tableid. */
  DatasetReference defaultDataset;

  /** [Optional] If set, don't actually run the query. A valid query will return an empty response, while an invalid query will return the same error it would if it wasn't a dry run. */
  core.bool dryRun;

  /** The resource type of the request. */
  core.String kind;

  /** [Optional] The maximum number of results to return per page of results. If the response list exceeds the maximum response size for a single response, you will have to page through the results. Default is to return the maximum response size. */
  core.int maxResults;

  /** [Experimental] If set, preserve null values in table data, rather than mapping null values to the column's default value. This flag currently defaults to false, but the default will soon be changed to true. Shortly afterward, this flag will be removed completely. Please specify true if possible, and false only if you need to force the old behavior while updating client code. */
  core.bool preserveNulls;

  /** [Required] A query string, following the BigQuery query syntax of the query to execute. Table names should be qualified by dataset name in the format projectId:datasetId.tableId unless you specify the defaultDataset value. If the table is in the same project as the job, you can omit the project ID. Example: SELECT f1 FROM myProjectId:myDatasetId.myTableId. */
  core.String query;

  /** [Optional] How long to wait for the query to complete, in milliseconds, before returning. Default is to return immediately. If the timeout passes before the job completes, the request will fail with a TIMEOUT error. */
  core.int timeoutMs;

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

    return output;
  }

  /** Return String representation of QueryRequest */
  core.String toString() => JSON.stringify(this.toJson());

}

class QueryResponse {

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
  core.String totalBytesProcessed;

  /** The total number of rows in the complete query result set, which can be more than the number of rows in this single page of results. */
  core.String totalRows;

  /** Create new QueryResponse from JSON data */
  QueryResponse.fromJson(core.Map json) {
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
      rows = [];
      json["rows"].forEach((item) {
        rows.add(new TableRow.fromJson(item));
      });
    }
    if (json.containsKey("schema")) {
      schema = new TableSchema.fromJson(json["schema"]);
    }
    if (json.containsKey("totalBytesProcessed")) {
      totalBytesProcessed = json["totalBytesProcessed"];
    }
    if (json.containsKey("totalRows")) {
      totalRows = json["totalRows"];
    }
  }

  /** Create JSON Object for QueryResponse */
  core.Map toJson() {
    var output = new core.Map();

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
      output["rows"] = new core.List();
      rows.forEach((item) {
        output["rows"].add(item.toJson());
      });
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
  core.String toString() => JSON.stringify(this.toJson());

}

class Table {

  /** [Output-only] The time when this table was created, in milliseconds since the epoch. */
  core.String creationTime;

  /** [Optional] A user-friendly description of this table. */
  core.String description;

  /** [Output-only] A hash of this resource. */
  core.String etag;

  /** [Optional] The time when this table expires, in milliseconds since the epoch. If not present, the table will persist indefinitely. Expired tables will be deleted and their storage reclaimed. */
  core.String expirationTime;

  /** [Optional] A descriptive name for this table. */
  core.String friendlyName;

  /** [Output-only] An opaque ID uniquely identifying the table. */
  core.String id;

  /** [Output-only] The type of the resource. */
  core.String kind;

  /** [Output-only] The time when this table was last modified, in milliseconds since the epoch. */
  core.String lastModifiedTime;

  /** [Output-only] The size of the table in bytes. */
  core.String numBytes;

  /** [Output-only] The number of rows of data in this table. */
  core.String numRows;

  /** [Optional] Describes the schema of this table. */
  TableSchema schema;

  /** [Output-only] A URL that can be used to access this resource again. */
  core.String selfLink;

  /** [Required] Reference describing the ID of this table. */
  TableReference tableReference;

  /** Create new Table from JSON data */
  Table.fromJson(core.Map json) {
    if (json.containsKey("creationTime")) {
      creationTime = json["creationTime"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("expirationTime")) {
      expirationTime = json["expirationTime"];
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
      lastModifiedTime = json["lastModifiedTime"];
    }
    if (json.containsKey("numBytes")) {
      numBytes = json["numBytes"];
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

    return output;
  }

  /** Return String representation of Table */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a single cell in the result set. Users of the java client can detect whether their value result is null by calling 'com.google.api.client.util.Data.isNull(cell.getV())'. */
class TableCell {

  /** Create new TableCell from JSON data */
  TableCell.fromJson(core.Map json) {
  }

  /** Create JSON Object for TableCell */
  core.Map toJson() {
    var output = new core.Map();


    return output;
  }

  /** Return String representation of TableCell */
  core.String toString() => JSON.stringify(this.toJson());

}

class TableDataList {

  /** A hash of this page of results. */
  core.String etag;

  /** The resource type of the response. */
  core.String kind;

  /** A token used for paging results. Providing this token instead of the startRow parameter can help you retrieve stable results when an underlying table is changing. */
  core.String pageToken;

  /** Rows of results. */
  core.List<TableRow> rows;

  /** The total number of rows in the complete table. */
  core.String totalRows;

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
      rows = [];
      json["rows"].forEach((item) {
        rows.add(new TableRow.fromJson(item));
      });
    }
    if (json.containsKey("totalRows")) {
      totalRows = json["totalRows"];
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
      output["rows"] = new core.List();
      rows.forEach((item) {
        output["rows"].add(item.toJson());
      });
    }
    if (totalRows != null) {
      output["totalRows"] = totalRows;
    }

    return output;
  }

  /** Return String representation of TableDataList */
  core.String toString() => JSON.stringify(this.toJson());

}

class TableFieldSchema {

  /** [Optional] Describes the nested schema fields if the type property is set to RECORD. */
  core.List<TableFieldSchema> fields;

  /** [Optional] The field mode. Possible values include NULLABLE, REQUIRED and REPEATED. The default value is NULLABLE. */
  core.String mode;

  /** [Required] The field name. */
  core.String name;

  /** [Required] The field data type. Possible values include STRING, INTEGER, FLOAT, BOOLEAN, TIMESTAMP or RECORD (where RECORD indicates a nested schema). */
  core.String type;

  /** Create new TableFieldSchema from JSON data */
  TableFieldSchema.fromJson(core.Map json) {
    if (json.containsKey("fields")) {
      fields = [];
      json["fields"].forEach((item) {
        fields.add(new TableFieldSchema.fromJson(item));
      });
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

    if (fields != null) {
      output["fields"] = new core.List();
      fields.forEach((item) {
        output["fields"].add(item.toJson());
      });
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
  core.String toString() => JSON.stringify(this.toJson());

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
      tables = [];
      json["tables"].forEach((item) {
        tables.add(new TableListTables.fromJson(item));
      });
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
      output["tables"] = new core.List();
      tables.forEach((item) {
        output["tables"].add(item.toJson());
      });
    }
    if (totalItems != null) {
      output["totalItems"] = totalItems;
    }

    return output;
  }

  /** Return String representation of TableList */
  core.String toString() => JSON.stringify(this.toJson());

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

    return output;
  }

  /** Return String representation of TableListTables */
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a single row in the result set, consisting of one or more fields. */
class TableRow {
  core.List<TableCell> f;

  /** Create new TableRow from JSON data */
  TableRow.fromJson(core.Map json) {
    if (json.containsKey("f")) {
      f = [];
      json["f"].forEach((item) {
        f.add(new TableCell.fromJson(item));
      });
    }
  }

  /** Create JSON Object for TableRow */
  core.Map toJson() {
    var output = new core.Map();

    if (f != null) {
      output["f"] = new core.List();
      f.forEach((item) {
        output["f"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of TableRow */
  core.String toString() => JSON.stringify(this.toJson());

}

class TableSchema {

  /** Describes the fields in a table. */
  core.List<TableFieldSchema> fields;

  /** Create new TableSchema from JSON data */
  TableSchema.fromJson(core.Map json) {
    if (json.containsKey("fields")) {
      fields = [];
      json["fields"].forEach((item) {
        fields.add(new TableFieldSchema.fromJson(item));
      });
    }
  }

  /** Create JSON Object for TableSchema */
  core.Map toJson() {
    var output = new core.Map();

    if (fields != null) {
      output["fields"] = new core.List();
      fields.forEach((item) {
        output["fields"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of TableSchema */
  core.String toString() => JSON.stringify(this.toJson());

}

