part of bigquery_v2_api_client;

class DatasetsResource_ extends Resource {

  DatasetsResource_(Client client) : super(client) {
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
  async.Future<core.Map> delete(core.String projectId, core.String datasetId, {core.bool deleteContents, core.Map optParams}) {
    var url = "projects/{projectId}/datasets/{datasetId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
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
  async.Future<Dataset> get(core.String projectId, core.String datasetId, {core.Map optParams}) {
    var url = "projects/{projectId}/datasets/{datasetId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Dataset.fromJson(data));
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
  async.Future<Dataset> insert(Dataset request, core.String projectId, {core.Map optParams}) {
    var url = "projects/{projectId}/datasets";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Dataset.fromJson(data));
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
  async.Future<DatasetList> list(core.String projectId, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "projects/{projectId}/datasets";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new DatasetList.fromJson(data));
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
  async.Future<Dataset> patch(Dataset request, core.String projectId, core.String datasetId, {core.Map optParams}) {
    var url = "projects/{projectId}/datasets/{datasetId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Dataset.fromJson(data));
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
  async.Future<Dataset> update(Dataset request, core.String projectId, core.String datasetId, {core.Map optParams}) {
    var url = "projects/{projectId}/datasets/{datasetId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Dataset.fromJson(data));
  }
}

class JobsResource_ extends Resource {

  JobsResource_(Client client) : super(client) {
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
  async.Future<Job> get(core.String projectId, core.String jobId, {core.Map optParams}) {
    var url = "projects/{projectId}/jobs/{jobId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Job.fromJson(data));
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
   * [pageToken] - Page token, returned by a previous call, to request the next page of results
   *
   * [startIndex] - Zero-based index of the starting row
   *
   * [timeoutMs] - How long to wait for the query to complete, in milliseconds, before returning. Default is to return immediately. If the timeout passes before the job completes, the request will fail with a TIMEOUT error
   *
   * [optParams] - Additional query parameters
   */
  async.Future<GetQueryResultsResponse> getQueryResults(core.String projectId, core.String jobId, {core.int maxResults, core.String pageToken, core.String startIndex, core.int timeoutMs, core.Map optParams}) {
    var url = "projects/{projectId}/queries/{jobId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (jobId == null) paramErrors.add("jobId is required");
    if (jobId != null) urlParams["jobId"] = jobId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new GetQueryResultsResponse.fromJson(data));
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
  async.Future<Job> insert(Job request, core.String projectId, {core.String content, core.String contentType, core.Map optParams}) {
    var url = "projects/{projectId}/jobs";
    var uploadUrl = "/upload/bigquery/v2/projects/{projectId}/jobs";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    if (?content && content != null) {
      response = _client.upload(uploadUrl, "POST", request.toString(), content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    }
    return response
      .then((data) => new Job.fromJson(data));
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
  async.Future<JobList> list(core.String projectId, {core.bool allUsers, core.int maxResults, core.String pageToken, core.String projection, core.String stateFilter, core.Map optParams}) {
    var url = "projects/{projectId}/jobs";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new JobList.fromJson(data));
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
  async.Future<QueryResponse> query(QueryRequest request, core.String projectId, {core.Map optParams}) {
    var url = "projects/{projectId}/queries";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new QueryResponse.fromJson(data));
  }
}

class ProjectsResource_ extends Resource {

  ProjectsResource_(Client client) : super(client) {
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
  async.Future<ProjectList> list({core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "projects";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ProjectList.fromJson(data));
  }
}

class TabledataResource_ extends Resource {

  TabledataResource_(Client client) : super(client) {
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
  async.Future<TableDataList> list(core.String projectId, core.String datasetId, core.String tableId, {core.int maxResults, core.String pageToken, core.String startIndex, core.Map optParams}) {
    var url = "projects/{projectId}/datasets/{datasetId}/tables/{tableId}/data";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new TableDataList.fromJson(data));
  }
}

class TablesResource_ extends Resource {

  TablesResource_(Client client) : super(client) {
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
  async.Future<core.Map> delete(core.String projectId, core.String datasetId, core.String tableId, {core.Map optParams}) {
    var url = "projects/{projectId}/datasets/{datasetId}/tables/{tableId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
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
  async.Future<Table> get(core.String projectId, core.String datasetId, core.String tableId, {core.Map optParams}) {
    var url = "projects/{projectId}/datasets/{datasetId}/tables/{tableId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Table.fromJson(data));
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
  async.Future<Table> insert(Table request, core.String projectId, core.String datasetId, {core.Map optParams}) {
    var url = "projects/{projectId}/datasets/{datasetId}/tables";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Table.fromJson(data));
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
  async.Future<TableList> list(core.String projectId, core.String datasetId, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "projects/{projectId}/datasets/{datasetId}/tables";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new TableList.fromJson(data));
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
  async.Future<Table> patch(Table request, core.String projectId, core.String datasetId, core.String tableId, {core.Map optParams}) {
    var url = "projects/{projectId}/datasets/{datasetId}/tables/{tableId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Table.fromJson(data));
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
  async.Future<Table> update(Table request, core.String projectId, core.String datasetId, core.String tableId, {core.Map optParams}) {
    var url = "projects/{projectId}/datasets/{datasetId}/tables/{tableId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Table.fromJson(data));
  }
}

