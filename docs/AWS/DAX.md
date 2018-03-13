## Module AWS.DAX

<p>DAX is a managed caching service engineered for Amazon DynamoDB. DAX dramatically speeds up database reads by caching frequently-accessed data from DynamoDB, so applications can access that data with sub-millisecond latency. You can create a DAX cluster easily, using the AWS Management Console. With a few simple modifications to your code, your application can begin taking advantage of the DAX cluster and realize significant improvements in read performance.</p>

#### `createCluster`

``` purescript
createCluster :: forall eff. CreateClusterRequest -> Aff (exception :: EXCEPTION | eff) CreateClusterResponse
```

<p>Creates a DAX cluster. All nodes in the cluster run the same DAX caching software.</p>

#### `createParameterGroup`

``` purescript
createParameterGroup :: forall eff. CreateParameterGroupRequest -> Aff (exception :: EXCEPTION | eff) CreateParameterGroupResponse
```

<p>Creates a new parameter group. A parameter group is a collection of parameters that you apply to all of the nodes in a DAX cluster.</p>

#### `createSubnetGroup`

``` purescript
createSubnetGroup :: forall eff. CreateSubnetGroupRequest -> Aff (exception :: EXCEPTION | eff) CreateSubnetGroupResponse
```

<p>Creates a new subnet group.</p>

#### `decreaseReplicationFactor`

``` purescript
decreaseReplicationFactor :: forall eff. DecreaseReplicationFactorRequest -> Aff (exception :: EXCEPTION | eff) DecreaseReplicationFactorResponse
```

<p>Removes one or more nodes from a DAX cluster.</p> <note> <p>You cannot use <code>DecreaseReplicationFactor</code> to remove the last node in a DAX cluster. If you need to do this, use <code>DeleteCluster</code> instead.</p> </note>

#### `deleteCluster`

``` purescript
deleteCluster :: forall eff. DeleteClusterRequest -> Aff (exception :: EXCEPTION | eff) DeleteClusterResponse
```

<p>Deletes a previously provisioned DAX cluster. <i>DeleteCluster</i> deletes all associated nodes, node endpoints and the DAX cluster itself. When you receive a successful response from this action, DAX immediately begins deleting the cluster; you cannot cancel or revert this action.</p>

#### `deleteParameterGroup`

``` purescript
deleteParameterGroup :: forall eff. DeleteParameterGroupRequest -> Aff (exception :: EXCEPTION | eff) DeleteParameterGroupResponse
```

<p>Deletes the specified parameter group. You cannot delete a parameter group if it is associated with any DAX clusters.</p>

#### `deleteSubnetGroup`

``` purescript
deleteSubnetGroup :: forall eff. DeleteSubnetGroupRequest -> Aff (exception :: EXCEPTION | eff) DeleteSubnetGroupResponse
```

<p>Deletes a subnet group.</p> <note> <p>You cannot delete a subnet group if it is associated with any DAX clusters.</p> </note>

#### `describeClusters`

``` purescript
describeClusters :: forall eff. DescribeClustersRequest -> Aff (exception :: EXCEPTION | eff) DescribeClustersResponse
```

<p>Returns information about all provisioned DAX clusters if no cluster identifier is specified, or about a specific DAX cluster if a cluster identifier is supplied.</p> <p>If the cluster is in the CREATING state, only cluster level information will be displayed until all of the nodes are successfully provisioned.</p> <p>If the cluster is in the DELETING state, only cluster level information will be displayed.</p> <p>If nodes are currently being added to the DAX cluster, node endpoint information and creation time for the additional nodes will not be displayed until they are completely provisioned. When the DAX cluster state is <i>available</i>, the cluster is ready for use.</p> <p>If nodes are currently being removed from the DAX cluster, no endpoint information for the removed nodes is displayed.</p>

#### `describeDefaultParameters`

``` purescript
describeDefaultParameters :: forall eff. DescribeDefaultParametersRequest -> Aff (exception :: EXCEPTION | eff) DescribeDefaultParametersResponse
```

<p>Returns the default system parameter information for the DAX caching software.</p>

#### `describeEvents`

``` purescript
describeEvents :: forall eff. DescribeEventsRequest -> Aff (exception :: EXCEPTION | eff) DescribeEventsResponse
```

<p>Returns events related to DAX clusters and parameter groups. You can obtain events specific to a particular DAX cluster or parameter group by providing the name as a parameter.</p> <p>By default, only the events occurring within the last hour are returned; however, you can retrieve up to 14 days' worth of events if necessary.</p>

#### `describeParameterGroups`

``` purescript
describeParameterGroups :: forall eff. DescribeParameterGroupsRequest -> Aff (exception :: EXCEPTION | eff) DescribeParameterGroupsResponse
```

<p>Returns a list of parameter group descriptions. If a parameter group name is specified, the list will contain only the descriptions for that group.</p>

#### `describeParameters`

``` purescript
describeParameters :: forall eff. DescribeParametersRequest -> Aff (exception :: EXCEPTION | eff) DescribeParametersResponse
```

<p>Returns the detailed parameter list for a particular parameter group.</p>

#### `describeSubnetGroups`

``` purescript
describeSubnetGroups :: forall eff. DescribeSubnetGroupsRequest -> Aff (exception :: EXCEPTION | eff) DescribeSubnetGroupsResponse
```

<p>Returns a list of subnet group descriptions. If a subnet group name is specified, the list will contain only the description of that group.</p>

#### `increaseReplicationFactor`

``` purescript
increaseReplicationFactor :: forall eff. IncreaseReplicationFactorRequest -> Aff (exception :: EXCEPTION | eff) IncreaseReplicationFactorResponse
```

<p>Adds one or more nodes to a DAX cluster.</p>

#### `listTags`

``` purescript
listTags :: forall eff. ListTagsRequest -> Aff (exception :: EXCEPTION | eff) ListTagsResponse
```

<p>List all of the tags for a DAX cluster. You can call <code>ListTags</code> up to 10 times per second, per account.</p>

#### `rebootNode`

``` purescript
rebootNode :: forall eff. RebootNodeRequest -> Aff (exception :: EXCEPTION | eff) RebootNodeResponse
```

<p>Reboots a single node of a DAX cluster. The reboot action takes place as soon as possible. During the reboot, the node status is set to REBOOTING.</p>

#### `tagResource`

``` purescript
tagResource :: forall eff. TagResourceRequest -> Aff (exception :: EXCEPTION | eff) TagResourceResponse
```

<p>Associates a set of tags with a DAX resource. You can call <code>TagResource</code> up to 5 times per second, per account. </p>

#### `untagResource`

``` purescript
untagResource :: forall eff. UntagResourceRequest -> Aff (exception :: EXCEPTION | eff) UntagResourceResponse
```

<p>Removes the association of tags from a DAX resource. You can call <code>UntagResource</code> up to 5 times per second, per account. </p>

#### `updateCluster`

``` purescript
updateCluster :: forall eff. UpdateClusterRequest -> Aff (exception :: EXCEPTION | eff) UpdateClusterResponse
```

<p>Modifies the settings for a DAX cluster. You can use this action to change one or more cluster configuration parameters by specifying the parameters and the new values.</p>

#### `updateParameterGroup`

``` purescript
updateParameterGroup :: forall eff. UpdateParameterGroupRequest -> Aff (exception :: EXCEPTION | eff) UpdateParameterGroupResponse
```

<p>Modifies the parameters of a parameter group. You can modify up to 20 parameters in a single request by submitting a list parameter name and value pairs.</p>

#### `updateSubnetGroup`

``` purescript
updateSubnetGroup :: forall eff. UpdateSubnetGroupRequest -> Aff (exception :: EXCEPTION | eff) UpdateSubnetGroupResponse
```

<p>Modifies an existing subnet group.</p>

#### `AvailabilityZoneList`

``` purescript
newtype AvailabilityZoneList
  = AvailabilityZoneList (Array String)
```

##### Instances
``` purescript
Newtype AvailabilityZoneList _
Generic AvailabilityZoneList _
Show AvailabilityZoneList
Decode AvailabilityZoneList
Encode AvailabilityZoneList
```

#### `AwsQueryErrorMessage`

``` purescript
newtype AwsQueryErrorMessage
  = AwsQueryErrorMessage String
```

##### Instances
``` purescript
Newtype AwsQueryErrorMessage _
Generic AwsQueryErrorMessage _
Show AwsQueryErrorMessage
Decode AwsQueryErrorMessage
Encode AwsQueryErrorMessage
```

#### `ChangeType`

``` purescript
newtype ChangeType
  = ChangeType String
```

##### Instances
``` purescript
Newtype ChangeType _
Generic ChangeType _
Show ChangeType
Decode ChangeType
Encode ChangeType
```

#### `Cluster`

``` purescript
newtype Cluster
  = Cluster { "ClusterName" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "ClusterArn" :: NullOrUndefined (String), "TotalNodes" :: NullOrUndefined (IntegerOptional), "ActiveNodes" :: NullOrUndefined (IntegerOptional), "NodeType" :: NullOrUndefined (String), "Status" :: NullOrUndefined (String), "ClusterDiscoveryEndpoint" :: NullOrUndefined (Endpoint), "NodeIdsToRemove" :: NullOrUndefined (NodeIdentifierList), "Nodes" :: NullOrUndefined (NodeList), "PreferredMaintenanceWindow" :: NullOrUndefined (String), "NotificationConfiguration" :: NullOrUndefined (NotificationConfiguration), "SubnetGroup" :: NullOrUndefined (String), "SecurityGroups" :: NullOrUndefined (SecurityGroupMembershipList), "IamRoleArn" :: NullOrUndefined (String), "ParameterGroup" :: NullOrUndefined (ParameterGroupStatus) }
```

<p>Contains all of the attributes of a specific DAX cluster.</p>

##### Instances
``` purescript
Newtype Cluster _
Generic Cluster _
Show Cluster
Decode Cluster
Encode Cluster
```

#### `newCluster`

``` purescript
newCluster :: Cluster
```

Constructs Cluster from required parameters

#### `newCluster'`

``` purescript
newCluster' :: ({ "ClusterName" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "ClusterArn" :: NullOrUndefined (String), "TotalNodes" :: NullOrUndefined (IntegerOptional), "ActiveNodes" :: NullOrUndefined (IntegerOptional), "NodeType" :: NullOrUndefined (String), "Status" :: NullOrUndefined (String), "ClusterDiscoveryEndpoint" :: NullOrUndefined (Endpoint), "NodeIdsToRemove" :: NullOrUndefined (NodeIdentifierList), "Nodes" :: NullOrUndefined (NodeList), "PreferredMaintenanceWindow" :: NullOrUndefined (String), "NotificationConfiguration" :: NullOrUndefined (NotificationConfiguration), "SubnetGroup" :: NullOrUndefined (String), "SecurityGroups" :: NullOrUndefined (SecurityGroupMembershipList), "IamRoleArn" :: NullOrUndefined (String), "ParameterGroup" :: NullOrUndefined (ParameterGroupStatus) } -> { "ClusterName" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "ClusterArn" :: NullOrUndefined (String), "TotalNodes" :: NullOrUndefined (IntegerOptional), "ActiveNodes" :: NullOrUndefined (IntegerOptional), "NodeType" :: NullOrUndefined (String), "Status" :: NullOrUndefined (String), "ClusterDiscoveryEndpoint" :: NullOrUndefined (Endpoint), "NodeIdsToRemove" :: NullOrUndefined (NodeIdentifierList), "Nodes" :: NullOrUndefined (NodeList), "PreferredMaintenanceWindow" :: NullOrUndefined (String), "NotificationConfiguration" :: NullOrUndefined (NotificationConfiguration), "SubnetGroup" :: NullOrUndefined (String), "SecurityGroups" :: NullOrUndefined (SecurityGroupMembershipList), "IamRoleArn" :: NullOrUndefined (String), "ParameterGroup" :: NullOrUndefined (ParameterGroupStatus) }) -> Cluster
```

Constructs Cluster's fields from required parameters

#### `ClusterAlreadyExistsFault`

``` purescript
newtype ClusterAlreadyExistsFault
  = ClusterAlreadyExistsFault NoArguments
```

<p>You already have a DAX cluster with the given identifier.</p>

##### Instances
``` purescript
Newtype ClusterAlreadyExistsFault _
Generic ClusterAlreadyExistsFault _
Show ClusterAlreadyExistsFault
Decode ClusterAlreadyExistsFault
Encode ClusterAlreadyExistsFault
```

#### `ClusterList`

``` purescript
newtype ClusterList
  = ClusterList (Array Cluster)
```

##### Instances
``` purescript
Newtype ClusterList _
Generic ClusterList _
Show ClusterList
Decode ClusterList
Encode ClusterList
```

#### `ClusterNameList`

``` purescript
newtype ClusterNameList
  = ClusterNameList (Array String)
```

##### Instances
``` purescript
Newtype ClusterNameList _
Generic ClusterNameList _
Show ClusterNameList
Decode ClusterNameList
Encode ClusterNameList
```

#### `ClusterNotFoundFault`

``` purescript
newtype ClusterNotFoundFault
  = ClusterNotFoundFault NoArguments
```

<p>The requested cluster ID does not refer to an existing DAX cluster.</p>

##### Instances
``` purescript
Newtype ClusterNotFoundFault _
Generic ClusterNotFoundFault _
Show ClusterNotFoundFault
Decode ClusterNotFoundFault
Encode ClusterNotFoundFault
```

#### `ClusterQuotaForCustomerExceededFault`

``` purescript
newtype ClusterQuotaForCustomerExceededFault
  = ClusterQuotaForCustomerExceededFault NoArguments
```

<p>You have attempted to exceed the maximum number of DAX clusters for your AWS account.</p>

##### Instances
``` purescript
Newtype ClusterQuotaForCustomerExceededFault _
Generic ClusterQuotaForCustomerExceededFault _
Show ClusterQuotaForCustomerExceededFault
Decode ClusterQuotaForCustomerExceededFault
Encode ClusterQuotaForCustomerExceededFault
```

#### `CreateClusterRequest`

``` purescript
newtype CreateClusterRequest
  = CreateClusterRequest { "ClusterName" :: String, "NodeType" :: String, "Description" :: NullOrUndefined (String), "ReplicationFactor" :: Int, "AvailabilityZones" :: NullOrUndefined (AvailabilityZoneList), "SubnetGroupName" :: NullOrUndefined (String), "SecurityGroupIds" :: NullOrUndefined (SecurityGroupIdentifierList), "PreferredMaintenanceWindow" :: NullOrUndefined (String), "NotificationTopicArn" :: NullOrUndefined (String), "IamRoleArn" :: String, "ParameterGroupName" :: NullOrUndefined (String), "Tags" :: NullOrUndefined (TagList) }
```

##### Instances
``` purescript
Newtype CreateClusterRequest _
Generic CreateClusterRequest _
Show CreateClusterRequest
Decode CreateClusterRequest
Encode CreateClusterRequest
```

#### `newCreateClusterRequest`

``` purescript
newCreateClusterRequest :: String -> String -> String -> Int -> CreateClusterRequest
```

Constructs CreateClusterRequest from required parameters

#### `newCreateClusterRequest'`

``` purescript
newCreateClusterRequest' :: String -> String -> String -> Int -> ({ "ClusterName" :: String, "NodeType" :: String, "Description" :: NullOrUndefined (String), "ReplicationFactor" :: Int, "AvailabilityZones" :: NullOrUndefined (AvailabilityZoneList), "SubnetGroupName" :: NullOrUndefined (String), "SecurityGroupIds" :: NullOrUndefined (SecurityGroupIdentifierList), "PreferredMaintenanceWindow" :: NullOrUndefined (String), "NotificationTopicArn" :: NullOrUndefined (String), "IamRoleArn" :: String, "ParameterGroupName" :: NullOrUndefined (String), "Tags" :: NullOrUndefined (TagList) } -> { "ClusterName" :: String, "NodeType" :: String, "Description" :: NullOrUndefined (String), "ReplicationFactor" :: Int, "AvailabilityZones" :: NullOrUndefined (AvailabilityZoneList), "SubnetGroupName" :: NullOrUndefined (String), "SecurityGroupIds" :: NullOrUndefined (SecurityGroupIdentifierList), "PreferredMaintenanceWindow" :: NullOrUndefined (String), "NotificationTopicArn" :: NullOrUndefined (String), "IamRoleArn" :: String, "ParameterGroupName" :: NullOrUndefined (String), "Tags" :: NullOrUndefined (TagList) }) -> CreateClusterRequest
```

Constructs CreateClusterRequest's fields from required parameters

#### `CreateClusterResponse`

``` purescript
newtype CreateClusterResponse
  = CreateClusterResponse { "Cluster" :: NullOrUndefined (Cluster) }
```

##### Instances
``` purescript
Newtype CreateClusterResponse _
Generic CreateClusterResponse _
Show CreateClusterResponse
Decode CreateClusterResponse
Encode CreateClusterResponse
```

#### `newCreateClusterResponse`

``` purescript
newCreateClusterResponse :: CreateClusterResponse
```

Constructs CreateClusterResponse from required parameters

#### `newCreateClusterResponse'`

``` purescript
newCreateClusterResponse' :: ({ "Cluster" :: NullOrUndefined (Cluster) } -> { "Cluster" :: NullOrUndefined (Cluster) }) -> CreateClusterResponse
```

Constructs CreateClusterResponse's fields from required parameters

#### `CreateParameterGroupRequest`

``` purescript
newtype CreateParameterGroupRequest
  = CreateParameterGroupRequest { "ParameterGroupName" :: String, "Description" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype CreateParameterGroupRequest _
Generic CreateParameterGroupRequest _
Show CreateParameterGroupRequest
Decode CreateParameterGroupRequest
Encode CreateParameterGroupRequest
```

#### `newCreateParameterGroupRequest`

``` purescript
newCreateParameterGroupRequest :: String -> CreateParameterGroupRequest
```

Constructs CreateParameterGroupRequest from required parameters

#### `newCreateParameterGroupRequest'`

``` purescript
newCreateParameterGroupRequest' :: String -> ({ "ParameterGroupName" :: String, "Description" :: NullOrUndefined (String) } -> { "ParameterGroupName" :: String, "Description" :: NullOrUndefined (String) }) -> CreateParameterGroupRequest
```

Constructs CreateParameterGroupRequest's fields from required parameters

#### `CreateParameterGroupResponse`

``` purescript
newtype CreateParameterGroupResponse
  = CreateParameterGroupResponse { "ParameterGroup" :: NullOrUndefined (ParameterGroup) }
```

##### Instances
``` purescript
Newtype CreateParameterGroupResponse _
Generic CreateParameterGroupResponse _
Show CreateParameterGroupResponse
Decode CreateParameterGroupResponse
Encode CreateParameterGroupResponse
```

#### `newCreateParameterGroupResponse`

``` purescript
newCreateParameterGroupResponse :: CreateParameterGroupResponse
```

Constructs CreateParameterGroupResponse from required parameters

#### `newCreateParameterGroupResponse'`

``` purescript
newCreateParameterGroupResponse' :: ({ "ParameterGroup" :: NullOrUndefined (ParameterGroup) } -> { "ParameterGroup" :: NullOrUndefined (ParameterGroup) }) -> CreateParameterGroupResponse
```

Constructs CreateParameterGroupResponse's fields from required parameters

#### `CreateSubnetGroupRequest`

``` purescript
newtype CreateSubnetGroupRequest
  = CreateSubnetGroupRequest { "SubnetGroupName" :: String, "Description" :: NullOrUndefined (String), "SubnetIds" :: SubnetIdentifierList }
```

##### Instances
``` purescript
Newtype CreateSubnetGroupRequest _
Generic CreateSubnetGroupRequest _
Show CreateSubnetGroupRequest
Decode CreateSubnetGroupRequest
Encode CreateSubnetGroupRequest
```

#### `newCreateSubnetGroupRequest`

``` purescript
newCreateSubnetGroupRequest :: String -> SubnetIdentifierList -> CreateSubnetGroupRequest
```

Constructs CreateSubnetGroupRequest from required parameters

#### `newCreateSubnetGroupRequest'`

``` purescript
newCreateSubnetGroupRequest' :: String -> SubnetIdentifierList -> ({ "SubnetGroupName" :: String, "Description" :: NullOrUndefined (String), "SubnetIds" :: SubnetIdentifierList } -> { "SubnetGroupName" :: String, "Description" :: NullOrUndefined (String), "SubnetIds" :: SubnetIdentifierList }) -> CreateSubnetGroupRequest
```

Constructs CreateSubnetGroupRequest's fields from required parameters

#### `CreateSubnetGroupResponse`

``` purescript
newtype CreateSubnetGroupResponse
  = CreateSubnetGroupResponse { "SubnetGroup" :: NullOrUndefined (SubnetGroup) }
```

##### Instances
``` purescript
Newtype CreateSubnetGroupResponse _
Generic CreateSubnetGroupResponse _
Show CreateSubnetGroupResponse
Decode CreateSubnetGroupResponse
Encode CreateSubnetGroupResponse
```

#### `newCreateSubnetGroupResponse`

``` purescript
newCreateSubnetGroupResponse :: CreateSubnetGroupResponse
```

Constructs CreateSubnetGroupResponse from required parameters

#### `newCreateSubnetGroupResponse'`

``` purescript
newCreateSubnetGroupResponse' :: ({ "SubnetGroup" :: NullOrUndefined (SubnetGroup) } -> { "SubnetGroup" :: NullOrUndefined (SubnetGroup) }) -> CreateSubnetGroupResponse
```

Constructs CreateSubnetGroupResponse's fields from required parameters

#### `DecreaseReplicationFactorRequest`

``` purescript
newtype DecreaseReplicationFactorRequest
  = DecreaseReplicationFactorRequest { "ClusterName" :: String, "NewReplicationFactor" :: Int, "AvailabilityZones" :: NullOrUndefined (AvailabilityZoneList), "NodeIdsToRemove" :: NullOrUndefined (NodeIdentifierList) }
```

##### Instances
``` purescript
Newtype DecreaseReplicationFactorRequest _
Generic DecreaseReplicationFactorRequest _
Show DecreaseReplicationFactorRequest
Decode DecreaseReplicationFactorRequest
Encode DecreaseReplicationFactorRequest
```

#### `newDecreaseReplicationFactorRequest`

``` purescript
newDecreaseReplicationFactorRequest :: String -> Int -> DecreaseReplicationFactorRequest
```

Constructs DecreaseReplicationFactorRequest from required parameters

#### `newDecreaseReplicationFactorRequest'`

``` purescript
newDecreaseReplicationFactorRequest' :: String -> Int -> ({ "ClusterName" :: String, "NewReplicationFactor" :: Int, "AvailabilityZones" :: NullOrUndefined (AvailabilityZoneList), "NodeIdsToRemove" :: NullOrUndefined (NodeIdentifierList) } -> { "ClusterName" :: String, "NewReplicationFactor" :: Int, "AvailabilityZones" :: NullOrUndefined (AvailabilityZoneList), "NodeIdsToRemove" :: NullOrUndefined (NodeIdentifierList) }) -> DecreaseReplicationFactorRequest
```

Constructs DecreaseReplicationFactorRequest's fields from required parameters

#### `DecreaseReplicationFactorResponse`

``` purescript
newtype DecreaseReplicationFactorResponse
  = DecreaseReplicationFactorResponse { "Cluster" :: NullOrUndefined (Cluster) }
```

##### Instances
``` purescript
Newtype DecreaseReplicationFactorResponse _
Generic DecreaseReplicationFactorResponse _
Show DecreaseReplicationFactorResponse
Decode DecreaseReplicationFactorResponse
Encode DecreaseReplicationFactorResponse
```

#### `newDecreaseReplicationFactorResponse`

``` purescript
newDecreaseReplicationFactorResponse :: DecreaseReplicationFactorResponse
```

Constructs DecreaseReplicationFactorResponse from required parameters

#### `newDecreaseReplicationFactorResponse'`

``` purescript
newDecreaseReplicationFactorResponse' :: ({ "Cluster" :: NullOrUndefined (Cluster) } -> { "Cluster" :: NullOrUndefined (Cluster) }) -> DecreaseReplicationFactorResponse
```

Constructs DecreaseReplicationFactorResponse's fields from required parameters

#### `DeleteClusterRequest`

``` purescript
newtype DeleteClusterRequest
  = DeleteClusterRequest { "ClusterName" :: String }
```

##### Instances
``` purescript
Newtype DeleteClusterRequest _
Generic DeleteClusterRequest _
Show DeleteClusterRequest
Decode DeleteClusterRequest
Encode DeleteClusterRequest
```

#### `newDeleteClusterRequest`

``` purescript
newDeleteClusterRequest :: String -> DeleteClusterRequest
```

Constructs DeleteClusterRequest from required parameters

#### `newDeleteClusterRequest'`

``` purescript
newDeleteClusterRequest' :: String -> ({ "ClusterName" :: String } -> { "ClusterName" :: String }) -> DeleteClusterRequest
```

Constructs DeleteClusterRequest's fields from required parameters

#### `DeleteClusterResponse`

``` purescript
newtype DeleteClusterResponse
  = DeleteClusterResponse { "Cluster" :: NullOrUndefined (Cluster) }
```

##### Instances
``` purescript
Newtype DeleteClusterResponse _
Generic DeleteClusterResponse _
Show DeleteClusterResponse
Decode DeleteClusterResponse
Encode DeleteClusterResponse
```

#### `newDeleteClusterResponse`

``` purescript
newDeleteClusterResponse :: DeleteClusterResponse
```

Constructs DeleteClusterResponse from required parameters

#### `newDeleteClusterResponse'`

``` purescript
newDeleteClusterResponse' :: ({ "Cluster" :: NullOrUndefined (Cluster) } -> { "Cluster" :: NullOrUndefined (Cluster) }) -> DeleteClusterResponse
```

Constructs DeleteClusterResponse's fields from required parameters

#### `DeleteParameterGroupRequest`

``` purescript
newtype DeleteParameterGroupRequest
  = DeleteParameterGroupRequest { "ParameterGroupName" :: String }
```

##### Instances
``` purescript
Newtype DeleteParameterGroupRequest _
Generic DeleteParameterGroupRequest _
Show DeleteParameterGroupRequest
Decode DeleteParameterGroupRequest
Encode DeleteParameterGroupRequest
```

#### `newDeleteParameterGroupRequest`

``` purescript
newDeleteParameterGroupRequest :: String -> DeleteParameterGroupRequest
```

Constructs DeleteParameterGroupRequest from required parameters

#### `newDeleteParameterGroupRequest'`

``` purescript
newDeleteParameterGroupRequest' :: String -> ({ "ParameterGroupName" :: String } -> { "ParameterGroupName" :: String }) -> DeleteParameterGroupRequest
```

Constructs DeleteParameterGroupRequest's fields from required parameters

#### `DeleteParameterGroupResponse`

``` purescript
newtype DeleteParameterGroupResponse
  = DeleteParameterGroupResponse { "DeletionMessage" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype DeleteParameterGroupResponse _
Generic DeleteParameterGroupResponse _
Show DeleteParameterGroupResponse
Decode DeleteParameterGroupResponse
Encode DeleteParameterGroupResponse
```

#### `newDeleteParameterGroupResponse`

``` purescript
newDeleteParameterGroupResponse :: DeleteParameterGroupResponse
```

Constructs DeleteParameterGroupResponse from required parameters

#### `newDeleteParameterGroupResponse'`

``` purescript
newDeleteParameterGroupResponse' :: ({ "DeletionMessage" :: NullOrUndefined (String) } -> { "DeletionMessage" :: NullOrUndefined (String) }) -> DeleteParameterGroupResponse
```

Constructs DeleteParameterGroupResponse's fields from required parameters

#### `DeleteSubnetGroupRequest`

``` purescript
newtype DeleteSubnetGroupRequest
  = DeleteSubnetGroupRequest { "SubnetGroupName" :: String }
```

##### Instances
``` purescript
Newtype DeleteSubnetGroupRequest _
Generic DeleteSubnetGroupRequest _
Show DeleteSubnetGroupRequest
Decode DeleteSubnetGroupRequest
Encode DeleteSubnetGroupRequest
```

#### `newDeleteSubnetGroupRequest`

``` purescript
newDeleteSubnetGroupRequest :: String -> DeleteSubnetGroupRequest
```

Constructs DeleteSubnetGroupRequest from required parameters

#### `newDeleteSubnetGroupRequest'`

``` purescript
newDeleteSubnetGroupRequest' :: String -> ({ "SubnetGroupName" :: String } -> { "SubnetGroupName" :: String }) -> DeleteSubnetGroupRequest
```

Constructs DeleteSubnetGroupRequest's fields from required parameters

#### `DeleteSubnetGroupResponse`

``` purescript
newtype DeleteSubnetGroupResponse
  = DeleteSubnetGroupResponse { "DeletionMessage" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype DeleteSubnetGroupResponse _
Generic DeleteSubnetGroupResponse _
Show DeleteSubnetGroupResponse
Decode DeleteSubnetGroupResponse
Encode DeleteSubnetGroupResponse
```

#### `newDeleteSubnetGroupResponse`

``` purescript
newDeleteSubnetGroupResponse :: DeleteSubnetGroupResponse
```

Constructs DeleteSubnetGroupResponse from required parameters

#### `newDeleteSubnetGroupResponse'`

``` purescript
newDeleteSubnetGroupResponse' :: ({ "DeletionMessage" :: NullOrUndefined (String) } -> { "DeletionMessage" :: NullOrUndefined (String) }) -> DeleteSubnetGroupResponse
```

Constructs DeleteSubnetGroupResponse's fields from required parameters

#### `DescribeClustersRequest`

``` purescript
newtype DescribeClustersRequest
  = DescribeClustersRequest { "ClusterNames" :: NullOrUndefined (ClusterNameList), "MaxResults" :: NullOrUndefined (IntegerOptional), "NextToken" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype DescribeClustersRequest _
Generic DescribeClustersRequest _
Show DescribeClustersRequest
Decode DescribeClustersRequest
Encode DescribeClustersRequest
```

#### `newDescribeClustersRequest`

``` purescript
newDescribeClustersRequest :: DescribeClustersRequest
```

Constructs DescribeClustersRequest from required parameters

#### `newDescribeClustersRequest'`

``` purescript
newDescribeClustersRequest' :: ({ "ClusterNames" :: NullOrUndefined (ClusterNameList), "MaxResults" :: NullOrUndefined (IntegerOptional), "NextToken" :: NullOrUndefined (String) } -> { "ClusterNames" :: NullOrUndefined (ClusterNameList), "MaxResults" :: NullOrUndefined (IntegerOptional), "NextToken" :: NullOrUndefined (String) }) -> DescribeClustersRequest
```

Constructs DescribeClustersRequest's fields from required parameters

#### `DescribeClustersResponse`

``` purescript
newtype DescribeClustersResponse
  = DescribeClustersResponse { "NextToken" :: NullOrUndefined (String), "Clusters" :: NullOrUndefined (ClusterList) }
```

##### Instances
``` purescript
Newtype DescribeClustersResponse _
Generic DescribeClustersResponse _
Show DescribeClustersResponse
Decode DescribeClustersResponse
Encode DescribeClustersResponse
```

#### `newDescribeClustersResponse`

``` purescript
newDescribeClustersResponse :: DescribeClustersResponse
```

Constructs DescribeClustersResponse from required parameters

#### `newDescribeClustersResponse'`

``` purescript
newDescribeClustersResponse' :: ({ "NextToken" :: NullOrUndefined (String), "Clusters" :: NullOrUndefined (ClusterList) } -> { "NextToken" :: NullOrUndefined (String), "Clusters" :: NullOrUndefined (ClusterList) }) -> DescribeClustersResponse
```

Constructs DescribeClustersResponse's fields from required parameters

#### `DescribeDefaultParametersRequest`

``` purescript
newtype DescribeDefaultParametersRequest
  = DescribeDefaultParametersRequest { "MaxResults" :: NullOrUndefined (IntegerOptional), "NextToken" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype DescribeDefaultParametersRequest _
Generic DescribeDefaultParametersRequest _
Show DescribeDefaultParametersRequest
Decode DescribeDefaultParametersRequest
Encode DescribeDefaultParametersRequest
```

#### `newDescribeDefaultParametersRequest`

``` purescript
newDescribeDefaultParametersRequest :: DescribeDefaultParametersRequest
```

Constructs DescribeDefaultParametersRequest from required parameters

#### `newDescribeDefaultParametersRequest'`

``` purescript
newDescribeDefaultParametersRequest' :: ({ "MaxResults" :: NullOrUndefined (IntegerOptional), "NextToken" :: NullOrUndefined (String) } -> { "MaxResults" :: NullOrUndefined (IntegerOptional), "NextToken" :: NullOrUndefined (String) }) -> DescribeDefaultParametersRequest
```

Constructs DescribeDefaultParametersRequest's fields from required parameters

#### `DescribeDefaultParametersResponse`

``` purescript
newtype DescribeDefaultParametersResponse
  = DescribeDefaultParametersResponse { "NextToken" :: NullOrUndefined (String), "Parameters" :: NullOrUndefined (ParameterList) }
```

##### Instances
``` purescript
Newtype DescribeDefaultParametersResponse _
Generic DescribeDefaultParametersResponse _
Show DescribeDefaultParametersResponse
Decode DescribeDefaultParametersResponse
Encode DescribeDefaultParametersResponse
```

#### `newDescribeDefaultParametersResponse`

``` purescript
newDescribeDefaultParametersResponse :: DescribeDefaultParametersResponse
```

Constructs DescribeDefaultParametersResponse from required parameters

#### `newDescribeDefaultParametersResponse'`

``` purescript
newDescribeDefaultParametersResponse' :: ({ "NextToken" :: NullOrUndefined (String), "Parameters" :: NullOrUndefined (ParameterList) } -> { "NextToken" :: NullOrUndefined (String), "Parameters" :: NullOrUndefined (ParameterList) }) -> DescribeDefaultParametersResponse
```

Constructs DescribeDefaultParametersResponse's fields from required parameters

#### `DescribeEventsRequest`

``` purescript
newtype DescribeEventsRequest
  = DescribeEventsRequest { "SourceName" :: NullOrUndefined (String), "SourceType" :: NullOrUndefined (SourceType), "StartTime" :: NullOrUndefined (TStamp), "EndTime" :: NullOrUndefined (TStamp), "Duration" :: NullOrUndefined (IntegerOptional), "MaxResults" :: NullOrUndefined (IntegerOptional), "NextToken" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype DescribeEventsRequest _
Generic DescribeEventsRequest _
Show DescribeEventsRequest
Decode DescribeEventsRequest
Encode DescribeEventsRequest
```

#### `newDescribeEventsRequest`

``` purescript
newDescribeEventsRequest :: DescribeEventsRequest
```

Constructs DescribeEventsRequest from required parameters

#### `newDescribeEventsRequest'`

``` purescript
newDescribeEventsRequest' :: ({ "SourceName" :: NullOrUndefined (String), "SourceType" :: NullOrUndefined (SourceType), "StartTime" :: NullOrUndefined (TStamp), "EndTime" :: NullOrUndefined (TStamp), "Duration" :: NullOrUndefined (IntegerOptional), "MaxResults" :: NullOrUndefined (IntegerOptional), "NextToken" :: NullOrUndefined (String) } -> { "SourceName" :: NullOrUndefined (String), "SourceType" :: NullOrUndefined (SourceType), "StartTime" :: NullOrUndefined (TStamp), "EndTime" :: NullOrUndefined (TStamp), "Duration" :: NullOrUndefined (IntegerOptional), "MaxResults" :: NullOrUndefined (IntegerOptional), "NextToken" :: NullOrUndefined (String) }) -> DescribeEventsRequest
```

Constructs DescribeEventsRequest's fields from required parameters

#### `DescribeEventsResponse`

``` purescript
newtype DescribeEventsResponse
  = DescribeEventsResponse { "NextToken" :: NullOrUndefined (String), "Events" :: NullOrUndefined (EventList) }
```

##### Instances
``` purescript
Newtype DescribeEventsResponse _
Generic DescribeEventsResponse _
Show DescribeEventsResponse
Decode DescribeEventsResponse
Encode DescribeEventsResponse
```

#### `newDescribeEventsResponse`

``` purescript
newDescribeEventsResponse :: DescribeEventsResponse
```

Constructs DescribeEventsResponse from required parameters

#### `newDescribeEventsResponse'`

``` purescript
newDescribeEventsResponse' :: ({ "NextToken" :: NullOrUndefined (String), "Events" :: NullOrUndefined (EventList) } -> { "NextToken" :: NullOrUndefined (String), "Events" :: NullOrUndefined (EventList) }) -> DescribeEventsResponse
```

Constructs DescribeEventsResponse's fields from required parameters

#### `DescribeParameterGroupsRequest`

``` purescript
newtype DescribeParameterGroupsRequest
  = DescribeParameterGroupsRequest { "ParameterGroupNames" :: NullOrUndefined (ParameterGroupNameList), "MaxResults" :: NullOrUndefined (IntegerOptional), "NextToken" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype DescribeParameterGroupsRequest _
Generic DescribeParameterGroupsRequest _
Show DescribeParameterGroupsRequest
Decode DescribeParameterGroupsRequest
Encode DescribeParameterGroupsRequest
```

#### `newDescribeParameterGroupsRequest`

``` purescript
newDescribeParameterGroupsRequest :: DescribeParameterGroupsRequest
```

Constructs DescribeParameterGroupsRequest from required parameters

#### `newDescribeParameterGroupsRequest'`

``` purescript
newDescribeParameterGroupsRequest' :: ({ "ParameterGroupNames" :: NullOrUndefined (ParameterGroupNameList), "MaxResults" :: NullOrUndefined (IntegerOptional), "NextToken" :: NullOrUndefined (String) } -> { "ParameterGroupNames" :: NullOrUndefined (ParameterGroupNameList), "MaxResults" :: NullOrUndefined (IntegerOptional), "NextToken" :: NullOrUndefined (String) }) -> DescribeParameterGroupsRequest
```

Constructs DescribeParameterGroupsRequest's fields from required parameters

#### `DescribeParameterGroupsResponse`

``` purescript
newtype DescribeParameterGroupsResponse
  = DescribeParameterGroupsResponse { "NextToken" :: NullOrUndefined (String), "ParameterGroups" :: NullOrUndefined (ParameterGroupList) }
```

##### Instances
``` purescript
Newtype DescribeParameterGroupsResponse _
Generic DescribeParameterGroupsResponse _
Show DescribeParameterGroupsResponse
Decode DescribeParameterGroupsResponse
Encode DescribeParameterGroupsResponse
```

#### `newDescribeParameterGroupsResponse`

``` purescript
newDescribeParameterGroupsResponse :: DescribeParameterGroupsResponse
```

Constructs DescribeParameterGroupsResponse from required parameters

#### `newDescribeParameterGroupsResponse'`

``` purescript
newDescribeParameterGroupsResponse' :: ({ "NextToken" :: NullOrUndefined (String), "ParameterGroups" :: NullOrUndefined (ParameterGroupList) } -> { "NextToken" :: NullOrUndefined (String), "ParameterGroups" :: NullOrUndefined (ParameterGroupList) }) -> DescribeParameterGroupsResponse
```

Constructs DescribeParameterGroupsResponse's fields from required parameters

#### `DescribeParametersRequest`

``` purescript
newtype DescribeParametersRequest
  = DescribeParametersRequest { "ParameterGroupName" :: String, "Source" :: NullOrUndefined (String), "MaxResults" :: NullOrUndefined (IntegerOptional), "NextToken" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype DescribeParametersRequest _
Generic DescribeParametersRequest _
Show DescribeParametersRequest
Decode DescribeParametersRequest
Encode DescribeParametersRequest
```

#### `newDescribeParametersRequest`

``` purescript
newDescribeParametersRequest :: String -> DescribeParametersRequest
```

Constructs DescribeParametersRequest from required parameters

#### `newDescribeParametersRequest'`

``` purescript
newDescribeParametersRequest' :: String -> ({ "ParameterGroupName" :: String, "Source" :: NullOrUndefined (String), "MaxResults" :: NullOrUndefined (IntegerOptional), "NextToken" :: NullOrUndefined (String) } -> { "ParameterGroupName" :: String, "Source" :: NullOrUndefined (String), "MaxResults" :: NullOrUndefined (IntegerOptional), "NextToken" :: NullOrUndefined (String) }) -> DescribeParametersRequest
```

Constructs DescribeParametersRequest's fields from required parameters

#### `DescribeParametersResponse`

``` purescript
newtype DescribeParametersResponse
  = DescribeParametersResponse { "NextToken" :: NullOrUndefined (String), "Parameters" :: NullOrUndefined (ParameterList) }
```

##### Instances
``` purescript
Newtype DescribeParametersResponse _
Generic DescribeParametersResponse _
Show DescribeParametersResponse
Decode DescribeParametersResponse
Encode DescribeParametersResponse
```

#### `newDescribeParametersResponse`

``` purescript
newDescribeParametersResponse :: DescribeParametersResponse
```

Constructs DescribeParametersResponse from required parameters

#### `newDescribeParametersResponse'`

``` purescript
newDescribeParametersResponse' :: ({ "NextToken" :: NullOrUndefined (String), "Parameters" :: NullOrUndefined (ParameterList) } -> { "NextToken" :: NullOrUndefined (String), "Parameters" :: NullOrUndefined (ParameterList) }) -> DescribeParametersResponse
```

Constructs DescribeParametersResponse's fields from required parameters

#### `DescribeSubnetGroupsRequest`

``` purescript
newtype DescribeSubnetGroupsRequest
  = DescribeSubnetGroupsRequest { "SubnetGroupNames" :: NullOrUndefined (SubnetGroupNameList), "MaxResults" :: NullOrUndefined (IntegerOptional), "NextToken" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype DescribeSubnetGroupsRequest _
Generic DescribeSubnetGroupsRequest _
Show DescribeSubnetGroupsRequest
Decode DescribeSubnetGroupsRequest
Encode DescribeSubnetGroupsRequest
```

#### `newDescribeSubnetGroupsRequest`

``` purescript
newDescribeSubnetGroupsRequest :: DescribeSubnetGroupsRequest
```

Constructs DescribeSubnetGroupsRequest from required parameters

#### `newDescribeSubnetGroupsRequest'`

``` purescript
newDescribeSubnetGroupsRequest' :: ({ "SubnetGroupNames" :: NullOrUndefined (SubnetGroupNameList), "MaxResults" :: NullOrUndefined (IntegerOptional), "NextToken" :: NullOrUndefined (String) } -> { "SubnetGroupNames" :: NullOrUndefined (SubnetGroupNameList), "MaxResults" :: NullOrUndefined (IntegerOptional), "NextToken" :: NullOrUndefined (String) }) -> DescribeSubnetGroupsRequest
```

Constructs DescribeSubnetGroupsRequest's fields from required parameters

#### `DescribeSubnetGroupsResponse`

``` purescript
newtype DescribeSubnetGroupsResponse
  = DescribeSubnetGroupsResponse { "NextToken" :: NullOrUndefined (String), "SubnetGroups" :: NullOrUndefined (SubnetGroupList) }
```

##### Instances
``` purescript
Newtype DescribeSubnetGroupsResponse _
Generic DescribeSubnetGroupsResponse _
Show DescribeSubnetGroupsResponse
Decode DescribeSubnetGroupsResponse
Encode DescribeSubnetGroupsResponse
```

#### `newDescribeSubnetGroupsResponse`

``` purescript
newDescribeSubnetGroupsResponse :: DescribeSubnetGroupsResponse
```

Constructs DescribeSubnetGroupsResponse from required parameters

#### `newDescribeSubnetGroupsResponse'`

``` purescript
newDescribeSubnetGroupsResponse' :: ({ "NextToken" :: NullOrUndefined (String), "SubnetGroups" :: NullOrUndefined (SubnetGroupList) } -> { "NextToken" :: NullOrUndefined (String), "SubnetGroups" :: NullOrUndefined (SubnetGroupList) }) -> DescribeSubnetGroupsResponse
```

Constructs DescribeSubnetGroupsResponse's fields from required parameters

#### `Endpoint`

``` purescript
newtype Endpoint
  = Endpoint { "Address" :: NullOrUndefined (String), "Port" :: NullOrUndefined (Int) }
```

<p>Represents the information required for client programs to connect to the configuration endpoint for a DAX cluster, or to an individual node within the cluster.</p>

##### Instances
``` purescript
Newtype Endpoint _
Generic Endpoint _
Show Endpoint
Decode Endpoint
Encode Endpoint
```

#### `newEndpoint`

``` purescript
newEndpoint :: Endpoint
```

Constructs Endpoint from required parameters

#### `newEndpoint'`

``` purescript
newEndpoint' :: ({ "Address" :: NullOrUndefined (String), "Port" :: NullOrUndefined (Int) } -> { "Address" :: NullOrUndefined (String), "Port" :: NullOrUndefined (Int) }) -> Endpoint
```

Constructs Endpoint's fields from required parameters

#### `Event`

``` purescript
newtype Event
  = Event { "SourceName" :: NullOrUndefined (String), "SourceType" :: NullOrUndefined (SourceType), "Message" :: NullOrUndefined (String), "Date" :: NullOrUndefined (TStamp) }
```

<p>Represents a single occurrence of something interesting within the system. Some examples of events are creating a DAX cluster, adding or removing a node, or rebooting a node.</p>

##### Instances
``` purescript
Newtype Event _
Generic Event _
Show Event
Decode Event
Encode Event
```

#### `newEvent`

``` purescript
newEvent :: Event
```

Constructs Event from required parameters

#### `newEvent'`

``` purescript
newEvent' :: ({ "SourceName" :: NullOrUndefined (String), "SourceType" :: NullOrUndefined (SourceType), "Message" :: NullOrUndefined (String), "Date" :: NullOrUndefined (TStamp) } -> { "SourceName" :: NullOrUndefined (String), "SourceType" :: NullOrUndefined (SourceType), "Message" :: NullOrUndefined (String), "Date" :: NullOrUndefined (TStamp) }) -> Event
```

Constructs Event's fields from required parameters

#### `EventList`

``` purescript
newtype EventList
  = EventList (Array Event)
```

##### Instances
``` purescript
Newtype EventList _
Generic EventList _
Show EventList
Decode EventList
Encode EventList
```

#### `IncreaseReplicationFactorRequest`

``` purescript
newtype IncreaseReplicationFactorRequest
  = IncreaseReplicationFactorRequest { "ClusterName" :: String, "NewReplicationFactor" :: Int, "AvailabilityZones" :: NullOrUndefined (AvailabilityZoneList) }
```

##### Instances
``` purescript
Newtype IncreaseReplicationFactorRequest _
Generic IncreaseReplicationFactorRequest _
Show IncreaseReplicationFactorRequest
Decode IncreaseReplicationFactorRequest
Encode IncreaseReplicationFactorRequest
```

#### `newIncreaseReplicationFactorRequest`

``` purescript
newIncreaseReplicationFactorRequest :: String -> Int -> IncreaseReplicationFactorRequest
```

Constructs IncreaseReplicationFactorRequest from required parameters

#### `newIncreaseReplicationFactorRequest'`

``` purescript
newIncreaseReplicationFactorRequest' :: String -> Int -> ({ "ClusterName" :: String, "NewReplicationFactor" :: Int, "AvailabilityZones" :: NullOrUndefined (AvailabilityZoneList) } -> { "ClusterName" :: String, "NewReplicationFactor" :: Int, "AvailabilityZones" :: NullOrUndefined (AvailabilityZoneList) }) -> IncreaseReplicationFactorRequest
```

Constructs IncreaseReplicationFactorRequest's fields from required parameters

#### `IncreaseReplicationFactorResponse`

``` purescript
newtype IncreaseReplicationFactorResponse
  = IncreaseReplicationFactorResponse { "Cluster" :: NullOrUndefined (Cluster) }
```

##### Instances
``` purescript
Newtype IncreaseReplicationFactorResponse _
Generic IncreaseReplicationFactorResponse _
Show IncreaseReplicationFactorResponse
Decode IncreaseReplicationFactorResponse
Encode IncreaseReplicationFactorResponse
```

#### `newIncreaseReplicationFactorResponse`

``` purescript
newIncreaseReplicationFactorResponse :: IncreaseReplicationFactorResponse
```

Constructs IncreaseReplicationFactorResponse from required parameters

#### `newIncreaseReplicationFactorResponse'`

``` purescript
newIncreaseReplicationFactorResponse' :: ({ "Cluster" :: NullOrUndefined (Cluster) } -> { "Cluster" :: NullOrUndefined (Cluster) }) -> IncreaseReplicationFactorResponse
```

Constructs IncreaseReplicationFactorResponse's fields from required parameters

#### `InsufficientClusterCapacityFault`

``` purescript
newtype InsufficientClusterCapacityFault
  = InsufficientClusterCapacityFault NoArguments
```

<p>There are not enough system resources to create the cluster you requested (or to resize an already-existing cluster). </p>

##### Instances
``` purescript
Newtype InsufficientClusterCapacityFault _
Generic InsufficientClusterCapacityFault _
Show InsufficientClusterCapacityFault
Decode InsufficientClusterCapacityFault
Encode InsufficientClusterCapacityFault
```

#### `IntegerOptional`

``` purescript
newtype IntegerOptional
  = IntegerOptional Int
```

##### Instances
``` purescript
Newtype IntegerOptional _
Generic IntegerOptional _
Show IntegerOptional
Decode IntegerOptional
Encode IntegerOptional
```

#### `InvalidARNFault`

``` purescript
newtype InvalidARNFault
  = InvalidARNFault NoArguments
```

<p>The Amazon Resource Name (ARN) supplied in the request is not valid.</p>

##### Instances
``` purescript
Newtype InvalidARNFault _
Generic InvalidARNFault _
Show InvalidARNFault
Decode InvalidARNFault
Encode InvalidARNFault
```

#### `InvalidClusterStateFault`

``` purescript
newtype InvalidClusterStateFault
  = InvalidClusterStateFault NoArguments
```

<p>The requested DAX cluster is not in the <i>available</i> state.</p>

##### Instances
``` purescript
Newtype InvalidClusterStateFault _
Generic InvalidClusterStateFault _
Show InvalidClusterStateFault
Decode InvalidClusterStateFault
Encode InvalidClusterStateFault
```

#### `InvalidParameterCombinationException`

``` purescript
newtype InvalidParameterCombinationException
  = InvalidParameterCombinationException { message :: NullOrUndefined (AwsQueryErrorMessage) }
```

<p>Two or more incompatible parameters were specified.</p>

##### Instances
``` purescript
Newtype InvalidParameterCombinationException _
Generic InvalidParameterCombinationException _
Show InvalidParameterCombinationException
Decode InvalidParameterCombinationException
Encode InvalidParameterCombinationException
```

#### `newInvalidParameterCombinationException`

``` purescript
newInvalidParameterCombinationException :: InvalidParameterCombinationException
```

Constructs InvalidParameterCombinationException from required parameters

#### `newInvalidParameterCombinationException'`

``` purescript
newInvalidParameterCombinationException' :: ({ message :: NullOrUndefined (AwsQueryErrorMessage) } -> { message :: NullOrUndefined (AwsQueryErrorMessage) }) -> InvalidParameterCombinationException
```

Constructs InvalidParameterCombinationException's fields from required parameters

#### `InvalidParameterGroupStateFault`

``` purescript
newtype InvalidParameterGroupStateFault
  = InvalidParameterGroupStateFault NoArguments
```

<p>One or more parameters in a parameter group are in an invalid state.</p>

##### Instances
``` purescript
Newtype InvalidParameterGroupStateFault _
Generic InvalidParameterGroupStateFault _
Show InvalidParameterGroupStateFault
Decode InvalidParameterGroupStateFault
Encode InvalidParameterGroupStateFault
```

#### `InvalidParameterValueException`

``` purescript
newtype InvalidParameterValueException
  = InvalidParameterValueException { message :: NullOrUndefined (AwsQueryErrorMessage) }
```

<p>The value for a parameter is invalid.</p>

##### Instances
``` purescript
Newtype InvalidParameterValueException _
Generic InvalidParameterValueException _
Show InvalidParameterValueException
Decode InvalidParameterValueException
Encode InvalidParameterValueException
```

#### `newInvalidParameterValueException`

``` purescript
newInvalidParameterValueException :: InvalidParameterValueException
```

Constructs InvalidParameterValueException from required parameters

#### `newInvalidParameterValueException'`

``` purescript
newInvalidParameterValueException' :: ({ message :: NullOrUndefined (AwsQueryErrorMessage) } -> { message :: NullOrUndefined (AwsQueryErrorMessage) }) -> InvalidParameterValueException
```

Constructs InvalidParameterValueException's fields from required parameters

#### `InvalidSubnet`

``` purescript
newtype InvalidSubnet
  = InvalidSubnet NoArguments
```

<p>An invalid subnet identifier was specified.</p>

##### Instances
``` purescript
Newtype InvalidSubnet _
Generic InvalidSubnet _
Show InvalidSubnet
Decode InvalidSubnet
Encode InvalidSubnet
```

#### `InvalidVPCNetworkStateFault`

``` purescript
newtype InvalidVPCNetworkStateFault
  = InvalidVPCNetworkStateFault NoArguments
```

<p>The VPC network is in an invalid state.</p>

##### Instances
``` purescript
Newtype InvalidVPCNetworkStateFault _
Generic InvalidVPCNetworkStateFault _
Show InvalidVPCNetworkStateFault
Decode InvalidVPCNetworkStateFault
Encode InvalidVPCNetworkStateFault
```

#### `IsModifiable`

``` purescript
newtype IsModifiable
  = IsModifiable String
```

##### Instances
``` purescript
Newtype IsModifiable _
Generic IsModifiable _
Show IsModifiable
Decode IsModifiable
Encode IsModifiable
```

#### `KeyList`

``` purescript
newtype KeyList
  = KeyList (Array String)
```

##### Instances
``` purescript
Newtype KeyList _
Generic KeyList _
Show KeyList
Decode KeyList
Encode KeyList
```

#### `ListTagsRequest`

``` purescript
newtype ListTagsRequest
  = ListTagsRequest { "ResourceName" :: String, "NextToken" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype ListTagsRequest _
Generic ListTagsRequest _
Show ListTagsRequest
Decode ListTagsRequest
Encode ListTagsRequest
```

#### `newListTagsRequest`

``` purescript
newListTagsRequest :: String -> ListTagsRequest
```

Constructs ListTagsRequest from required parameters

#### `newListTagsRequest'`

``` purescript
newListTagsRequest' :: String -> ({ "ResourceName" :: String, "NextToken" :: NullOrUndefined (String) } -> { "ResourceName" :: String, "NextToken" :: NullOrUndefined (String) }) -> ListTagsRequest
```

Constructs ListTagsRequest's fields from required parameters

#### `ListTagsResponse`

``` purescript
newtype ListTagsResponse
  = ListTagsResponse { "Tags" :: NullOrUndefined (TagList), "NextToken" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype ListTagsResponse _
Generic ListTagsResponse _
Show ListTagsResponse
Decode ListTagsResponse
Encode ListTagsResponse
```

#### `newListTagsResponse`

``` purescript
newListTagsResponse :: ListTagsResponse
```

Constructs ListTagsResponse from required parameters

#### `newListTagsResponse'`

``` purescript
newListTagsResponse' :: ({ "Tags" :: NullOrUndefined (TagList), "NextToken" :: NullOrUndefined (String) } -> { "Tags" :: NullOrUndefined (TagList), "NextToken" :: NullOrUndefined (String) }) -> ListTagsResponse
```

Constructs ListTagsResponse's fields from required parameters

#### `Node`

``` purescript
newtype Node
  = Node { "NodeId" :: NullOrUndefined (String), "Endpoint" :: NullOrUndefined (Endpoint), "NodeCreateTime" :: NullOrUndefined (TStamp), "AvailabilityZone" :: NullOrUndefined (String), "NodeStatus" :: NullOrUndefined (String), "ParameterGroupStatus" :: NullOrUndefined (String) }
```

<p>Represents an individual node within a DAX cluster.</p>

##### Instances
``` purescript
Newtype Node _
Generic Node _
Show Node
Decode Node
Encode Node
```

#### `newNode`

``` purescript
newNode :: Node
```

Constructs Node from required parameters

#### `newNode'`

``` purescript
newNode' :: ({ "NodeId" :: NullOrUndefined (String), "Endpoint" :: NullOrUndefined (Endpoint), "NodeCreateTime" :: NullOrUndefined (TStamp), "AvailabilityZone" :: NullOrUndefined (String), "NodeStatus" :: NullOrUndefined (String), "ParameterGroupStatus" :: NullOrUndefined (String) } -> { "NodeId" :: NullOrUndefined (String), "Endpoint" :: NullOrUndefined (Endpoint), "NodeCreateTime" :: NullOrUndefined (TStamp), "AvailabilityZone" :: NullOrUndefined (String), "NodeStatus" :: NullOrUndefined (String), "ParameterGroupStatus" :: NullOrUndefined (String) }) -> Node
```

Constructs Node's fields from required parameters

#### `NodeIdentifierList`

``` purescript
newtype NodeIdentifierList
  = NodeIdentifierList (Array String)
```

##### Instances
``` purescript
Newtype NodeIdentifierList _
Generic NodeIdentifierList _
Show NodeIdentifierList
Decode NodeIdentifierList
Encode NodeIdentifierList
```

#### `NodeList`

``` purescript
newtype NodeList
  = NodeList (Array Node)
```

##### Instances
``` purescript
Newtype NodeList _
Generic NodeList _
Show NodeList
Decode NodeList
Encode NodeList
```

#### `NodeNotFoundFault`

``` purescript
newtype NodeNotFoundFault
  = NodeNotFoundFault NoArguments
```

<p>None of the nodes in the cluster have the given node ID.</p>

##### Instances
``` purescript
Newtype NodeNotFoundFault _
Generic NodeNotFoundFault _
Show NodeNotFoundFault
Decode NodeNotFoundFault
Encode NodeNotFoundFault
```

#### `NodeQuotaForClusterExceededFault`

``` purescript
newtype NodeQuotaForClusterExceededFault
  = NodeQuotaForClusterExceededFault NoArguments
```

<p>You have attempted to exceed the maximum number of nodes for a DAX cluster.</p>

##### Instances
``` purescript
Newtype NodeQuotaForClusterExceededFault _
Generic NodeQuotaForClusterExceededFault _
Show NodeQuotaForClusterExceededFault
Decode NodeQuotaForClusterExceededFault
Encode NodeQuotaForClusterExceededFault
```

#### `NodeQuotaForCustomerExceededFault`

``` purescript
newtype NodeQuotaForCustomerExceededFault
  = NodeQuotaForCustomerExceededFault NoArguments
```

<p>You have attempted to exceed the maximum number of nodes for your AWS account.</p>

##### Instances
``` purescript
Newtype NodeQuotaForCustomerExceededFault _
Generic NodeQuotaForCustomerExceededFault _
Show NodeQuotaForCustomerExceededFault
Decode NodeQuotaForCustomerExceededFault
Encode NodeQuotaForCustomerExceededFault
```

#### `NodeTypeSpecificValue`

``` purescript
newtype NodeTypeSpecificValue
  = NodeTypeSpecificValue { "NodeType" :: NullOrUndefined (String), "Value" :: NullOrUndefined (String) }
```

<p>Represents a parameter value that is applicable to a particular node type.</p>

##### Instances
``` purescript
Newtype NodeTypeSpecificValue _
Generic NodeTypeSpecificValue _
Show NodeTypeSpecificValue
Decode NodeTypeSpecificValue
Encode NodeTypeSpecificValue
```

#### `newNodeTypeSpecificValue`

``` purescript
newNodeTypeSpecificValue :: NodeTypeSpecificValue
```

Constructs NodeTypeSpecificValue from required parameters

#### `newNodeTypeSpecificValue'`

``` purescript
newNodeTypeSpecificValue' :: ({ "NodeType" :: NullOrUndefined (String), "Value" :: NullOrUndefined (String) } -> { "NodeType" :: NullOrUndefined (String), "Value" :: NullOrUndefined (String) }) -> NodeTypeSpecificValue
```

Constructs NodeTypeSpecificValue's fields from required parameters

#### `NodeTypeSpecificValueList`

``` purescript
newtype NodeTypeSpecificValueList
  = NodeTypeSpecificValueList (Array NodeTypeSpecificValue)
```

##### Instances
``` purescript
Newtype NodeTypeSpecificValueList _
Generic NodeTypeSpecificValueList _
Show NodeTypeSpecificValueList
Decode NodeTypeSpecificValueList
Encode NodeTypeSpecificValueList
```

#### `NotificationConfiguration`

``` purescript
newtype NotificationConfiguration
  = NotificationConfiguration { "TopicArn" :: NullOrUndefined (String), "TopicStatus" :: NullOrUndefined (String) }
```

<p>Describes a notification topic and its status. Notification topics are used for publishing DAX events to subscribers using Amazon Simple Notification Service (SNS).</p>

##### Instances
``` purescript
Newtype NotificationConfiguration _
Generic NotificationConfiguration _
Show NotificationConfiguration
Decode NotificationConfiguration
Encode NotificationConfiguration
```

#### `newNotificationConfiguration`

``` purescript
newNotificationConfiguration :: NotificationConfiguration
```

Constructs NotificationConfiguration from required parameters

#### `newNotificationConfiguration'`

``` purescript
newNotificationConfiguration' :: ({ "TopicArn" :: NullOrUndefined (String), "TopicStatus" :: NullOrUndefined (String) } -> { "TopicArn" :: NullOrUndefined (String), "TopicStatus" :: NullOrUndefined (String) }) -> NotificationConfiguration
```

Constructs NotificationConfiguration's fields from required parameters

#### `Parameter`

``` purescript
newtype Parameter
  = Parameter { "ParameterName" :: NullOrUndefined (String), "ParameterType" :: NullOrUndefined (ParameterType), "ParameterValue" :: NullOrUndefined (String), "NodeTypeSpecificValues" :: NullOrUndefined (NodeTypeSpecificValueList), "Description" :: NullOrUndefined (String), "Source" :: NullOrUndefined (String), "DataType" :: NullOrUndefined (String), "AllowedValues" :: NullOrUndefined (String), "IsModifiable" :: NullOrUndefined (IsModifiable), "ChangeType" :: NullOrUndefined (ChangeType) }
```

<p>Describes an individual setting that controls some aspect of DAX behavior.</p>

##### Instances
``` purescript
Newtype Parameter _
Generic Parameter _
Show Parameter
Decode Parameter
Encode Parameter
```

#### `newParameter`

``` purescript
newParameter :: Parameter
```

Constructs Parameter from required parameters

#### `newParameter'`

``` purescript
newParameter' :: ({ "ParameterName" :: NullOrUndefined (String), "ParameterType" :: NullOrUndefined (ParameterType), "ParameterValue" :: NullOrUndefined (String), "NodeTypeSpecificValues" :: NullOrUndefined (NodeTypeSpecificValueList), "Description" :: NullOrUndefined (String), "Source" :: NullOrUndefined (String), "DataType" :: NullOrUndefined (String), "AllowedValues" :: NullOrUndefined (String), "IsModifiable" :: NullOrUndefined (IsModifiable), "ChangeType" :: NullOrUndefined (ChangeType) } -> { "ParameterName" :: NullOrUndefined (String), "ParameterType" :: NullOrUndefined (ParameterType), "ParameterValue" :: NullOrUndefined (String), "NodeTypeSpecificValues" :: NullOrUndefined (NodeTypeSpecificValueList), "Description" :: NullOrUndefined (String), "Source" :: NullOrUndefined (String), "DataType" :: NullOrUndefined (String), "AllowedValues" :: NullOrUndefined (String), "IsModifiable" :: NullOrUndefined (IsModifiable), "ChangeType" :: NullOrUndefined (ChangeType) }) -> Parameter
```

Constructs Parameter's fields from required parameters

#### `ParameterGroup`

``` purescript
newtype ParameterGroup
  = ParameterGroup { "ParameterGroupName" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String) }
```

<p>A named set of parameters that are applied to all of the nodes in a DAX cluster.</p>

##### Instances
``` purescript
Newtype ParameterGroup _
Generic ParameterGroup _
Show ParameterGroup
Decode ParameterGroup
Encode ParameterGroup
```

#### `newParameterGroup`

``` purescript
newParameterGroup :: ParameterGroup
```

Constructs ParameterGroup from required parameters

#### `newParameterGroup'`

``` purescript
newParameterGroup' :: ({ "ParameterGroupName" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String) } -> { "ParameterGroupName" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String) }) -> ParameterGroup
```

Constructs ParameterGroup's fields from required parameters

#### `ParameterGroupAlreadyExistsFault`

``` purescript
newtype ParameterGroupAlreadyExistsFault
  = ParameterGroupAlreadyExistsFault NoArguments
```

<p>The specified parameter group already exists.</p>

##### Instances
``` purescript
Newtype ParameterGroupAlreadyExistsFault _
Generic ParameterGroupAlreadyExistsFault _
Show ParameterGroupAlreadyExistsFault
Decode ParameterGroupAlreadyExistsFault
Encode ParameterGroupAlreadyExistsFault
```

#### `ParameterGroupList`

``` purescript
newtype ParameterGroupList
  = ParameterGroupList (Array ParameterGroup)
```

##### Instances
``` purescript
Newtype ParameterGroupList _
Generic ParameterGroupList _
Show ParameterGroupList
Decode ParameterGroupList
Encode ParameterGroupList
```

#### `ParameterGroupNameList`

``` purescript
newtype ParameterGroupNameList
  = ParameterGroupNameList (Array String)
```

##### Instances
``` purescript
Newtype ParameterGroupNameList _
Generic ParameterGroupNameList _
Show ParameterGroupNameList
Decode ParameterGroupNameList
Encode ParameterGroupNameList
```

#### `ParameterGroupNotFoundFault`

``` purescript
newtype ParameterGroupNotFoundFault
  = ParameterGroupNotFoundFault NoArguments
```

<p>The specified parameter group does not exist.</p>

##### Instances
``` purescript
Newtype ParameterGroupNotFoundFault _
Generic ParameterGroupNotFoundFault _
Show ParameterGroupNotFoundFault
Decode ParameterGroupNotFoundFault
Encode ParameterGroupNotFoundFault
```

#### `ParameterGroupQuotaExceededFault`

``` purescript
newtype ParameterGroupQuotaExceededFault
  = ParameterGroupQuotaExceededFault NoArguments
```

<p>You have attempted to exceed the maximum number of parameter groups.</p>

##### Instances
``` purescript
Newtype ParameterGroupQuotaExceededFault _
Generic ParameterGroupQuotaExceededFault _
Show ParameterGroupQuotaExceededFault
Decode ParameterGroupQuotaExceededFault
Encode ParameterGroupQuotaExceededFault
```

#### `ParameterGroupStatus`

``` purescript
newtype ParameterGroupStatus
  = ParameterGroupStatus { "ParameterGroupName" :: NullOrUndefined (String), "ParameterApplyStatus" :: NullOrUndefined (String), "NodeIdsToReboot" :: NullOrUndefined (NodeIdentifierList) }
```

<p>The status of a parameter group.</p>

##### Instances
``` purescript
Newtype ParameterGroupStatus _
Generic ParameterGroupStatus _
Show ParameterGroupStatus
Decode ParameterGroupStatus
Encode ParameterGroupStatus
```

#### `newParameterGroupStatus`

``` purescript
newParameterGroupStatus :: ParameterGroupStatus
```

Constructs ParameterGroupStatus from required parameters

#### `newParameterGroupStatus'`

``` purescript
newParameterGroupStatus' :: ({ "ParameterGroupName" :: NullOrUndefined (String), "ParameterApplyStatus" :: NullOrUndefined (String), "NodeIdsToReboot" :: NullOrUndefined (NodeIdentifierList) } -> { "ParameterGroupName" :: NullOrUndefined (String), "ParameterApplyStatus" :: NullOrUndefined (String), "NodeIdsToReboot" :: NullOrUndefined (NodeIdentifierList) }) -> ParameterGroupStatus
```

Constructs ParameterGroupStatus's fields from required parameters

#### `ParameterList`

``` purescript
newtype ParameterList
  = ParameterList (Array Parameter)
```

##### Instances
``` purescript
Newtype ParameterList _
Generic ParameterList _
Show ParameterList
Decode ParameterList
Encode ParameterList
```

#### `ParameterNameValue`

``` purescript
newtype ParameterNameValue
  = ParameterNameValue { "ParameterName" :: NullOrUndefined (String), "ParameterValue" :: NullOrUndefined (String) }
```

<p>An individual DAX parameter.</p>

##### Instances
``` purescript
Newtype ParameterNameValue _
Generic ParameterNameValue _
Show ParameterNameValue
Decode ParameterNameValue
Encode ParameterNameValue
```

#### `newParameterNameValue`

``` purescript
newParameterNameValue :: ParameterNameValue
```

Constructs ParameterNameValue from required parameters

#### `newParameterNameValue'`

``` purescript
newParameterNameValue' :: ({ "ParameterName" :: NullOrUndefined (String), "ParameterValue" :: NullOrUndefined (String) } -> { "ParameterName" :: NullOrUndefined (String), "ParameterValue" :: NullOrUndefined (String) }) -> ParameterNameValue
```

Constructs ParameterNameValue's fields from required parameters

#### `ParameterNameValueList`

``` purescript
newtype ParameterNameValueList
  = ParameterNameValueList (Array ParameterNameValue)
```

##### Instances
``` purescript
Newtype ParameterNameValueList _
Generic ParameterNameValueList _
Show ParameterNameValueList
Decode ParameterNameValueList
Encode ParameterNameValueList
```

#### `ParameterType`

``` purescript
newtype ParameterType
  = ParameterType String
```

##### Instances
``` purescript
Newtype ParameterType _
Generic ParameterType _
Show ParameterType
Decode ParameterType
Encode ParameterType
```

#### `RebootNodeRequest`

``` purescript
newtype RebootNodeRequest
  = RebootNodeRequest { "ClusterName" :: String, "NodeId" :: String }
```

##### Instances
``` purescript
Newtype RebootNodeRequest _
Generic RebootNodeRequest _
Show RebootNodeRequest
Decode RebootNodeRequest
Encode RebootNodeRequest
```

#### `newRebootNodeRequest`

``` purescript
newRebootNodeRequest :: String -> String -> RebootNodeRequest
```

Constructs RebootNodeRequest from required parameters

#### `newRebootNodeRequest'`

``` purescript
newRebootNodeRequest' :: String -> String -> ({ "ClusterName" :: String, "NodeId" :: String } -> { "ClusterName" :: String, "NodeId" :: String }) -> RebootNodeRequest
```

Constructs RebootNodeRequest's fields from required parameters

#### `RebootNodeResponse`

``` purescript
newtype RebootNodeResponse
  = RebootNodeResponse { "Cluster" :: NullOrUndefined (Cluster) }
```

##### Instances
``` purescript
Newtype RebootNodeResponse _
Generic RebootNodeResponse _
Show RebootNodeResponse
Decode RebootNodeResponse
Encode RebootNodeResponse
```

#### `newRebootNodeResponse`

``` purescript
newRebootNodeResponse :: RebootNodeResponse
```

Constructs RebootNodeResponse from required parameters

#### `newRebootNodeResponse'`

``` purescript
newRebootNodeResponse' :: ({ "Cluster" :: NullOrUndefined (Cluster) } -> { "Cluster" :: NullOrUndefined (Cluster) }) -> RebootNodeResponse
```

Constructs RebootNodeResponse's fields from required parameters

#### `SecurityGroupIdentifierList`

``` purescript
newtype SecurityGroupIdentifierList
  = SecurityGroupIdentifierList (Array String)
```

##### Instances
``` purescript
Newtype SecurityGroupIdentifierList _
Generic SecurityGroupIdentifierList _
Show SecurityGroupIdentifierList
Decode SecurityGroupIdentifierList
Encode SecurityGroupIdentifierList
```

#### `SecurityGroupMembership`

``` purescript
newtype SecurityGroupMembership
  = SecurityGroupMembership { "SecurityGroupIdentifier" :: NullOrUndefined (String), "Status" :: NullOrUndefined (String) }
```

<p>An individual VPC security group and its status.</p>

##### Instances
``` purescript
Newtype SecurityGroupMembership _
Generic SecurityGroupMembership _
Show SecurityGroupMembership
Decode SecurityGroupMembership
Encode SecurityGroupMembership
```

#### `newSecurityGroupMembership`

``` purescript
newSecurityGroupMembership :: SecurityGroupMembership
```

Constructs SecurityGroupMembership from required parameters

#### `newSecurityGroupMembership'`

``` purescript
newSecurityGroupMembership' :: ({ "SecurityGroupIdentifier" :: NullOrUndefined (String), "Status" :: NullOrUndefined (String) } -> { "SecurityGroupIdentifier" :: NullOrUndefined (String), "Status" :: NullOrUndefined (String) }) -> SecurityGroupMembership
```

Constructs SecurityGroupMembership's fields from required parameters

#### `SecurityGroupMembershipList`

``` purescript
newtype SecurityGroupMembershipList
  = SecurityGroupMembershipList (Array SecurityGroupMembership)
```

##### Instances
``` purescript
Newtype SecurityGroupMembershipList _
Generic SecurityGroupMembershipList _
Show SecurityGroupMembershipList
Decode SecurityGroupMembershipList
Encode SecurityGroupMembershipList
```

#### `SourceType`

``` purescript
newtype SourceType
  = SourceType String
```

##### Instances
``` purescript
Newtype SourceType _
Generic SourceType _
Show SourceType
Decode SourceType
Encode SourceType
```

#### `Subnet`

``` purescript
newtype Subnet
  = Subnet { "SubnetIdentifier" :: NullOrUndefined (String), "SubnetAvailabilityZone" :: NullOrUndefined (String) }
```

<p>Represents the subnet associated with a DAX cluster. This parameter refers to subnets defined in Amazon Virtual Private Cloud (Amazon VPC) and used with DAX.</p>

##### Instances
``` purescript
Newtype Subnet _
Generic Subnet _
Show Subnet
Decode Subnet
Encode Subnet
```

#### `newSubnet`

``` purescript
newSubnet :: Subnet
```

Constructs Subnet from required parameters

#### `newSubnet'`

``` purescript
newSubnet' :: ({ "SubnetIdentifier" :: NullOrUndefined (String), "SubnetAvailabilityZone" :: NullOrUndefined (String) } -> { "SubnetIdentifier" :: NullOrUndefined (String), "SubnetAvailabilityZone" :: NullOrUndefined (String) }) -> Subnet
```

Constructs Subnet's fields from required parameters

#### `SubnetGroup`

``` purescript
newtype SubnetGroup
  = SubnetGroup { "SubnetGroupName" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "VpcId" :: NullOrUndefined (String), "Subnets" :: NullOrUndefined (SubnetList) }
```

<p>Represents the output of one of the following actions:</p> <ul> <li> <p> <i>CreateSubnetGroup</i> </p> </li> <li> <p> <i>ModifySubnetGroup</i> </p> </li> </ul>

##### Instances
``` purescript
Newtype SubnetGroup _
Generic SubnetGroup _
Show SubnetGroup
Decode SubnetGroup
Encode SubnetGroup
```

#### `newSubnetGroup`

``` purescript
newSubnetGroup :: SubnetGroup
```

Constructs SubnetGroup from required parameters

#### `newSubnetGroup'`

``` purescript
newSubnetGroup' :: ({ "SubnetGroupName" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "VpcId" :: NullOrUndefined (String), "Subnets" :: NullOrUndefined (SubnetList) } -> { "SubnetGroupName" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "VpcId" :: NullOrUndefined (String), "Subnets" :: NullOrUndefined (SubnetList) }) -> SubnetGroup
```

Constructs SubnetGroup's fields from required parameters

#### `SubnetGroupAlreadyExistsFault`

``` purescript
newtype SubnetGroupAlreadyExistsFault
  = SubnetGroupAlreadyExistsFault NoArguments
```

<p>The specified subnet group already exists.</p>

##### Instances
``` purescript
Newtype SubnetGroupAlreadyExistsFault _
Generic SubnetGroupAlreadyExistsFault _
Show SubnetGroupAlreadyExistsFault
Decode SubnetGroupAlreadyExistsFault
Encode SubnetGroupAlreadyExistsFault
```

#### `SubnetGroupInUseFault`

``` purescript
newtype SubnetGroupInUseFault
  = SubnetGroupInUseFault NoArguments
```

<p>The specified subnet group is currently in use.</p>

##### Instances
``` purescript
Newtype SubnetGroupInUseFault _
Generic SubnetGroupInUseFault _
Show SubnetGroupInUseFault
Decode SubnetGroupInUseFault
Encode SubnetGroupInUseFault
```

#### `SubnetGroupList`

``` purescript
newtype SubnetGroupList
  = SubnetGroupList (Array SubnetGroup)
```

##### Instances
``` purescript
Newtype SubnetGroupList _
Generic SubnetGroupList _
Show SubnetGroupList
Decode SubnetGroupList
Encode SubnetGroupList
```

#### `SubnetGroupNameList`

``` purescript
newtype SubnetGroupNameList
  = SubnetGroupNameList (Array String)
```

##### Instances
``` purescript
Newtype SubnetGroupNameList _
Generic SubnetGroupNameList _
Show SubnetGroupNameList
Decode SubnetGroupNameList
Encode SubnetGroupNameList
```

#### `SubnetGroupNotFoundFault`

``` purescript
newtype SubnetGroupNotFoundFault
  = SubnetGroupNotFoundFault NoArguments
```

<p>The requested subnet group name does not refer to an existing subnet group.</p>

##### Instances
``` purescript
Newtype SubnetGroupNotFoundFault _
Generic SubnetGroupNotFoundFault _
Show SubnetGroupNotFoundFault
Decode SubnetGroupNotFoundFault
Encode SubnetGroupNotFoundFault
```

#### `SubnetGroupQuotaExceededFault`

``` purescript
newtype SubnetGroupQuotaExceededFault
  = SubnetGroupQuotaExceededFault NoArguments
```

<p>The request cannot be processed because it would exceed the allowed number of subnets in a subnet group.</p>

##### Instances
``` purescript
Newtype SubnetGroupQuotaExceededFault _
Generic SubnetGroupQuotaExceededFault _
Show SubnetGroupQuotaExceededFault
Decode SubnetGroupQuotaExceededFault
Encode SubnetGroupQuotaExceededFault
```

#### `SubnetIdentifierList`

``` purescript
newtype SubnetIdentifierList
  = SubnetIdentifierList (Array String)
```

##### Instances
``` purescript
Newtype SubnetIdentifierList _
Generic SubnetIdentifierList _
Show SubnetIdentifierList
Decode SubnetIdentifierList
Encode SubnetIdentifierList
```

#### `SubnetInUse`

``` purescript
newtype SubnetInUse
  = SubnetInUse NoArguments
```

<p>The requested subnet is being used by another subnet group.</p>

##### Instances
``` purescript
Newtype SubnetInUse _
Generic SubnetInUse _
Show SubnetInUse
Decode SubnetInUse
Encode SubnetInUse
```

#### `SubnetList`

``` purescript
newtype SubnetList
  = SubnetList (Array Subnet)
```

##### Instances
``` purescript
Newtype SubnetList _
Generic SubnetList _
Show SubnetList
Decode SubnetList
Encode SubnetList
```

#### `SubnetQuotaExceededFault`

``` purescript
newtype SubnetQuotaExceededFault
  = SubnetQuotaExceededFault NoArguments
```

<p>The request cannot be processed because it would exceed the allowed number of subnets in a subnet group.</p>

##### Instances
``` purescript
Newtype SubnetQuotaExceededFault _
Generic SubnetQuotaExceededFault _
Show SubnetQuotaExceededFault
Decode SubnetQuotaExceededFault
Encode SubnetQuotaExceededFault
```

#### `TStamp`

``` purescript
newtype TStamp
  = TStamp Timestamp
```

##### Instances
``` purescript
Newtype TStamp _
Generic TStamp _
Show TStamp
Decode TStamp
Encode TStamp
```

#### `Tag`

``` purescript
newtype Tag
  = Tag { "Key" :: NullOrUndefined (String), "Value" :: NullOrUndefined (String) }
```

<p>A description of a tag. Every tag is a key-value pair. You can add up to 50 tags to a single DAX cluster.</p> <p>AWS-assigned tag names and values are automatically assigned the <code>aws:</code> prefix, which the user cannot assign. AWS-assigned tag names do not count towards the tag limit of 50. User-assigned tag names have the prefix <code>user:</code>.</p> <p>You cannot backdate the application of a tag.</p>

##### Instances
``` purescript
Newtype Tag _
Generic Tag _
Show Tag
Decode Tag
Encode Tag
```

#### `newTag`

``` purescript
newTag :: Tag
```

Constructs Tag from required parameters

#### `newTag'`

``` purescript
newTag' :: ({ "Key" :: NullOrUndefined (String), "Value" :: NullOrUndefined (String) } -> { "Key" :: NullOrUndefined (String), "Value" :: NullOrUndefined (String) }) -> Tag
```

Constructs Tag's fields from required parameters

#### `TagList`

``` purescript
newtype TagList
  = TagList (Array Tag)
```

##### Instances
``` purescript
Newtype TagList _
Generic TagList _
Show TagList
Decode TagList
Encode TagList
```

#### `TagNotFoundFault`

``` purescript
newtype TagNotFoundFault
  = TagNotFoundFault NoArguments
```

<p>The tag does not exist.</p>

##### Instances
``` purescript
Newtype TagNotFoundFault _
Generic TagNotFoundFault _
Show TagNotFoundFault
Decode TagNotFoundFault
Encode TagNotFoundFault
```

#### `TagQuotaPerResourceExceeded`

``` purescript
newtype TagQuotaPerResourceExceeded
  = TagQuotaPerResourceExceeded NoArguments
```

<p>You have exceeded the maximum number of tags for this DAX cluster.</p>

##### Instances
``` purescript
Newtype TagQuotaPerResourceExceeded _
Generic TagQuotaPerResourceExceeded _
Show TagQuotaPerResourceExceeded
Decode TagQuotaPerResourceExceeded
Encode TagQuotaPerResourceExceeded
```

#### `TagResourceRequest`

``` purescript
newtype TagResourceRequest
  = TagResourceRequest { "ResourceName" :: String, "Tags" :: TagList }
```

##### Instances
``` purescript
Newtype TagResourceRequest _
Generic TagResourceRequest _
Show TagResourceRequest
Decode TagResourceRequest
Encode TagResourceRequest
```

#### `newTagResourceRequest`

``` purescript
newTagResourceRequest :: String -> TagList -> TagResourceRequest
```

Constructs TagResourceRequest from required parameters

#### `newTagResourceRequest'`

``` purescript
newTagResourceRequest' :: String -> TagList -> ({ "ResourceName" :: String, "Tags" :: TagList } -> { "ResourceName" :: String, "Tags" :: TagList }) -> TagResourceRequest
```

Constructs TagResourceRequest's fields from required parameters

#### `TagResourceResponse`

``` purescript
newtype TagResourceResponse
  = TagResourceResponse { "Tags" :: NullOrUndefined (TagList) }
```

##### Instances
``` purescript
Newtype TagResourceResponse _
Generic TagResourceResponse _
Show TagResourceResponse
Decode TagResourceResponse
Encode TagResourceResponse
```

#### `newTagResourceResponse`

``` purescript
newTagResourceResponse :: TagResourceResponse
```

Constructs TagResourceResponse from required parameters

#### `newTagResourceResponse'`

``` purescript
newTagResourceResponse' :: ({ "Tags" :: NullOrUndefined (TagList) } -> { "Tags" :: NullOrUndefined (TagList) }) -> TagResourceResponse
```

Constructs TagResourceResponse's fields from required parameters

#### `UntagResourceRequest`

``` purescript
newtype UntagResourceRequest
  = UntagResourceRequest { "ResourceName" :: String, "TagKeys" :: KeyList }
```

##### Instances
``` purescript
Newtype UntagResourceRequest _
Generic UntagResourceRequest _
Show UntagResourceRequest
Decode UntagResourceRequest
Encode UntagResourceRequest
```

#### `newUntagResourceRequest`

``` purescript
newUntagResourceRequest :: String -> KeyList -> UntagResourceRequest
```

Constructs UntagResourceRequest from required parameters

#### `newUntagResourceRequest'`

``` purescript
newUntagResourceRequest' :: String -> KeyList -> ({ "ResourceName" :: String, "TagKeys" :: KeyList } -> { "ResourceName" :: String, "TagKeys" :: KeyList }) -> UntagResourceRequest
```

Constructs UntagResourceRequest's fields from required parameters

#### `UntagResourceResponse`

``` purescript
newtype UntagResourceResponse
  = UntagResourceResponse { "Tags" :: NullOrUndefined (TagList) }
```

##### Instances
``` purescript
Newtype UntagResourceResponse _
Generic UntagResourceResponse _
Show UntagResourceResponse
Decode UntagResourceResponse
Encode UntagResourceResponse
```

#### `newUntagResourceResponse`

``` purescript
newUntagResourceResponse :: UntagResourceResponse
```

Constructs UntagResourceResponse from required parameters

#### `newUntagResourceResponse'`

``` purescript
newUntagResourceResponse' :: ({ "Tags" :: NullOrUndefined (TagList) } -> { "Tags" :: NullOrUndefined (TagList) }) -> UntagResourceResponse
```

Constructs UntagResourceResponse's fields from required parameters

#### `UpdateClusterRequest`

``` purescript
newtype UpdateClusterRequest
  = UpdateClusterRequest { "ClusterName" :: String, "Description" :: NullOrUndefined (String), "PreferredMaintenanceWindow" :: NullOrUndefined (String), "NotificationTopicArn" :: NullOrUndefined (String), "NotificationTopicStatus" :: NullOrUndefined (String), "ParameterGroupName" :: NullOrUndefined (String), "SecurityGroupIds" :: NullOrUndefined (SecurityGroupIdentifierList) }
```

##### Instances
``` purescript
Newtype UpdateClusterRequest _
Generic UpdateClusterRequest _
Show UpdateClusterRequest
Decode UpdateClusterRequest
Encode UpdateClusterRequest
```

#### `newUpdateClusterRequest`

``` purescript
newUpdateClusterRequest :: String -> UpdateClusterRequest
```

Constructs UpdateClusterRequest from required parameters

#### `newUpdateClusterRequest'`

``` purescript
newUpdateClusterRequest' :: String -> ({ "ClusterName" :: String, "Description" :: NullOrUndefined (String), "PreferredMaintenanceWindow" :: NullOrUndefined (String), "NotificationTopicArn" :: NullOrUndefined (String), "NotificationTopicStatus" :: NullOrUndefined (String), "ParameterGroupName" :: NullOrUndefined (String), "SecurityGroupIds" :: NullOrUndefined (SecurityGroupIdentifierList) } -> { "ClusterName" :: String, "Description" :: NullOrUndefined (String), "PreferredMaintenanceWindow" :: NullOrUndefined (String), "NotificationTopicArn" :: NullOrUndefined (String), "NotificationTopicStatus" :: NullOrUndefined (String), "ParameterGroupName" :: NullOrUndefined (String), "SecurityGroupIds" :: NullOrUndefined (SecurityGroupIdentifierList) }) -> UpdateClusterRequest
```

Constructs UpdateClusterRequest's fields from required parameters

#### `UpdateClusterResponse`

``` purescript
newtype UpdateClusterResponse
  = UpdateClusterResponse { "Cluster" :: NullOrUndefined (Cluster) }
```

##### Instances
``` purescript
Newtype UpdateClusterResponse _
Generic UpdateClusterResponse _
Show UpdateClusterResponse
Decode UpdateClusterResponse
Encode UpdateClusterResponse
```

#### `newUpdateClusterResponse`

``` purescript
newUpdateClusterResponse :: UpdateClusterResponse
```

Constructs UpdateClusterResponse from required parameters

#### `newUpdateClusterResponse'`

``` purescript
newUpdateClusterResponse' :: ({ "Cluster" :: NullOrUndefined (Cluster) } -> { "Cluster" :: NullOrUndefined (Cluster) }) -> UpdateClusterResponse
```

Constructs UpdateClusterResponse's fields from required parameters

#### `UpdateParameterGroupRequest`

``` purescript
newtype UpdateParameterGroupRequest
  = UpdateParameterGroupRequest { "ParameterGroupName" :: String, "ParameterNameValues" :: ParameterNameValueList }
```

##### Instances
``` purescript
Newtype UpdateParameterGroupRequest _
Generic UpdateParameterGroupRequest _
Show UpdateParameterGroupRequest
Decode UpdateParameterGroupRequest
Encode UpdateParameterGroupRequest
```

#### `newUpdateParameterGroupRequest`

``` purescript
newUpdateParameterGroupRequest :: String -> ParameterNameValueList -> UpdateParameterGroupRequest
```

Constructs UpdateParameterGroupRequest from required parameters

#### `newUpdateParameterGroupRequest'`

``` purescript
newUpdateParameterGroupRequest' :: String -> ParameterNameValueList -> ({ "ParameterGroupName" :: String, "ParameterNameValues" :: ParameterNameValueList } -> { "ParameterGroupName" :: String, "ParameterNameValues" :: ParameterNameValueList }) -> UpdateParameterGroupRequest
```

Constructs UpdateParameterGroupRequest's fields from required parameters

#### `UpdateParameterGroupResponse`

``` purescript
newtype UpdateParameterGroupResponse
  = UpdateParameterGroupResponse { "ParameterGroup" :: NullOrUndefined (ParameterGroup) }
```

##### Instances
``` purescript
Newtype UpdateParameterGroupResponse _
Generic UpdateParameterGroupResponse _
Show UpdateParameterGroupResponse
Decode UpdateParameterGroupResponse
Encode UpdateParameterGroupResponse
```

#### `newUpdateParameterGroupResponse`

``` purescript
newUpdateParameterGroupResponse :: UpdateParameterGroupResponse
```

Constructs UpdateParameterGroupResponse from required parameters

#### `newUpdateParameterGroupResponse'`

``` purescript
newUpdateParameterGroupResponse' :: ({ "ParameterGroup" :: NullOrUndefined (ParameterGroup) } -> { "ParameterGroup" :: NullOrUndefined (ParameterGroup) }) -> UpdateParameterGroupResponse
```

Constructs UpdateParameterGroupResponse's fields from required parameters

#### `UpdateSubnetGroupRequest`

``` purescript
newtype UpdateSubnetGroupRequest
  = UpdateSubnetGroupRequest { "SubnetGroupName" :: String, "Description" :: NullOrUndefined (String), "SubnetIds" :: NullOrUndefined (SubnetIdentifierList) }
```

##### Instances
``` purescript
Newtype UpdateSubnetGroupRequest _
Generic UpdateSubnetGroupRequest _
Show UpdateSubnetGroupRequest
Decode UpdateSubnetGroupRequest
Encode UpdateSubnetGroupRequest
```

#### `newUpdateSubnetGroupRequest`

``` purescript
newUpdateSubnetGroupRequest :: String -> UpdateSubnetGroupRequest
```

Constructs UpdateSubnetGroupRequest from required parameters

#### `newUpdateSubnetGroupRequest'`

``` purescript
newUpdateSubnetGroupRequest' :: String -> ({ "SubnetGroupName" :: String, "Description" :: NullOrUndefined (String), "SubnetIds" :: NullOrUndefined (SubnetIdentifierList) } -> { "SubnetGroupName" :: String, "Description" :: NullOrUndefined (String), "SubnetIds" :: NullOrUndefined (SubnetIdentifierList) }) -> UpdateSubnetGroupRequest
```

Constructs UpdateSubnetGroupRequest's fields from required parameters

#### `UpdateSubnetGroupResponse`

``` purescript
newtype UpdateSubnetGroupResponse
  = UpdateSubnetGroupResponse { "SubnetGroup" :: NullOrUndefined (SubnetGroup) }
```

##### Instances
``` purescript
Newtype UpdateSubnetGroupResponse _
Generic UpdateSubnetGroupResponse _
Show UpdateSubnetGroupResponse
Decode UpdateSubnetGroupResponse
Encode UpdateSubnetGroupResponse
```

#### `newUpdateSubnetGroupResponse`

``` purescript
newUpdateSubnetGroupResponse :: UpdateSubnetGroupResponse
```

Constructs UpdateSubnetGroupResponse from required parameters

#### `newUpdateSubnetGroupResponse'`

``` purescript
newUpdateSubnetGroupResponse' :: ({ "SubnetGroup" :: NullOrUndefined (SubnetGroup) } -> { "SubnetGroup" :: NullOrUndefined (SubnetGroup) }) -> UpdateSubnetGroupResponse
```

Constructs UpdateSubnetGroupResponse's fields from required parameters


