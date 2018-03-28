
module AWS.DAX.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.DAX as DAX
import AWS.DAX.Types as DAXTypes


-- | <p>Creates a DAX cluster. All nodes in the cluster run the same DAX caching software.</p>
createCluster :: forall eff. DAX.Service -> DAXTypes.CreateClusterRequest -> Aff (exception :: EXCEPTION | eff) DAXTypes.CreateClusterResponse
createCluster (DAX.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createCluster"


-- | <p>Creates a new parameter group. A parameter group is a collection of parameters that you apply to all of the nodes in a DAX cluster.</p>
createParameterGroup :: forall eff. DAX.Service -> DAXTypes.CreateParameterGroupRequest -> Aff (exception :: EXCEPTION | eff) DAXTypes.CreateParameterGroupResponse
createParameterGroup (DAX.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createParameterGroup"


-- | <p>Creates a new subnet group.</p>
createSubnetGroup :: forall eff. DAX.Service -> DAXTypes.CreateSubnetGroupRequest -> Aff (exception :: EXCEPTION | eff) DAXTypes.CreateSubnetGroupResponse
createSubnetGroup (DAX.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createSubnetGroup"


-- | <p>Removes one or more nodes from a DAX cluster.</p> <note> <p>You cannot use <code>DecreaseReplicationFactor</code> to remove the last node in a DAX cluster. If you need to do this, use <code>DeleteCluster</code> instead.</p> </note>
decreaseReplicationFactor :: forall eff. DAX.Service -> DAXTypes.DecreaseReplicationFactorRequest -> Aff (exception :: EXCEPTION | eff) DAXTypes.DecreaseReplicationFactorResponse
decreaseReplicationFactor (DAX.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "decreaseReplicationFactor"


-- | <p>Deletes a previously provisioned DAX cluster. <i>DeleteCluster</i> deletes all associated nodes, node endpoints and the DAX cluster itself. When you receive a successful response from this action, DAX immediately begins deleting the cluster; you cannot cancel or revert this action.</p>
deleteCluster :: forall eff. DAX.Service -> DAXTypes.DeleteClusterRequest -> Aff (exception :: EXCEPTION | eff) DAXTypes.DeleteClusterResponse
deleteCluster (DAX.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteCluster"


-- | <p>Deletes the specified parameter group. You cannot delete a parameter group if it is associated with any DAX clusters.</p>
deleteParameterGroup :: forall eff. DAX.Service -> DAXTypes.DeleteParameterGroupRequest -> Aff (exception :: EXCEPTION | eff) DAXTypes.DeleteParameterGroupResponse
deleteParameterGroup (DAX.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteParameterGroup"


-- | <p>Deletes a subnet group.</p> <note> <p>You cannot delete a subnet group if it is associated with any DAX clusters.</p> </note>
deleteSubnetGroup :: forall eff. DAX.Service -> DAXTypes.DeleteSubnetGroupRequest -> Aff (exception :: EXCEPTION | eff) DAXTypes.DeleteSubnetGroupResponse
deleteSubnetGroup (DAX.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteSubnetGroup"


-- | <p>Returns information about all provisioned DAX clusters if no cluster identifier is specified, or about a specific DAX cluster if a cluster identifier is supplied.</p> <p>If the cluster is in the CREATING state, only cluster level information will be displayed until all of the nodes are successfully provisioned.</p> <p>If the cluster is in the DELETING state, only cluster level information will be displayed.</p> <p>If nodes are currently being added to the DAX cluster, node endpoint information and creation time for the additional nodes will not be displayed until they are completely provisioned. When the DAX cluster state is <i>available</i>, the cluster is ready for use.</p> <p>If nodes are currently being removed from the DAX cluster, no endpoint information for the removed nodes is displayed.</p>
describeClusters :: forall eff. DAX.Service -> DAXTypes.DescribeClustersRequest -> Aff (exception :: EXCEPTION | eff) DAXTypes.DescribeClustersResponse
describeClusters (DAX.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeClusters"


-- | <p>Returns the default system parameter information for the DAX caching software.</p>
describeDefaultParameters :: forall eff. DAX.Service -> DAXTypes.DescribeDefaultParametersRequest -> Aff (exception :: EXCEPTION | eff) DAXTypes.DescribeDefaultParametersResponse
describeDefaultParameters (DAX.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeDefaultParameters"


-- | <p>Returns events related to DAX clusters and parameter groups. You can obtain events specific to a particular DAX cluster or parameter group by providing the name as a parameter.</p> <p>By default, only the events occurring within the last hour are returned; however, you can retrieve up to 14 days' worth of events if necessary.</p>
describeEvents :: forall eff. DAX.Service -> DAXTypes.DescribeEventsRequest -> Aff (exception :: EXCEPTION | eff) DAXTypes.DescribeEventsResponse
describeEvents (DAX.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeEvents"


-- | <p>Returns a list of parameter group descriptions. If a parameter group name is specified, the list will contain only the descriptions for that group.</p>
describeParameterGroups :: forall eff. DAX.Service -> DAXTypes.DescribeParameterGroupsRequest -> Aff (exception :: EXCEPTION | eff) DAXTypes.DescribeParameterGroupsResponse
describeParameterGroups (DAX.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeParameterGroups"


-- | <p>Returns the detailed parameter list for a particular parameter group.</p>
describeParameters :: forall eff. DAX.Service -> DAXTypes.DescribeParametersRequest -> Aff (exception :: EXCEPTION | eff) DAXTypes.DescribeParametersResponse
describeParameters (DAX.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeParameters"


-- | <p>Returns a list of subnet group descriptions. If a subnet group name is specified, the list will contain only the description of that group.</p>
describeSubnetGroups :: forall eff. DAX.Service -> DAXTypes.DescribeSubnetGroupsRequest -> Aff (exception :: EXCEPTION | eff) DAXTypes.DescribeSubnetGroupsResponse
describeSubnetGroups (DAX.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeSubnetGroups"


-- | <p>Adds one or more nodes to a DAX cluster.</p>
increaseReplicationFactor :: forall eff. DAX.Service -> DAXTypes.IncreaseReplicationFactorRequest -> Aff (exception :: EXCEPTION | eff) DAXTypes.IncreaseReplicationFactorResponse
increaseReplicationFactor (DAX.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "increaseReplicationFactor"


-- | <p>List all of the tags for a DAX cluster. You can call <code>ListTags</code> up to 10 times per second, per account.</p>
listTags :: forall eff. DAX.Service -> DAXTypes.ListTagsRequest -> Aff (exception :: EXCEPTION | eff) DAXTypes.ListTagsResponse
listTags (DAX.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listTags"


-- | <p>Reboots a single node of a DAX cluster. The reboot action takes place as soon as possible. During the reboot, the node status is set to REBOOTING.</p>
rebootNode :: forall eff. DAX.Service -> DAXTypes.RebootNodeRequest -> Aff (exception :: EXCEPTION | eff) DAXTypes.RebootNodeResponse
rebootNode (DAX.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "rebootNode"


-- | <p>Associates a set of tags with a DAX resource. You can call <code>TagResource</code> up to 5 times per second, per account. </p>
tagResource :: forall eff. DAX.Service -> DAXTypes.TagResourceRequest -> Aff (exception :: EXCEPTION | eff) DAXTypes.TagResourceResponse
tagResource (DAX.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "tagResource"


-- | <p>Removes the association of tags from a DAX resource. You can call <code>UntagResource</code> up to 5 times per second, per account. </p>
untagResource :: forall eff. DAX.Service -> DAXTypes.UntagResourceRequest -> Aff (exception :: EXCEPTION | eff) DAXTypes.UntagResourceResponse
untagResource (DAX.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "untagResource"


-- | <p>Modifies the settings for a DAX cluster. You can use this action to change one or more cluster configuration parameters by specifying the parameters and the new values.</p>
updateCluster :: forall eff. DAX.Service -> DAXTypes.UpdateClusterRequest -> Aff (exception :: EXCEPTION | eff) DAXTypes.UpdateClusterResponse
updateCluster (DAX.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateCluster"


-- | <p>Modifies the parameters of a parameter group. You can modify up to 20 parameters in a single request by submitting a list parameter name and value pairs.</p>
updateParameterGroup :: forall eff. DAX.Service -> DAXTypes.UpdateParameterGroupRequest -> Aff (exception :: EXCEPTION | eff) DAXTypes.UpdateParameterGroupResponse
updateParameterGroup (DAX.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateParameterGroup"


-- | <p>Modifies an existing subnet group.</p>
updateSubnetGroup :: forall eff. DAX.Service -> DAXTypes.UpdateSubnetGroupRequest -> Aff (exception :: EXCEPTION | eff) DAXTypes.UpdateSubnetGroupResponse
updateSubnetGroup (DAX.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateSubnetGroup"
