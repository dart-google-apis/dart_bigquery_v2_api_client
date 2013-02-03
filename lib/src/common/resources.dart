part of bigquery_v2_api_client;

class DatasetsResource extends Resource {

  DatasetsResource(Client client) : super(client) {
  }

  /**
   * Deletes the dataset specified by datasetId value. Before you can delete a dataset, you must delete all its tables, either manually or by specifying deleteContents. Immediately after deletion, you can create another dataset with the same name.
   *
   * [projectId] - Project ID of the dataset being deleted
   *
   * [datasetId] - Dataset ID of dataset being deleted
   *
   * [deleteContents] - If True, delete all the tables in the dataset. If False and the dataset contains tables, the request will fail. Default is False
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> delete(String projectId, String datasetId, {bool deleteContents, Map optParams}) {
    var completer = new Completer();
    var url = "projects/{projectId}/datasets/{datasetId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (datasetId == null) paramErrors.add("datasetId is required");
    if (datasetId != null) urlParams["datasetId"] = datasetId;
    if (deleteContents != null) queryParams["deleteContents"] = deleteContents;
    if (projectId == null) paramErrors.add("projectId is required");
    if (projectId != null) urlParams["projectId"] = projectId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Returns the dataset specified by datasetID.
   *
   * [projectId] - Project ID of the requested dataset
   *
   * [datasetId] - Dataset ID of the requested dataset
   *
   * [optParams] - Additional query parameters
   */
  Future<Dataset> get(String projectId, String datasetId, {Map optParams}) {
    var completer = new Completer();
    var url = "projects/{projectId}/datasets/{datasetId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (datasetId == null) paramErrors.add("datasetId is required");
    if (datasetId != null) urlParams["datasetId"] = datasetId;
    if (projectId == null) paramErrors.add("projectId is required");
    if (projectId != null) urlParams["projectId"] = projectId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Dataset.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Creates a new empty dataset.
   *
   * [request] - Dataset to send in this request
   *
   * [projectId] - Project ID of the new dataset
   *
   * [optParams] - Additional query parameters
   */
  Future<Dataset> insert(Dataset request, String projectId, {Map optParams}) {
    var completer = new Completer();
    var url = "projects/{projectId}/datasets";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (projectId == null) paramErrors.add("projectId is required");
    if (projectId != null) urlParams["projectId"] = projectId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Dataset.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Lists all the datasets in the specified project to which the caller has read access; however, a project owner can list (but not necessarily get) all datasets in his project.
   *
   * [projectId] - Project ID of the datasets to be listed
   *
   * [maxResults] - The maximum number of results to return
   *
   * [pageToken] - Page token, returned by a previous call, to request the next page of results
   *
   * [optParams] - Additional query parameters
   */
  Future<DatasetList> list(String projectId, {int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "projects/{projectId}/datasets";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (projectId == null) paramErrors.add("projectId is required");
    if (projectId != null) urlParams["projectId"] = projectId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new DatasetList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates information in an existing dataset, specified by datasetId. Properties not included in the submitted resource will not be changed. If you include the access property without any values assigned, the request will fail as you must specify at least one owner for a dataset. This method supports patch semantics.
   *
   * [request] - Dataset to send in this request
   *
   * [projectId] - Project ID of the dataset being updated
   *
   * [datasetId] - Dataset ID of the dataset being updated
   *
   * [optParams] - Additional query parameters
   */
  Future<Dataset> patch(Dataset request, String projectId, String datasetId, {Map optParams}) {
    var completer = new Completer();
    var url = "projects/{projectId}/datasets/{datasetId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (datasetId == null) paramErrors.add("datasetId is required");
    if (datasetId != null) urlParams["datasetId"] = datasetId;
    if (projectId == null) paramErrors.add("projectId is required");
    if (projectId != null) urlParams["projectId"] = projectId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Dataset.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates information in an existing dataset, specified by datasetId. Properties not included in the submitted resource will not be changed. If you include the access property without any values assigned, the request will fail as you must specify at least one owner for a dataset.
   *
   * [request] - Dataset to send in this request
   *
   * [projectId] - Project ID of the dataset being updated
   *
   * [datasetId] - Dataset ID of the dataset being updated
   *
   * [optParams] - Additional query parameters
   */
  Future<Dataset> update(Dataset request, String projectId, String datasetId, {Map optParams}) {
    var completer = new Completer();
    var url = "projects/{projectId}/datasets/{datasetId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (datasetId == null) paramErrors.add("datasetId is required");
    if (datasetId != null) urlParams["datasetId"] = datasetId;
    if (projectId == null) paramErrors.add("projectId is required");
    if (projectId != null) urlParams["projectId"] = projectId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Dataset.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class JobsResource extends Resource {

  JobsResource(Client client) : super(client) {
  }

  /**
   * Retrieves the specified job by ID.
   *
   * [projectId] - Project ID of the requested job
   *
   * [jobId] - Job ID of the requested job
   *
   * [optParams] - Additional query parameters
   */
  Future<Job> get(String projectId, String jobId, {Map optParams}) {
    var completer = new Completer();
    var url = "projects/{projectId}/jobs/{jobId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (jobId == null) paramErrors.add("jobId is required");
    if (jobId != null) urlParams["jobId"] = jobId;
    if (projectId == null) paramErrors.add("projectId is required");
    if (projectId != null) urlParams["projectId"] = projectId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Job.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves the results of a query job.
   *
   * [projectId] - Project ID of the query job
   *
   * [jobId] - Job ID of the query job
   *
   * [maxResults] - Maximum number of results to read
   *
   * [startIndex] - Zero-based index of the starting row
   *
   * [timeoutMs] - How long to wait for the query to complete, in milliseconds, before returning. Default is to return immediately. If the timeout passes before the job completes, the request will fail with a TIMEOUT error
   *
   * [optParams] - Additional query parameters
   */
  Future<GetQueryResultsResponse> getQueryResults(String projectId, String jobId, {int maxResults, String startIndex, int timeoutMs, Map optParams}) {
    var completer = new Completer();
    var url = "projects/{projectId}/queries/{jobId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (jobId == null) paramErrors.add("jobId is required");
    if (jobId != null) urlParams["jobId"] = jobId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (projectId == null) paramErrors.add("projectId is required");
    if (projectId != null) urlParams["projectId"] = projectId;
    if (startIndex != null) queryParams["startIndex"] = startIndex;
    if (timeoutMs != null) queryParams["timeoutMs"] = timeoutMs;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new GetQueryResultsResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Starts a new asynchronous job.
   *
   * [request] - Job to send in this request
   *
   * [projectId] - Project ID of the project that will be billed for the job
   *
   * [content] - Base64 Data of the file content to be uploaded
   *
   * [contentType] - MimeType of the file to be uploaded
   *
   * [optParams] - Additional query parameters
   */
  Future<Job> insert(Job request, String projectId, {String content, String contentType, Map optParams}) {
    var completer = new Completer();
    var url = "projects/{projectId}/jobs";
    var uploadUrl = "/upload/bigquery/v2/projects/{projectId}/jobs";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (projectId == null) paramErrors.add("projectId is required");
    if (projectId != null) urlParams["projectId"] = projectId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    if (?content && content != null) {
      response = _client.upload(uploadUrl, "POST", request.toString(), content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    }
    response
      .then((data) => completer.complete(new Job.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Lists all the Jobs in the specified project that were started by the user.
   *
   * [projectId] - Project ID of the jobs to list
   *
   * [allUsers] - Whether to display jobs owned by all users in the project. Default false
   *
   * [maxResults] - Maximum number of results to return
   *
   * [pageToken] - Page token, returned by a previous call, to request the next page of results
   *
   * [projection] - Restrict information returned to a set of selected fields
   *   Allowed values:
   *     full - Includes all job data
   *     minimal - Does not include the job configuration
   *
   * [stateFilter] - Filter for job state
   *   Allowed values:
   *     done - Finished jobs
   *     pending - Pending jobs
   *     running - Running jobs
   *
   * [optParams] - Additional query parameters
   */
  Future<JobList> list(String projectId, {bool allUsers, int maxResults, String pageToken, String projection, String stateFilter, Map optParams}) {
    var completer = new Completer();
    var url = "projects/{projectId}/jobs";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (allUsers != null) queryParams["allUsers"] = allUsers;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (projectId == null) paramErrors.add("projectId is required");
    if (projectId != null) urlParams["projectId"] = projectId;
    if (projection != null && !["full", "minimal"].contains(projection)) {
      paramErrors.add("Allowed values for projection: full, minimal");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (stateFilter != null && !["done", "pending", "running"].contains(stateFilter)) {
      paramErrors.add("Allowed values for stateFilter: done, pending, running");
    }
    if (stateFilter != null) queryParams["stateFilter"] = stateFilter;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new JobList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Runs a BigQuery SQL query synchronously and returns query results if the query completes within a specified timeout.
   *
   * [request] - QueryRequest to send in this request
   *
   * [projectId] - Project ID of the project billed for the query
   *
   * [optParams] - Additional query parameters
   */
  Future<QueryResponse> query(QueryRequest request, String projectId, {Map optParams}) {
    var completer = new Completer();
    var url = "projects/{projectId}/queries";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (projectId == null) paramErrors.add("projectId is required");
    if (projectId != null) urlParams["projectId"] = projectId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new QueryResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class ProjectsResource extends Resource {

  ProjectsResource(Client client) : super(client) {
  }

  /**
   * Lists the projects to which you have at least read access.
   *
   * [maxResults] - Maximum number of results to return
   *
   * [pageToken] - Page token, returned by a previous call, to request the next page of results
   *
   * [optParams] - Additional query parameters
   */
  Future<ProjectList> list({int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "projects";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new ProjectList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class TabledataResource extends Resource {

  TabledataResource(Client client) : super(client) {
  }

  /**
   * Retrieves table data from a specified set of rows.
   *
   * [projectId] - Project ID of the table to read
   *
   * [datasetId] - Dataset ID of the table to read
   *
   * [tableId] - Table ID of the table to read
   *
   * [maxResults] - Maximum number of results to return
   *
   * [pageToken] - Page token, returned by a previous call, identifying the result set
   *
   * [startIndex] - Zero-based index of the starting row to read
   *
   * [optParams] - Additional query parameters
   */
  Future<TableDataList> list(String projectId, String datasetId, String tableId, {int maxResults, String pageToken, String startIndex, Map optParams}) {
    var completer = new Completer();
    var url = "projects/{projectId}/datasets/{datasetId}/tables/{tableId}/data";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (datasetId == null) paramErrors.add("datasetId is required");
    if (datasetId != null) urlParams["datasetId"] = datasetId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (projectId == null) paramErrors.add("projectId is required");
    if (projectId != null) urlParams["projectId"] = projectId;
    if (startIndex != null) queryParams["startIndex"] = startIndex;
    if (tableId == null) paramErrors.add("tableId is required");
    if (tableId != null) urlParams["tableId"] = tableId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new TableDataList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class TablesResource extends Resource {

  TablesResource(Client client) : super(client) {
  }

  /**
   * Deletes the table specified by tableId from the dataset. If the table contains data, all the data will be deleted.
   *
   * [projectId] - Project ID of the table to delete
   *
   * [datasetId] - Dataset ID of the table to delete
   *
   * [tableId] - Table ID of the table to delete
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> delete(String projectId, String datasetId, String tableId, {Map optParams}) {
    var completer = new Completer();
    var url = "projects/{projectId}/datasets/{datasetId}/tables/{tableId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (datasetId == null) paramErrors.add("datasetId is required");
    if (datasetId != null) urlParams["datasetId"] = datasetId;
    if (projectId == null) paramErrors.add("projectId is required");
    if (projectId != null) urlParams["projectId"] = projectId;
    if (tableId == null) paramErrors.add("tableId is required");
    if (tableId != null) urlParams["tableId"] = tableId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Gets the specified table resource by table ID. This method does not return the data in the table, it only returns the table resource, which describes the structure of this table.
   *
   * [projectId] - Project ID of the requested table
   *
   * [datasetId] - Dataset ID of the requested table
   *
   * [tableId] - Table ID of the requested table
   *
   * [optParams] - Additional query parameters
   */
  Future<Table> get(String projectId, String datasetId, String tableId, {Map optParams}) {
    var completer = new Completer();
    var url = "projects/{projectId}/datasets/{datasetId}/tables/{tableId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (datasetId == null) paramErrors.add("datasetId is required");
    if (datasetId != null) urlParams["datasetId"] = datasetId;
    if (projectId == null) paramErrors.add("projectId is required");
    if (projectId != null) urlParams["projectId"] = projectId;
    if (tableId == null) paramErrors.add("tableId is required");
    if (tableId != null) urlParams["tableId"] = tableId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Table.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Creates a new, empty table in the dataset.
   *
   * [request] - Table to send in this request
   *
   * [projectId] - Project ID of the new table
   *
   * [datasetId] - Dataset ID of the new table
   *
   * [optParams] - Additional query parameters
   */
  Future<Table> insert(Table request, String projectId, String datasetId, {Map optParams}) {
    var completer = new Completer();
    var url = "projects/{projectId}/datasets/{datasetId}/tables";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (datasetId == null) paramErrors.add("datasetId is required");
    if (datasetId != null) urlParams["datasetId"] = datasetId;
    if (projectId == null) paramErrors.add("projectId is required");
    if (projectId != null) urlParams["projectId"] = projectId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Table.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Lists all tables in the specified dataset.
   *
   * [projectId] - Project ID of the tables to list
   *
   * [datasetId] - Dataset ID of the tables to list
   *
   * [maxResults] - Maximum number of results to return
   *
   * [pageToken] - Page token, returned by a previous call, to request the next page of results
   *
   * [optParams] - Additional query parameters
   */
  Future<TableList> list(String projectId, String datasetId, {int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "projects/{projectId}/datasets/{datasetId}/tables";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (datasetId == null) paramErrors.add("datasetId is required");
    if (datasetId != null) urlParams["datasetId"] = datasetId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (projectId == null) paramErrors.add("projectId is required");
    if (projectId != null) urlParams["projectId"] = projectId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new TableList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates information in an existing table, specified by tableId. This method supports patch semantics.
   *
   * [request] - Table to send in this request
   *
   * [projectId] - Project ID of the table to update
   *
   * [datasetId] - Dataset ID of the table to update
   *
   * [tableId] - Table ID of the table to update
   *
   * [optParams] - Additional query parameters
   */
  Future<Table> patch(Table request, String projectId, String datasetId, String tableId, {Map optParams}) {
    var completer = new Completer();
    var url = "projects/{projectId}/datasets/{datasetId}/tables/{tableId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (datasetId == null) paramErrors.add("datasetId is required");
    if (datasetId != null) urlParams["datasetId"] = datasetId;
    if (projectId == null) paramErrors.add("projectId is required");
    if (projectId != null) urlParams["projectId"] = projectId;
    if (tableId == null) paramErrors.add("tableId is required");
    if (tableId != null) urlParams["tableId"] = tableId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Table.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates information in an existing table, specified by tableId.
   *
   * [request] - Table to send in this request
   *
   * [projectId] - Project ID of the table to update
   *
   * [datasetId] - Dataset ID of the table to update
   *
   * [tableId] - Table ID of the table to update
   *
   * [optParams] - Additional query parameters
   */
  Future<Table> update(Table request, String projectId, String datasetId, String tableId, {Map optParams}) {
    var completer = new Completer();
    var url = "projects/{projectId}/datasets/{datasetId}/tables/{tableId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (datasetId == null) paramErrors.add("datasetId is required");
    if (datasetId != null) urlParams["datasetId"] = datasetId;
    if (projectId == null) paramErrors.add("projectId is required");
    if (projectId != null) urlParams["projectId"] = projectId;
    if (tableId == null) paramErrors.add("tableId is required");
    if (tableId != null) urlParams["tableId"] = tableId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Table.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

