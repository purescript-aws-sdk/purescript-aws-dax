## Module AWS.DAX.Requests

#### `createCluster`

``` purescript
createCluster :: forall eff. Service -> CreateClusterRequest -> Aff (exception :: EXCEPTION | eff) CreateClusterResponse
```

<p>Creates a DAX cluster. All nodes in the cluster run the same DAX caching software.</p>

#### `createParameterGroup`

``` purescript
createParameterGroup :: forall eff. Service -> CreateParameterGroupRequest -> Aff (exception :: EXCEPTION | eff) CreateParameterGroupResponse
```

<p>Creates a new parameter group. A parameter group is a collection of parameters that you apply to all of the nodes in a DAX cluster.</p>

#### `createSubnetGroup`

``` purescript
createSubnetGroup :: forall eff. Service -> CreateSubnetGroupRequest -> Aff (exception :: EXCEPTION | eff) CreateSubnetGroupResponse
```

<p>Creates a new subnet group.</p>

#### `decreaseReplicationFactor`

``` purescript
decreaseReplicationFactor :: forall eff. Service -> DecreaseReplicationFactorRequest -> Aff (exception :: EXCEPTION | eff) DecreaseReplicationFactorResponse
```

<p>Removes one or more nodes from a DAX cluster.</p> <note> <p>You cannot use <code>DecreaseReplicationFactor</code> to remove the last node in a DAX cluster. If you need to do this, use <code>DeleteCluster</code> instead.</p> </note>

#### `deleteCluster`

``` purescript
deleteCluster :: forall eff. Service -> DeleteClusterRequest -> Aff (exception :: EXCEPTION | eff) DeleteClusterResponse
```

<p>Deletes a previously provisioned DAX cluster. <i>DeleteCluster</i> deletes all associated nodes, node endpoints and the DAX cluster itself. When you receive a successful response from this action, DAX immediately begins deleting the cluster; you cannot cancel or revert this action.</p>

#### `deleteParameterGroup`

``` purescript
deleteParameterGroup :: forall eff. Service -> DeleteParameterGroupRequest -> Aff (exception :: EXCEPTION | eff) DeleteParameterGroupResponse
```

<p>Deletes the specified parameter group. You cannot delete a parameter group if it is associated with any DAX clusters.</p>

#### `deleteSubnetGroup`

``` purescript
deleteSubnetGroup :: forall eff. Service -> DeleteSubnetGroupRequest -> Aff (exception :: EXCEPTION | eff) DeleteSubnetGroupResponse
```

<p>Deletes a subnet group.</p> <note> <p>You cannot delete a subnet group if it is associated with any DAX clusters.</p> </note>

#### `describeClusters`

``` purescript
describeClusters :: forall eff. Service -> DescribeClustersRequest -> Aff (exception :: EXCEPTION | eff) DescribeClustersResponse
```

<p>Returns information about all provisioned DAX clusters if no cluster identifier is specified, or about a specific DAX cluster if a cluster identifier is supplied.</p> <p>If the cluster is in the CREATING state, only cluster level information will be displayed until all of the nodes are successfully provisioned.</p> <p>If the cluster is in the DELETING state, only cluster level information will be displayed.</p> <p>If nodes are currently being added to the DAX cluster, node endpoint information and creation time for the additional nodes will not be displayed until they are completely provisioned. When the DAX cluster state is <i>available</i>, the cluster is ready for use.</p> <p>If nodes are currently being removed from the DAX cluster, no endpoint information for the removed nodes is displayed.</p>

#### `describeDefaultParameters`

``` purescript
describeDefaultParameters :: forall eff. Service -> DescribeDefaultParametersRequest -> Aff (exception :: EXCEPTION | eff) DescribeDefaultParametersResponse
```

<p>Returns the default system parameter information for the DAX caching software.</p>

#### `describeEvents`

``` purescript
describeEvents :: forall eff. Service -> DescribeEventsRequest -> Aff (exception :: EXCEPTION | eff) DescribeEventsResponse
```

<p>Returns events related to DAX clusters and parameter groups. You can obtain events specific to a particular DAX cluster or parameter group by providing the name as a parameter.</p> <p>By default, only the events occurring within the last hour are returned; however, you can retrieve up to 14 days' worth of events if necessary.</p>

#### `describeParameterGroups`

``` purescript
describeParameterGroups :: forall eff. Service -> DescribeParameterGroupsRequest -> Aff (exception :: EXCEPTION | eff) DescribeParameterGroupsResponse
```

<p>Returns a list of parameter group descriptions. If a parameter group name is specified, the list will contain only the descriptions for that group.</p>

#### `describeParameters`

``` purescript
describeParameters :: forall eff. Service -> DescribeParametersRequest -> Aff (exception :: EXCEPTION | eff) DescribeParametersResponse
```

<p>Returns the detailed parameter list for a particular parameter group.</p>

#### `describeSubnetGroups`

``` purescript
describeSubnetGroups :: forall eff. Service -> DescribeSubnetGroupsRequest -> Aff (exception :: EXCEPTION | eff) DescribeSubnetGroupsResponse
```

<p>Returns a list of subnet group descriptions. If a subnet group name is specified, the list will contain only the description of that group.</p>

#### `increaseReplicationFactor`

``` purescript
increaseReplicationFactor :: forall eff. Service -> IncreaseReplicationFactorRequest -> Aff (exception :: EXCEPTION | eff) IncreaseReplicationFactorResponse
```

<p>Adds one or more nodes to a DAX cluster.</p>

#### `listTags`

``` purescript
listTags :: forall eff. Service -> ListTagsRequest -> Aff (exception :: EXCEPTION | eff) ListTagsResponse
```

<p>List all of the tags for a DAX cluster. You can call <code>ListTags</code> up to 10 times per second, per account.</p>

#### `rebootNode`

``` purescript
rebootNode :: forall eff. Service -> RebootNodeRequest -> Aff (exception :: EXCEPTION | eff) RebootNodeResponse
```

<p>Reboots a single node of a DAX cluster. The reboot action takes place as soon as possible. During the reboot, the node status is set to REBOOTING.</p>

#### `tagResource`

``` purescript
tagResource :: forall eff. Service -> TagResourceRequest -> Aff (exception :: EXCEPTION | eff) TagResourceResponse
```

<p>Associates a set of tags with a DAX resource. You can call <code>TagResource</code> up to 5 times per second, per account. </p>

#### `untagResource`

``` purescript
untagResource :: forall eff. Service -> UntagResourceRequest -> Aff (exception :: EXCEPTION | eff) UntagResourceResponse
```

<p>Removes the association of tags from a DAX resource. You can call <code>UntagResource</code> up to 5 times per second, per account. </p>

#### `updateCluster`

``` purescript
updateCluster :: forall eff. Service -> UpdateClusterRequest -> Aff (exception :: EXCEPTION | eff) UpdateClusterResponse
```

<p>Modifies the settings for a DAX cluster. You can use this action to change one or more cluster configuration parameters by specifying the parameters and the new values.</p>

#### `updateParameterGroup`

``` purescript
updateParameterGroup :: forall eff. Service -> UpdateParameterGroupRequest -> Aff (exception :: EXCEPTION | eff) UpdateParameterGroupResponse
```

<p>Modifies the parameters of a parameter group. You can modify up to 20 parameters in a single request by submitting a list parameter name and value pairs.</p>

#### `updateSubnetGroup`

``` purescript
updateSubnetGroup :: forall eff. Service -> UpdateSubnetGroupRequest -> Aff (exception :: EXCEPTION | eff) UpdateSubnetGroupResponse
```

<p>Modifies an existing subnet group.</p>


