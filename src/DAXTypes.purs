
module AWS.DAX.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


newtype AvailabilityZoneList = AvailabilityZoneList (Array String)
derive instance newtypeAvailabilityZoneList :: Newtype AvailabilityZoneList _
derive instance repGenericAvailabilityZoneList :: Generic AvailabilityZoneList _
instance showAvailabilityZoneList :: Show AvailabilityZoneList where show = genericShow
instance decodeAvailabilityZoneList :: Decode AvailabilityZoneList where decode = genericDecode options
instance encodeAvailabilityZoneList :: Encode AvailabilityZoneList where encode = genericEncode options



newtype AwsQueryErrorMessage = AwsQueryErrorMessage String
derive instance newtypeAwsQueryErrorMessage :: Newtype AwsQueryErrorMessage _
derive instance repGenericAwsQueryErrorMessage :: Generic AwsQueryErrorMessage _
instance showAwsQueryErrorMessage :: Show AwsQueryErrorMessage where show = genericShow
instance decodeAwsQueryErrorMessage :: Decode AwsQueryErrorMessage where decode = genericDecode options
instance encodeAwsQueryErrorMessage :: Encode AwsQueryErrorMessage where encode = genericEncode options



newtype ChangeType = ChangeType String
derive instance newtypeChangeType :: Newtype ChangeType _
derive instance repGenericChangeType :: Generic ChangeType _
instance showChangeType :: Show ChangeType where show = genericShow
instance decodeChangeType :: Decode ChangeType where decode = genericDecode options
instance encodeChangeType :: Encode ChangeType where encode = genericEncode options



-- | <p>Contains all of the attributes of a specific DAX cluster.</p>
newtype Cluster = Cluster 
  { "ClusterName" :: Maybe (String)
  , "Description" :: Maybe (String)
  , "ClusterArn" :: Maybe (String)
  , "TotalNodes" :: Maybe (IntegerOptional)
  , "ActiveNodes" :: Maybe (IntegerOptional)
  , "NodeType" :: Maybe (String)
  , "Status" :: Maybe (String)
  , "ClusterDiscoveryEndpoint" :: Maybe (Endpoint)
  , "NodeIdsToRemove" :: Maybe (NodeIdentifierList)
  , "Nodes" :: Maybe (NodeList)
  , "PreferredMaintenanceWindow" :: Maybe (String)
  , "NotificationConfiguration" :: Maybe (NotificationConfiguration)
  , "SubnetGroup" :: Maybe (String)
  , "SecurityGroups" :: Maybe (SecurityGroupMembershipList)
  , "IamRoleArn" :: Maybe (String)
  , "ParameterGroup" :: Maybe (ParameterGroupStatus)
  }
derive instance newtypeCluster :: Newtype Cluster _
derive instance repGenericCluster :: Generic Cluster _
instance showCluster :: Show Cluster where show = genericShow
instance decodeCluster :: Decode Cluster where decode = genericDecode options
instance encodeCluster :: Encode Cluster where encode = genericEncode options

-- | Constructs Cluster from required parameters
newCluster :: Cluster
newCluster  = Cluster { "ActiveNodes": Nothing, "ClusterArn": Nothing, "ClusterDiscoveryEndpoint": Nothing, "ClusterName": Nothing, "Description": Nothing, "IamRoleArn": Nothing, "NodeIdsToRemove": Nothing, "NodeType": Nothing, "Nodes": Nothing, "NotificationConfiguration": Nothing, "ParameterGroup": Nothing, "PreferredMaintenanceWindow": Nothing, "SecurityGroups": Nothing, "Status": Nothing, "SubnetGroup": Nothing, "TotalNodes": Nothing }

-- | Constructs Cluster's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCluster' :: ( { "ClusterName" :: Maybe (String) , "Description" :: Maybe (String) , "ClusterArn" :: Maybe (String) , "TotalNodes" :: Maybe (IntegerOptional) , "ActiveNodes" :: Maybe (IntegerOptional) , "NodeType" :: Maybe (String) , "Status" :: Maybe (String) , "ClusterDiscoveryEndpoint" :: Maybe (Endpoint) , "NodeIdsToRemove" :: Maybe (NodeIdentifierList) , "Nodes" :: Maybe (NodeList) , "PreferredMaintenanceWindow" :: Maybe (String) , "NotificationConfiguration" :: Maybe (NotificationConfiguration) , "SubnetGroup" :: Maybe (String) , "SecurityGroups" :: Maybe (SecurityGroupMembershipList) , "IamRoleArn" :: Maybe (String) , "ParameterGroup" :: Maybe (ParameterGroupStatus) } -> {"ClusterName" :: Maybe (String) , "Description" :: Maybe (String) , "ClusterArn" :: Maybe (String) , "TotalNodes" :: Maybe (IntegerOptional) , "ActiveNodes" :: Maybe (IntegerOptional) , "NodeType" :: Maybe (String) , "Status" :: Maybe (String) , "ClusterDiscoveryEndpoint" :: Maybe (Endpoint) , "NodeIdsToRemove" :: Maybe (NodeIdentifierList) , "Nodes" :: Maybe (NodeList) , "PreferredMaintenanceWindow" :: Maybe (String) , "NotificationConfiguration" :: Maybe (NotificationConfiguration) , "SubnetGroup" :: Maybe (String) , "SecurityGroups" :: Maybe (SecurityGroupMembershipList) , "IamRoleArn" :: Maybe (String) , "ParameterGroup" :: Maybe (ParameterGroupStatus) } ) -> Cluster
newCluster'  customize = (Cluster <<< customize) { "ActiveNodes": Nothing, "ClusterArn": Nothing, "ClusterDiscoveryEndpoint": Nothing, "ClusterName": Nothing, "Description": Nothing, "IamRoleArn": Nothing, "NodeIdsToRemove": Nothing, "NodeType": Nothing, "Nodes": Nothing, "NotificationConfiguration": Nothing, "ParameterGroup": Nothing, "PreferredMaintenanceWindow": Nothing, "SecurityGroups": Nothing, "Status": Nothing, "SubnetGroup": Nothing, "TotalNodes": Nothing }



-- | <p>You already have a DAX cluster with the given identifier.</p>
newtype ClusterAlreadyExistsFault = ClusterAlreadyExistsFault Types.NoArguments
derive instance newtypeClusterAlreadyExistsFault :: Newtype ClusterAlreadyExistsFault _
derive instance repGenericClusterAlreadyExistsFault :: Generic ClusterAlreadyExistsFault _
instance showClusterAlreadyExistsFault :: Show ClusterAlreadyExistsFault where show = genericShow
instance decodeClusterAlreadyExistsFault :: Decode ClusterAlreadyExistsFault where decode = genericDecode options
instance encodeClusterAlreadyExistsFault :: Encode ClusterAlreadyExistsFault where encode = genericEncode options



newtype ClusterList = ClusterList (Array Cluster)
derive instance newtypeClusterList :: Newtype ClusterList _
derive instance repGenericClusterList :: Generic ClusterList _
instance showClusterList :: Show ClusterList where show = genericShow
instance decodeClusterList :: Decode ClusterList where decode = genericDecode options
instance encodeClusterList :: Encode ClusterList where encode = genericEncode options



newtype ClusterNameList = ClusterNameList (Array String)
derive instance newtypeClusterNameList :: Newtype ClusterNameList _
derive instance repGenericClusterNameList :: Generic ClusterNameList _
instance showClusterNameList :: Show ClusterNameList where show = genericShow
instance decodeClusterNameList :: Decode ClusterNameList where decode = genericDecode options
instance encodeClusterNameList :: Encode ClusterNameList where encode = genericEncode options



-- | <p>The requested cluster ID does not refer to an existing DAX cluster.</p>
newtype ClusterNotFoundFault = ClusterNotFoundFault Types.NoArguments
derive instance newtypeClusterNotFoundFault :: Newtype ClusterNotFoundFault _
derive instance repGenericClusterNotFoundFault :: Generic ClusterNotFoundFault _
instance showClusterNotFoundFault :: Show ClusterNotFoundFault where show = genericShow
instance decodeClusterNotFoundFault :: Decode ClusterNotFoundFault where decode = genericDecode options
instance encodeClusterNotFoundFault :: Encode ClusterNotFoundFault where encode = genericEncode options



-- | <p>You have attempted to exceed the maximum number of DAX clusters for your AWS account.</p>
newtype ClusterQuotaForCustomerExceededFault = ClusterQuotaForCustomerExceededFault Types.NoArguments
derive instance newtypeClusterQuotaForCustomerExceededFault :: Newtype ClusterQuotaForCustomerExceededFault _
derive instance repGenericClusterQuotaForCustomerExceededFault :: Generic ClusterQuotaForCustomerExceededFault _
instance showClusterQuotaForCustomerExceededFault :: Show ClusterQuotaForCustomerExceededFault where show = genericShow
instance decodeClusterQuotaForCustomerExceededFault :: Decode ClusterQuotaForCustomerExceededFault where decode = genericDecode options
instance encodeClusterQuotaForCustomerExceededFault :: Encode ClusterQuotaForCustomerExceededFault where encode = genericEncode options



newtype CreateClusterRequest = CreateClusterRequest 
  { "ClusterName" :: (String)
  , "NodeType" :: (String)
  , "Description" :: Maybe (String)
  , "ReplicationFactor" :: (Int)
  , "AvailabilityZones" :: Maybe (AvailabilityZoneList)
  , "SubnetGroupName" :: Maybe (String)
  , "SecurityGroupIds" :: Maybe (SecurityGroupIdentifierList)
  , "PreferredMaintenanceWindow" :: Maybe (String)
  , "NotificationTopicArn" :: Maybe (String)
  , "IamRoleArn" :: (String)
  , "ParameterGroupName" :: Maybe (String)
  , "Tags" :: Maybe (TagList)
  }
derive instance newtypeCreateClusterRequest :: Newtype CreateClusterRequest _
derive instance repGenericCreateClusterRequest :: Generic CreateClusterRequest _
instance showCreateClusterRequest :: Show CreateClusterRequest where show = genericShow
instance decodeCreateClusterRequest :: Decode CreateClusterRequest where decode = genericDecode options
instance encodeCreateClusterRequest :: Encode CreateClusterRequest where encode = genericEncode options

-- | Constructs CreateClusterRequest from required parameters
newCreateClusterRequest :: String -> String -> String -> Int -> CreateClusterRequest
newCreateClusterRequest _ClusterName _IamRoleArn _NodeType _ReplicationFactor = CreateClusterRequest { "ClusterName": _ClusterName, "IamRoleArn": _IamRoleArn, "NodeType": _NodeType, "ReplicationFactor": _ReplicationFactor, "AvailabilityZones": Nothing, "Description": Nothing, "NotificationTopicArn": Nothing, "ParameterGroupName": Nothing, "PreferredMaintenanceWindow": Nothing, "SecurityGroupIds": Nothing, "SubnetGroupName": Nothing, "Tags": Nothing }

-- | Constructs CreateClusterRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateClusterRequest' :: String -> String -> String -> Int -> ( { "ClusterName" :: (String) , "NodeType" :: (String) , "Description" :: Maybe (String) , "ReplicationFactor" :: (Int) , "AvailabilityZones" :: Maybe (AvailabilityZoneList) , "SubnetGroupName" :: Maybe (String) , "SecurityGroupIds" :: Maybe (SecurityGroupIdentifierList) , "PreferredMaintenanceWindow" :: Maybe (String) , "NotificationTopicArn" :: Maybe (String) , "IamRoleArn" :: (String) , "ParameterGroupName" :: Maybe (String) , "Tags" :: Maybe (TagList) } -> {"ClusterName" :: (String) , "NodeType" :: (String) , "Description" :: Maybe (String) , "ReplicationFactor" :: (Int) , "AvailabilityZones" :: Maybe (AvailabilityZoneList) , "SubnetGroupName" :: Maybe (String) , "SecurityGroupIds" :: Maybe (SecurityGroupIdentifierList) , "PreferredMaintenanceWindow" :: Maybe (String) , "NotificationTopicArn" :: Maybe (String) , "IamRoleArn" :: (String) , "ParameterGroupName" :: Maybe (String) , "Tags" :: Maybe (TagList) } ) -> CreateClusterRequest
newCreateClusterRequest' _ClusterName _IamRoleArn _NodeType _ReplicationFactor customize = (CreateClusterRequest <<< customize) { "ClusterName": _ClusterName, "IamRoleArn": _IamRoleArn, "NodeType": _NodeType, "ReplicationFactor": _ReplicationFactor, "AvailabilityZones": Nothing, "Description": Nothing, "NotificationTopicArn": Nothing, "ParameterGroupName": Nothing, "PreferredMaintenanceWindow": Nothing, "SecurityGroupIds": Nothing, "SubnetGroupName": Nothing, "Tags": Nothing }



newtype CreateClusterResponse = CreateClusterResponse 
  { "Cluster" :: Maybe (Cluster)
  }
derive instance newtypeCreateClusterResponse :: Newtype CreateClusterResponse _
derive instance repGenericCreateClusterResponse :: Generic CreateClusterResponse _
instance showCreateClusterResponse :: Show CreateClusterResponse where show = genericShow
instance decodeCreateClusterResponse :: Decode CreateClusterResponse where decode = genericDecode options
instance encodeCreateClusterResponse :: Encode CreateClusterResponse where encode = genericEncode options

-- | Constructs CreateClusterResponse from required parameters
newCreateClusterResponse :: CreateClusterResponse
newCreateClusterResponse  = CreateClusterResponse { "Cluster": Nothing }

-- | Constructs CreateClusterResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateClusterResponse' :: ( { "Cluster" :: Maybe (Cluster) } -> {"Cluster" :: Maybe (Cluster) } ) -> CreateClusterResponse
newCreateClusterResponse'  customize = (CreateClusterResponse <<< customize) { "Cluster": Nothing }



newtype CreateParameterGroupRequest = CreateParameterGroupRequest 
  { "ParameterGroupName" :: (String)
  , "Description" :: Maybe (String)
  }
derive instance newtypeCreateParameterGroupRequest :: Newtype CreateParameterGroupRequest _
derive instance repGenericCreateParameterGroupRequest :: Generic CreateParameterGroupRequest _
instance showCreateParameterGroupRequest :: Show CreateParameterGroupRequest where show = genericShow
instance decodeCreateParameterGroupRequest :: Decode CreateParameterGroupRequest where decode = genericDecode options
instance encodeCreateParameterGroupRequest :: Encode CreateParameterGroupRequest where encode = genericEncode options

-- | Constructs CreateParameterGroupRequest from required parameters
newCreateParameterGroupRequest :: String -> CreateParameterGroupRequest
newCreateParameterGroupRequest _ParameterGroupName = CreateParameterGroupRequest { "ParameterGroupName": _ParameterGroupName, "Description": Nothing }

-- | Constructs CreateParameterGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateParameterGroupRequest' :: String -> ( { "ParameterGroupName" :: (String) , "Description" :: Maybe (String) } -> {"ParameterGroupName" :: (String) , "Description" :: Maybe (String) } ) -> CreateParameterGroupRequest
newCreateParameterGroupRequest' _ParameterGroupName customize = (CreateParameterGroupRequest <<< customize) { "ParameterGroupName": _ParameterGroupName, "Description": Nothing }



newtype CreateParameterGroupResponse = CreateParameterGroupResponse 
  { "ParameterGroup" :: Maybe (ParameterGroup)
  }
derive instance newtypeCreateParameterGroupResponse :: Newtype CreateParameterGroupResponse _
derive instance repGenericCreateParameterGroupResponse :: Generic CreateParameterGroupResponse _
instance showCreateParameterGroupResponse :: Show CreateParameterGroupResponse where show = genericShow
instance decodeCreateParameterGroupResponse :: Decode CreateParameterGroupResponse where decode = genericDecode options
instance encodeCreateParameterGroupResponse :: Encode CreateParameterGroupResponse where encode = genericEncode options

-- | Constructs CreateParameterGroupResponse from required parameters
newCreateParameterGroupResponse :: CreateParameterGroupResponse
newCreateParameterGroupResponse  = CreateParameterGroupResponse { "ParameterGroup": Nothing }

-- | Constructs CreateParameterGroupResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateParameterGroupResponse' :: ( { "ParameterGroup" :: Maybe (ParameterGroup) } -> {"ParameterGroup" :: Maybe (ParameterGroup) } ) -> CreateParameterGroupResponse
newCreateParameterGroupResponse'  customize = (CreateParameterGroupResponse <<< customize) { "ParameterGroup": Nothing }



newtype CreateSubnetGroupRequest = CreateSubnetGroupRequest 
  { "SubnetGroupName" :: (String)
  , "Description" :: Maybe (String)
  , "SubnetIds" :: (SubnetIdentifierList)
  }
derive instance newtypeCreateSubnetGroupRequest :: Newtype CreateSubnetGroupRequest _
derive instance repGenericCreateSubnetGroupRequest :: Generic CreateSubnetGroupRequest _
instance showCreateSubnetGroupRequest :: Show CreateSubnetGroupRequest where show = genericShow
instance decodeCreateSubnetGroupRequest :: Decode CreateSubnetGroupRequest where decode = genericDecode options
instance encodeCreateSubnetGroupRequest :: Encode CreateSubnetGroupRequest where encode = genericEncode options

-- | Constructs CreateSubnetGroupRequest from required parameters
newCreateSubnetGroupRequest :: String -> SubnetIdentifierList -> CreateSubnetGroupRequest
newCreateSubnetGroupRequest _SubnetGroupName _SubnetIds = CreateSubnetGroupRequest { "SubnetGroupName": _SubnetGroupName, "SubnetIds": _SubnetIds, "Description": Nothing }

-- | Constructs CreateSubnetGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateSubnetGroupRequest' :: String -> SubnetIdentifierList -> ( { "SubnetGroupName" :: (String) , "Description" :: Maybe (String) , "SubnetIds" :: (SubnetIdentifierList) } -> {"SubnetGroupName" :: (String) , "Description" :: Maybe (String) , "SubnetIds" :: (SubnetIdentifierList) } ) -> CreateSubnetGroupRequest
newCreateSubnetGroupRequest' _SubnetGroupName _SubnetIds customize = (CreateSubnetGroupRequest <<< customize) { "SubnetGroupName": _SubnetGroupName, "SubnetIds": _SubnetIds, "Description": Nothing }



newtype CreateSubnetGroupResponse = CreateSubnetGroupResponse 
  { "SubnetGroup" :: Maybe (SubnetGroup)
  }
derive instance newtypeCreateSubnetGroupResponse :: Newtype CreateSubnetGroupResponse _
derive instance repGenericCreateSubnetGroupResponse :: Generic CreateSubnetGroupResponse _
instance showCreateSubnetGroupResponse :: Show CreateSubnetGroupResponse where show = genericShow
instance decodeCreateSubnetGroupResponse :: Decode CreateSubnetGroupResponse where decode = genericDecode options
instance encodeCreateSubnetGroupResponse :: Encode CreateSubnetGroupResponse where encode = genericEncode options

-- | Constructs CreateSubnetGroupResponse from required parameters
newCreateSubnetGroupResponse :: CreateSubnetGroupResponse
newCreateSubnetGroupResponse  = CreateSubnetGroupResponse { "SubnetGroup": Nothing }

-- | Constructs CreateSubnetGroupResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateSubnetGroupResponse' :: ( { "SubnetGroup" :: Maybe (SubnetGroup) } -> {"SubnetGroup" :: Maybe (SubnetGroup) } ) -> CreateSubnetGroupResponse
newCreateSubnetGroupResponse'  customize = (CreateSubnetGroupResponse <<< customize) { "SubnetGroup": Nothing }



newtype DecreaseReplicationFactorRequest = DecreaseReplicationFactorRequest 
  { "ClusterName" :: (String)
  , "NewReplicationFactor" :: (Int)
  , "AvailabilityZones" :: Maybe (AvailabilityZoneList)
  , "NodeIdsToRemove" :: Maybe (NodeIdentifierList)
  }
derive instance newtypeDecreaseReplicationFactorRequest :: Newtype DecreaseReplicationFactorRequest _
derive instance repGenericDecreaseReplicationFactorRequest :: Generic DecreaseReplicationFactorRequest _
instance showDecreaseReplicationFactorRequest :: Show DecreaseReplicationFactorRequest where show = genericShow
instance decodeDecreaseReplicationFactorRequest :: Decode DecreaseReplicationFactorRequest where decode = genericDecode options
instance encodeDecreaseReplicationFactorRequest :: Encode DecreaseReplicationFactorRequest where encode = genericEncode options

-- | Constructs DecreaseReplicationFactorRequest from required parameters
newDecreaseReplicationFactorRequest :: String -> Int -> DecreaseReplicationFactorRequest
newDecreaseReplicationFactorRequest _ClusterName _NewReplicationFactor = DecreaseReplicationFactorRequest { "ClusterName": _ClusterName, "NewReplicationFactor": _NewReplicationFactor, "AvailabilityZones": Nothing, "NodeIdsToRemove": Nothing }

-- | Constructs DecreaseReplicationFactorRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDecreaseReplicationFactorRequest' :: String -> Int -> ( { "ClusterName" :: (String) , "NewReplicationFactor" :: (Int) , "AvailabilityZones" :: Maybe (AvailabilityZoneList) , "NodeIdsToRemove" :: Maybe (NodeIdentifierList) } -> {"ClusterName" :: (String) , "NewReplicationFactor" :: (Int) , "AvailabilityZones" :: Maybe (AvailabilityZoneList) , "NodeIdsToRemove" :: Maybe (NodeIdentifierList) } ) -> DecreaseReplicationFactorRequest
newDecreaseReplicationFactorRequest' _ClusterName _NewReplicationFactor customize = (DecreaseReplicationFactorRequest <<< customize) { "ClusterName": _ClusterName, "NewReplicationFactor": _NewReplicationFactor, "AvailabilityZones": Nothing, "NodeIdsToRemove": Nothing }



newtype DecreaseReplicationFactorResponse = DecreaseReplicationFactorResponse 
  { "Cluster" :: Maybe (Cluster)
  }
derive instance newtypeDecreaseReplicationFactorResponse :: Newtype DecreaseReplicationFactorResponse _
derive instance repGenericDecreaseReplicationFactorResponse :: Generic DecreaseReplicationFactorResponse _
instance showDecreaseReplicationFactorResponse :: Show DecreaseReplicationFactorResponse where show = genericShow
instance decodeDecreaseReplicationFactorResponse :: Decode DecreaseReplicationFactorResponse where decode = genericDecode options
instance encodeDecreaseReplicationFactorResponse :: Encode DecreaseReplicationFactorResponse where encode = genericEncode options

-- | Constructs DecreaseReplicationFactorResponse from required parameters
newDecreaseReplicationFactorResponse :: DecreaseReplicationFactorResponse
newDecreaseReplicationFactorResponse  = DecreaseReplicationFactorResponse { "Cluster": Nothing }

-- | Constructs DecreaseReplicationFactorResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDecreaseReplicationFactorResponse' :: ( { "Cluster" :: Maybe (Cluster) } -> {"Cluster" :: Maybe (Cluster) } ) -> DecreaseReplicationFactorResponse
newDecreaseReplicationFactorResponse'  customize = (DecreaseReplicationFactorResponse <<< customize) { "Cluster": Nothing }



newtype DeleteClusterRequest = DeleteClusterRequest 
  { "ClusterName" :: (String)
  }
derive instance newtypeDeleteClusterRequest :: Newtype DeleteClusterRequest _
derive instance repGenericDeleteClusterRequest :: Generic DeleteClusterRequest _
instance showDeleteClusterRequest :: Show DeleteClusterRequest where show = genericShow
instance decodeDeleteClusterRequest :: Decode DeleteClusterRequest where decode = genericDecode options
instance encodeDeleteClusterRequest :: Encode DeleteClusterRequest where encode = genericEncode options

-- | Constructs DeleteClusterRequest from required parameters
newDeleteClusterRequest :: String -> DeleteClusterRequest
newDeleteClusterRequest _ClusterName = DeleteClusterRequest { "ClusterName": _ClusterName }

-- | Constructs DeleteClusterRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteClusterRequest' :: String -> ( { "ClusterName" :: (String) } -> {"ClusterName" :: (String) } ) -> DeleteClusterRequest
newDeleteClusterRequest' _ClusterName customize = (DeleteClusterRequest <<< customize) { "ClusterName": _ClusterName }



newtype DeleteClusterResponse = DeleteClusterResponse 
  { "Cluster" :: Maybe (Cluster)
  }
derive instance newtypeDeleteClusterResponse :: Newtype DeleteClusterResponse _
derive instance repGenericDeleteClusterResponse :: Generic DeleteClusterResponse _
instance showDeleteClusterResponse :: Show DeleteClusterResponse where show = genericShow
instance decodeDeleteClusterResponse :: Decode DeleteClusterResponse where decode = genericDecode options
instance encodeDeleteClusterResponse :: Encode DeleteClusterResponse where encode = genericEncode options

-- | Constructs DeleteClusterResponse from required parameters
newDeleteClusterResponse :: DeleteClusterResponse
newDeleteClusterResponse  = DeleteClusterResponse { "Cluster": Nothing }

-- | Constructs DeleteClusterResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteClusterResponse' :: ( { "Cluster" :: Maybe (Cluster) } -> {"Cluster" :: Maybe (Cluster) } ) -> DeleteClusterResponse
newDeleteClusterResponse'  customize = (DeleteClusterResponse <<< customize) { "Cluster": Nothing }



newtype DeleteParameterGroupRequest = DeleteParameterGroupRequest 
  { "ParameterGroupName" :: (String)
  }
derive instance newtypeDeleteParameterGroupRequest :: Newtype DeleteParameterGroupRequest _
derive instance repGenericDeleteParameterGroupRequest :: Generic DeleteParameterGroupRequest _
instance showDeleteParameterGroupRequest :: Show DeleteParameterGroupRequest where show = genericShow
instance decodeDeleteParameterGroupRequest :: Decode DeleteParameterGroupRequest where decode = genericDecode options
instance encodeDeleteParameterGroupRequest :: Encode DeleteParameterGroupRequest where encode = genericEncode options

-- | Constructs DeleteParameterGroupRequest from required parameters
newDeleteParameterGroupRequest :: String -> DeleteParameterGroupRequest
newDeleteParameterGroupRequest _ParameterGroupName = DeleteParameterGroupRequest { "ParameterGroupName": _ParameterGroupName }

-- | Constructs DeleteParameterGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteParameterGroupRequest' :: String -> ( { "ParameterGroupName" :: (String) } -> {"ParameterGroupName" :: (String) } ) -> DeleteParameterGroupRequest
newDeleteParameterGroupRequest' _ParameterGroupName customize = (DeleteParameterGroupRequest <<< customize) { "ParameterGroupName": _ParameterGroupName }



newtype DeleteParameterGroupResponse = DeleteParameterGroupResponse 
  { "DeletionMessage" :: Maybe (String)
  }
derive instance newtypeDeleteParameterGroupResponse :: Newtype DeleteParameterGroupResponse _
derive instance repGenericDeleteParameterGroupResponse :: Generic DeleteParameterGroupResponse _
instance showDeleteParameterGroupResponse :: Show DeleteParameterGroupResponse where show = genericShow
instance decodeDeleteParameterGroupResponse :: Decode DeleteParameterGroupResponse where decode = genericDecode options
instance encodeDeleteParameterGroupResponse :: Encode DeleteParameterGroupResponse where encode = genericEncode options

-- | Constructs DeleteParameterGroupResponse from required parameters
newDeleteParameterGroupResponse :: DeleteParameterGroupResponse
newDeleteParameterGroupResponse  = DeleteParameterGroupResponse { "DeletionMessage": Nothing }

-- | Constructs DeleteParameterGroupResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteParameterGroupResponse' :: ( { "DeletionMessage" :: Maybe (String) } -> {"DeletionMessage" :: Maybe (String) } ) -> DeleteParameterGroupResponse
newDeleteParameterGroupResponse'  customize = (DeleteParameterGroupResponse <<< customize) { "DeletionMessage": Nothing }



newtype DeleteSubnetGroupRequest = DeleteSubnetGroupRequest 
  { "SubnetGroupName" :: (String)
  }
derive instance newtypeDeleteSubnetGroupRequest :: Newtype DeleteSubnetGroupRequest _
derive instance repGenericDeleteSubnetGroupRequest :: Generic DeleteSubnetGroupRequest _
instance showDeleteSubnetGroupRequest :: Show DeleteSubnetGroupRequest where show = genericShow
instance decodeDeleteSubnetGroupRequest :: Decode DeleteSubnetGroupRequest where decode = genericDecode options
instance encodeDeleteSubnetGroupRequest :: Encode DeleteSubnetGroupRequest where encode = genericEncode options

-- | Constructs DeleteSubnetGroupRequest from required parameters
newDeleteSubnetGroupRequest :: String -> DeleteSubnetGroupRequest
newDeleteSubnetGroupRequest _SubnetGroupName = DeleteSubnetGroupRequest { "SubnetGroupName": _SubnetGroupName }

-- | Constructs DeleteSubnetGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteSubnetGroupRequest' :: String -> ( { "SubnetGroupName" :: (String) } -> {"SubnetGroupName" :: (String) } ) -> DeleteSubnetGroupRequest
newDeleteSubnetGroupRequest' _SubnetGroupName customize = (DeleteSubnetGroupRequest <<< customize) { "SubnetGroupName": _SubnetGroupName }



newtype DeleteSubnetGroupResponse = DeleteSubnetGroupResponse 
  { "DeletionMessage" :: Maybe (String)
  }
derive instance newtypeDeleteSubnetGroupResponse :: Newtype DeleteSubnetGroupResponse _
derive instance repGenericDeleteSubnetGroupResponse :: Generic DeleteSubnetGroupResponse _
instance showDeleteSubnetGroupResponse :: Show DeleteSubnetGroupResponse where show = genericShow
instance decodeDeleteSubnetGroupResponse :: Decode DeleteSubnetGroupResponse where decode = genericDecode options
instance encodeDeleteSubnetGroupResponse :: Encode DeleteSubnetGroupResponse where encode = genericEncode options

-- | Constructs DeleteSubnetGroupResponse from required parameters
newDeleteSubnetGroupResponse :: DeleteSubnetGroupResponse
newDeleteSubnetGroupResponse  = DeleteSubnetGroupResponse { "DeletionMessage": Nothing }

-- | Constructs DeleteSubnetGroupResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteSubnetGroupResponse' :: ( { "DeletionMessage" :: Maybe (String) } -> {"DeletionMessage" :: Maybe (String) } ) -> DeleteSubnetGroupResponse
newDeleteSubnetGroupResponse'  customize = (DeleteSubnetGroupResponse <<< customize) { "DeletionMessage": Nothing }



newtype DescribeClustersRequest = DescribeClustersRequest 
  { "ClusterNames" :: Maybe (ClusterNameList)
  , "MaxResults" :: Maybe (IntegerOptional)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeDescribeClustersRequest :: Newtype DescribeClustersRequest _
derive instance repGenericDescribeClustersRequest :: Generic DescribeClustersRequest _
instance showDescribeClustersRequest :: Show DescribeClustersRequest where show = genericShow
instance decodeDescribeClustersRequest :: Decode DescribeClustersRequest where decode = genericDecode options
instance encodeDescribeClustersRequest :: Encode DescribeClustersRequest where encode = genericEncode options

-- | Constructs DescribeClustersRequest from required parameters
newDescribeClustersRequest :: DescribeClustersRequest
newDescribeClustersRequest  = DescribeClustersRequest { "ClusterNames": Nothing, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs DescribeClustersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeClustersRequest' :: ( { "ClusterNames" :: Maybe (ClusterNameList) , "MaxResults" :: Maybe (IntegerOptional) , "NextToken" :: Maybe (String) } -> {"ClusterNames" :: Maybe (ClusterNameList) , "MaxResults" :: Maybe (IntegerOptional) , "NextToken" :: Maybe (String) } ) -> DescribeClustersRequest
newDescribeClustersRequest'  customize = (DescribeClustersRequest <<< customize) { "ClusterNames": Nothing, "MaxResults": Nothing, "NextToken": Nothing }



newtype DescribeClustersResponse = DescribeClustersResponse 
  { "NextToken" :: Maybe (String)
  , "Clusters" :: Maybe (ClusterList)
  }
derive instance newtypeDescribeClustersResponse :: Newtype DescribeClustersResponse _
derive instance repGenericDescribeClustersResponse :: Generic DescribeClustersResponse _
instance showDescribeClustersResponse :: Show DescribeClustersResponse where show = genericShow
instance decodeDescribeClustersResponse :: Decode DescribeClustersResponse where decode = genericDecode options
instance encodeDescribeClustersResponse :: Encode DescribeClustersResponse where encode = genericEncode options

-- | Constructs DescribeClustersResponse from required parameters
newDescribeClustersResponse :: DescribeClustersResponse
newDescribeClustersResponse  = DescribeClustersResponse { "Clusters": Nothing, "NextToken": Nothing }

-- | Constructs DescribeClustersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeClustersResponse' :: ( { "NextToken" :: Maybe (String) , "Clusters" :: Maybe (ClusterList) } -> {"NextToken" :: Maybe (String) , "Clusters" :: Maybe (ClusterList) } ) -> DescribeClustersResponse
newDescribeClustersResponse'  customize = (DescribeClustersResponse <<< customize) { "Clusters": Nothing, "NextToken": Nothing }



newtype DescribeDefaultParametersRequest = DescribeDefaultParametersRequest 
  { "MaxResults" :: Maybe (IntegerOptional)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeDescribeDefaultParametersRequest :: Newtype DescribeDefaultParametersRequest _
derive instance repGenericDescribeDefaultParametersRequest :: Generic DescribeDefaultParametersRequest _
instance showDescribeDefaultParametersRequest :: Show DescribeDefaultParametersRequest where show = genericShow
instance decodeDescribeDefaultParametersRequest :: Decode DescribeDefaultParametersRequest where decode = genericDecode options
instance encodeDescribeDefaultParametersRequest :: Encode DescribeDefaultParametersRequest where encode = genericEncode options

-- | Constructs DescribeDefaultParametersRequest from required parameters
newDescribeDefaultParametersRequest :: DescribeDefaultParametersRequest
newDescribeDefaultParametersRequest  = DescribeDefaultParametersRequest { "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs DescribeDefaultParametersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeDefaultParametersRequest' :: ( { "MaxResults" :: Maybe (IntegerOptional) , "NextToken" :: Maybe (String) } -> {"MaxResults" :: Maybe (IntegerOptional) , "NextToken" :: Maybe (String) } ) -> DescribeDefaultParametersRequest
newDescribeDefaultParametersRequest'  customize = (DescribeDefaultParametersRequest <<< customize) { "MaxResults": Nothing, "NextToken": Nothing }



newtype DescribeDefaultParametersResponse = DescribeDefaultParametersResponse 
  { "NextToken" :: Maybe (String)
  , "Parameters" :: Maybe (ParameterList)
  }
derive instance newtypeDescribeDefaultParametersResponse :: Newtype DescribeDefaultParametersResponse _
derive instance repGenericDescribeDefaultParametersResponse :: Generic DescribeDefaultParametersResponse _
instance showDescribeDefaultParametersResponse :: Show DescribeDefaultParametersResponse where show = genericShow
instance decodeDescribeDefaultParametersResponse :: Decode DescribeDefaultParametersResponse where decode = genericDecode options
instance encodeDescribeDefaultParametersResponse :: Encode DescribeDefaultParametersResponse where encode = genericEncode options

-- | Constructs DescribeDefaultParametersResponse from required parameters
newDescribeDefaultParametersResponse :: DescribeDefaultParametersResponse
newDescribeDefaultParametersResponse  = DescribeDefaultParametersResponse { "NextToken": Nothing, "Parameters": Nothing }

-- | Constructs DescribeDefaultParametersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeDefaultParametersResponse' :: ( { "NextToken" :: Maybe (String) , "Parameters" :: Maybe (ParameterList) } -> {"NextToken" :: Maybe (String) , "Parameters" :: Maybe (ParameterList) } ) -> DescribeDefaultParametersResponse
newDescribeDefaultParametersResponse'  customize = (DescribeDefaultParametersResponse <<< customize) { "NextToken": Nothing, "Parameters": Nothing }



newtype DescribeEventsRequest = DescribeEventsRequest 
  { "SourceName" :: Maybe (String)
  , "SourceType" :: Maybe (SourceType)
  , "StartTime" :: Maybe (TStamp)
  , "EndTime" :: Maybe (TStamp)
  , "Duration" :: Maybe (IntegerOptional)
  , "MaxResults" :: Maybe (IntegerOptional)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeDescribeEventsRequest :: Newtype DescribeEventsRequest _
derive instance repGenericDescribeEventsRequest :: Generic DescribeEventsRequest _
instance showDescribeEventsRequest :: Show DescribeEventsRequest where show = genericShow
instance decodeDescribeEventsRequest :: Decode DescribeEventsRequest where decode = genericDecode options
instance encodeDescribeEventsRequest :: Encode DescribeEventsRequest where encode = genericEncode options

-- | Constructs DescribeEventsRequest from required parameters
newDescribeEventsRequest :: DescribeEventsRequest
newDescribeEventsRequest  = DescribeEventsRequest { "Duration": Nothing, "EndTime": Nothing, "MaxResults": Nothing, "NextToken": Nothing, "SourceName": Nothing, "SourceType": Nothing, "StartTime": Nothing }

-- | Constructs DescribeEventsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEventsRequest' :: ( { "SourceName" :: Maybe (String) , "SourceType" :: Maybe (SourceType) , "StartTime" :: Maybe (TStamp) , "EndTime" :: Maybe (TStamp) , "Duration" :: Maybe (IntegerOptional) , "MaxResults" :: Maybe (IntegerOptional) , "NextToken" :: Maybe (String) } -> {"SourceName" :: Maybe (String) , "SourceType" :: Maybe (SourceType) , "StartTime" :: Maybe (TStamp) , "EndTime" :: Maybe (TStamp) , "Duration" :: Maybe (IntegerOptional) , "MaxResults" :: Maybe (IntegerOptional) , "NextToken" :: Maybe (String) } ) -> DescribeEventsRequest
newDescribeEventsRequest'  customize = (DescribeEventsRequest <<< customize) { "Duration": Nothing, "EndTime": Nothing, "MaxResults": Nothing, "NextToken": Nothing, "SourceName": Nothing, "SourceType": Nothing, "StartTime": Nothing }



newtype DescribeEventsResponse = DescribeEventsResponse 
  { "NextToken" :: Maybe (String)
  , "Events" :: Maybe (EventList)
  }
derive instance newtypeDescribeEventsResponse :: Newtype DescribeEventsResponse _
derive instance repGenericDescribeEventsResponse :: Generic DescribeEventsResponse _
instance showDescribeEventsResponse :: Show DescribeEventsResponse where show = genericShow
instance decodeDescribeEventsResponse :: Decode DescribeEventsResponse where decode = genericDecode options
instance encodeDescribeEventsResponse :: Encode DescribeEventsResponse where encode = genericEncode options

-- | Constructs DescribeEventsResponse from required parameters
newDescribeEventsResponse :: DescribeEventsResponse
newDescribeEventsResponse  = DescribeEventsResponse { "Events": Nothing, "NextToken": Nothing }

-- | Constructs DescribeEventsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEventsResponse' :: ( { "NextToken" :: Maybe (String) , "Events" :: Maybe (EventList) } -> {"NextToken" :: Maybe (String) , "Events" :: Maybe (EventList) } ) -> DescribeEventsResponse
newDescribeEventsResponse'  customize = (DescribeEventsResponse <<< customize) { "Events": Nothing, "NextToken": Nothing }



newtype DescribeParameterGroupsRequest = DescribeParameterGroupsRequest 
  { "ParameterGroupNames" :: Maybe (ParameterGroupNameList)
  , "MaxResults" :: Maybe (IntegerOptional)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeDescribeParameterGroupsRequest :: Newtype DescribeParameterGroupsRequest _
derive instance repGenericDescribeParameterGroupsRequest :: Generic DescribeParameterGroupsRequest _
instance showDescribeParameterGroupsRequest :: Show DescribeParameterGroupsRequest where show = genericShow
instance decodeDescribeParameterGroupsRequest :: Decode DescribeParameterGroupsRequest where decode = genericDecode options
instance encodeDescribeParameterGroupsRequest :: Encode DescribeParameterGroupsRequest where encode = genericEncode options

-- | Constructs DescribeParameterGroupsRequest from required parameters
newDescribeParameterGroupsRequest :: DescribeParameterGroupsRequest
newDescribeParameterGroupsRequest  = DescribeParameterGroupsRequest { "MaxResults": Nothing, "NextToken": Nothing, "ParameterGroupNames": Nothing }

-- | Constructs DescribeParameterGroupsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeParameterGroupsRequest' :: ( { "ParameterGroupNames" :: Maybe (ParameterGroupNameList) , "MaxResults" :: Maybe (IntegerOptional) , "NextToken" :: Maybe (String) } -> {"ParameterGroupNames" :: Maybe (ParameterGroupNameList) , "MaxResults" :: Maybe (IntegerOptional) , "NextToken" :: Maybe (String) } ) -> DescribeParameterGroupsRequest
newDescribeParameterGroupsRequest'  customize = (DescribeParameterGroupsRequest <<< customize) { "MaxResults": Nothing, "NextToken": Nothing, "ParameterGroupNames": Nothing }



newtype DescribeParameterGroupsResponse = DescribeParameterGroupsResponse 
  { "NextToken" :: Maybe (String)
  , "ParameterGroups" :: Maybe (ParameterGroupList)
  }
derive instance newtypeDescribeParameterGroupsResponse :: Newtype DescribeParameterGroupsResponse _
derive instance repGenericDescribeParameterGroupsResponse :: Generic DescribeParameterGroupsResponse _
instance showDescribeParameterGroupsResponse :: Show DescribeParameterGroupsResponse where show = genericShow
instance decodeDescribeParameterGroupsResponse :: Decode DescribeParameterGroupsResponse where decode = genericDecode options
instance encodeDescribeParameterGroupsResponse :: Encode DescribeParameterGroupsResponse where encode = genericEncode options

-- | Constructs DescribeParameterGroupsResponse from required parameters
newDescribeParameterGroupsResponse :: DescribeParameterGroupsResponse
newDescribeParameterGroupsResponse  = DescribeParameterGroupsResponse { "NextToken": Nothing, "ParameterGroups": Nothing }

-- | Constructs DescribeParameterGroupsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeParameterGroupsResponse' :: ( { "NextToken" :: Maybe (String) , "ParameterGroups" :: Maybe (ParameterGroupList) } -> {"NextToken" :: Maybe (String) , "ParameterGroups" :: Maybe (ParameterGroupList) } ) -> DescribeParameterGroupsResponse
newDescribeParameterGroupsResponse'  customize = (DescribeParameterGroupsResponse <<< customize) { "NextToken": Nothing, "ParameterGroups": Nothing }



newtype DescribeParametersRequest = DescribeParametersRequest 
  { "ParameterGroupName" :: (String)
  , "Source" :: Maybe (String)
  , "MaxResults" :: Maybe (IntegerOptional)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeDescribeParametersRequest :: Newtype DescribeParametersRequest _
derive instance repGenericDescribeParametersRequest :: Generic DescribeParametersRequest _
instance showDescribeParametersRequest :: Show DescribeParametersRequest where show = genericShow
instance decodeDescribeParametersRequest :: Decode DescribeParametersRequest where decode = genericDecode options
instance encodeDescribeParametersRequest :: Encode DescribeParametersRequest where encode = genericEncode options

-- | Constructs DescribeParametersRequest from required parameters
newDescribeParametersRequest :: String -> DescribeParametersRequest
newDescribeParametersRequest _ParameterGroupName = DescribeParametersRequest { "ParameterGroupName": _ParameterGroupName, "MaxResults": Nothing, "NextToken": Nothing, "Source": Nothing }

-- | Constructs DescribeParametersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeParametersRequest' :: String -> ( { "ParameterGroupName" :: (String) , "Source" :: Maybe (String) , "MaxResults" :: Maybe (IntegerOptional) , "NextToken" :: Maybe (String) } -> {"ParameterGroupName" :: (String) , "Source" :: Maybe (String) , "MaxResults" :: Maybe (IntegerOptional) , "NextToken" :: Maybe (String) } ) -> DescribeParametersRequest
newDescribeParametersRequest' _ParameterGroupName customize = (DescribeParametersRequest <<< customize) { "ParameterGroupName": _ParameterGroupName, "MaxResults": Nothing, "NextToken": Nothing, "Source": Nothing }



newtype DescribeParametersResponse = DescribeParametersResponse 
  { "NextToken" :: Maybe (String)
  , "Parameters" :: Maybe (ParameterList)
  }
derive instance newtypeDescribeParametersResponse :: Newtype DescribeParametersResponse _
derive instance repGenericDescribeParametersResponse :: Generic DescribeParametersResponse _
instance showDescribeParametersResponse :: Show DescribeParametersResponse where show = genericShow
instance decodeDescribeParametersResponse :: Decode DescribeParametersResponse where decode = genericDecode options
instance encodeDescribeParametersResponse :: Encode DescribeParametersResponse where encode = genericEncode options

-- | Constructs DescribeParametersResponse from required parameters
newDescribeParametersResponse :: DescribeParametersResponse
newDescribeParametersResponse  = DescribeParametersResponse { "NextToken": Nothing, "Parameters": Nothing }

-- | Constructs DescribeParametersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeParametersResponse' :: ( { "NextToken" :: Maybe (String) , "Parameters" :: Maybe (ParameterList) } -> {"NextToken" :: Maybe (String) , "Parameters" :: Maybe (ParameterList) } ) -> DescribeParametersResponse
newDescribeParametersResponse'  customize = (DescribeParametersResponse <<< customize) { "NextToken": Nothing, "Parameters": Nothing }



newtype DescribeSubnetGroupsRequest = DescribeSubnetGroupsRequest 
  { "SubnetGroupNames" :: Maybe (SubnetGroupNameList)
  , "MaxResults" :: Maybe (IntegerOptional)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeDescribeSubnetGroupsRequest :: Newtype DescribeSubnetGroupsRequest _
derive instance repGenericDescribeSubnetGroupsRequest :: Generic DescribeSubnetGroupsRequest _
instance showDescribeSubnetGroupsRequest :: Show DescribeSubnetGroupsRequest where show = genericShow
instance decodeDescribeSubnetGroupsRequest :: Decode DescribeSubnetGroupsRequest where decode = genericDecode options
instance encodeDescribeSubnetGroupsRequest :: Encode DescribeSubnetGroupsRequest where encode = genericEncode options

-- | Constructs DescribeSubnetGroupsRequest from required parameters
newDescribeSubnetGroupsRequest :: DescribeSubnetGroupsRequest
newDescribeSubnetGroupsRequest  = DescribeSubnetGroupsRequest { "MaxResults": Nothing, "NextToken": Nothing, "SubnetGroupNames": Nothing }

-- | Constructs DescribeSubnetGroupsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeSubnetGroupsRequest' :: ( { "SubnetGroupNames" :: Maybe (SubnetGroupNameList) , "MaxResults" :: Maybe (IntegerOptional) , "NextToken" :: Maybe (String) } -> {"SubnetGroupNames" :: Maybe (SubnetGroupNameList) , "MaxResults" :: Maybe (IntegerOptional) , "NextToken" :: Maybe (String) } ) -> DescribeSubnetGroupsRequest
newDescribeSubnetGroupsRequest'  customize = (DescribeSubnetGroupsRequest <<< customize) { "MaxResults": Nothing, "NextToken": Nothing, "SubnetGroupNames": Nothing }



newtype DescribeSubnetGroupsResponse = DescribeSubnetGroupsResponse 
  { "NextToken" :: Maybe (String)
  , "SubnetGroups" :: Maybe (SubnetGroupList)
  }
derive instance newtypeDescribeSubnetGroupsResponse :: Newtype DescribeSubnetGroupsResponse _
derive instance repGenericDescribeSubnetGroupsResponse :: Generic DescribeSubnetGroupsResponse _
instance showDescribeSubnetGroupsResponse :: Show DescribeSubnetGroupsResponse where show = genericShow
instance decodeDescribeSubnetGroupsResponse :: Decode DescribeSubnetGroupsResponse where decode = genericDecode options
instance encodeDescribeSubnetGroupsResponse :: Encode DescribeSubnetGroupsResponse where encode = genericEncode options

-- | Constructs DescribeSubnetGroupsResponse from required parameters
newDescribeSubnetGroupsResponse :: DescribeSubnetGroupsResponse
newDescribeSubnetGroupsResponse  = DescribeSubnetGroupsResponse { "NextToken": Nothing, "SubnetGroups": Nothing }

-- | Constructs DescribeSubnetGroupsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeSubnetGroupsResponse' :: ( { "NextToken" :: Maybe (String) , "SubnetGroups" :: Maybe (SubnetGroupList) } -> {"NextToken" :: Maybe (String) , "SubnetGroups" :: Maybe (SubnetGroupList) } ) -> DescribeSubnetGroupsResponse
newDescribeSubnetGroupsResponse'  customize = (DescribeSubnetGroupsResponse <<< customize) { "NextToken": Nothing, "SubnetGroups": Nothing }



-- | <p>Represents the information required for client programs to connect to the configuration endpoint for a DAX cluster, or to an individual node within the cluster.</p>
newtype Endpoint = Endpoint 
  { "Address" :: Maybe (String)
  , "Port" :: Maybe (Int)
  }
derive instance newtypeEndpoint :: Newtype Endpoint _
derive instance repGenericEndpoint :: Generic Endpoint _
instance showEndpoint :: Show Endpoint where show = genericShow
instance decodeEndpoint :: Decode Endpoint where decode = genericDecode options
instance encodeEndpoint :: Encode Endpoint where encode = genericEncode options

-- | Constructs Endpoint from required parameters
newEndpoint :: Endpoint
newEndpoint  = Endpoint { "Address": Nothing, "Port": Nothing }

-- | Constructs Endpoint's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEndpoint' :: ( { "Address" :: Maybe (String) , "Port" :: Maybe (Int) } -> {"Address" :: Maybe (String) , "Port" :: Maybe (Int) } ) -> Endpoint
newEndpoint'  customize = (Endpoint <<< customize) { "Address": Nothing, "Port": Nothing }



-- | <p>Represents a single occurrence of something interesting within the system. Some examples of events are creating a DAX cluster, adding or removing a node, or rebooting a node.</p>
newtype Event = Event 
  { "SourceName" :: Maybe (String)
  , "SourceType" :: Maybe (SourceType)
  , "Message" :: Maybe (String)
  , "Date" :: Maybe (TStamp)
  }
derive instance newtypeEvent :: Newtype Event _
derive instance repGenericEvent :: Generic Event _
instance showEvent :: Show Event where show = genericShow
instance decodeEvent :: Decode Event where decode = genericDecode options
instance encodeEvent :: Encode Event where encode = genericEncode options

-- | Constructs Event from required parameters
newEvent :: Event
newEvent  = Event { "Date": Nothing, "Message": Nothing, "SourceName": Nothing, "SourceType": Nothing }

-- | Constructs Event's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEvent' :: ( { "SourceName" :: Maybe (String) , "SourceType" :: Maybe (SourceType) , "Message" :: Maybe (String) , "Date" :: Maybe (TStamp) } -> {"SourceName" :: Maybe (String) , "SourceType" :: Maybe (SourceType) , "Message" :: Maybe (String) , "Date" :: Maybe (TStamp) } ) -> Event
newEvent'  customize = (Event <<< customize) { "Date": Nothing, "Message": Nothing, "SourceName": Nothing, "SourceType": Nothing }



newtype EventList = EventList (Array Event)
derive instance newtypeEventList :: Newtype EventList _
derive instance repGenericEventList :: Generic EventList _
instance showEventList :: Show EventList where show = genericShow
instance decodeEventList :: Decode EventList where decode = genericDecode options
instance encodeEventList :: Encode EventList where encode = genericEncode options



newtype IncreaseReplicationFactorRequest = IncreaseReplicationFactorRequest 
  { "ClusterName" :: (String)
  , "NewReplicationFactor" :: (Int)
  , "AvailabilityZones" :: Maybe (AvailabilityZoneList)
  }
derive instance newtypeIncreaseReplicationFactorRequest :: Newtype IncreaseReplicationFactorRequest _
derive instance repGenericIncreaseReplicationFactorRequest :: Generic IncreaseReplicationFactorRequest _
instance showIncreaseReplicationFactorRequest :: Show IncreaseReplicationFactorRequest where show = genericShow
instance decodeIncreaseReplicationFactorRequest :: Decode IncreaseReplicationFactorRequest where decode = genericDecode options
instance encodeIncreaseReplicationFactorRequest :: Encode IncreaseReplicationFactorRequest where encode = genericEncode options

-- | Constructs IncreaseReplicationFactorRequest from required parameters
newIncreaseReplicationFactorRequest :: String -> Int -> IncreaseReplicationFactorRequest
newIncreaseReplicationFactorRequest _ClusterName _NewReplicationFactor = IncreaseReplicationFactorRequest { "ClusterName": _ClusterName, "NewReplicationFactor": _NewReplicationFactor, "AvailabilityZones": Nothing }

-- | Constructs IncreaseReplicationFactorRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIncreaseReplicationFactorRequest' :: String -> Int -> ( { "ClusterName" :: (String) , "NewReplicationFactor" :: (Int) , "AvailabilityZones" :: Maybe (AvailabilityZoneList) } -> {"ClusterName" :: (String) , "NewReplicationFactor" :: (Int) , "AvailabilityZones" :: Maybe (AvailabilityZoneList) } ) -> IncreaseReplicationFactorRequest
newIncreaseReplicationFactorRequest' _ClusterName _NewReplicationFactor customize = (IncreaseReplicationFactorRequest <<< customize) { "ClusterName": _ClusterName, "NewReplicationFactor": _NewReplicationFactor, "AvailabilityZones": Nothing }



newtype IncreaseReplicationFactorResponse = IncreaseReplicationFactorResponse 
  { "Cluster" :: Maybe (Cluster)
  }
derive instance newtypeIncreaseReplicationFactorResponse :: Newtype IncreaseReplicationFactorResponse _
derive instance repGenericIncreaseReplicationFactorResponse :: Generic IncreaseReplicationFactorResponse _
instance showIncreaseReplicationFactorResponse :: Show IncreaseReplicationFactorResponse where show = genericShow
instance decodeIncreaseReplicationFactorResponse :: Decode IncreaseReplicationFactorResponse where decode = genericDecode options
instance encodeIncreaseReplicationFactorResponse :: Encode IncreaseReplicationFactorResponse where encode = genericEncode options

-- | Constructs IncreaseReplicationFactorResponse from required parameters
newIncreaseReplicationFactorResponse :: IncreaseReplicationFactorResponse
newIncreaseReplicationFactorResponse  = IncreaseReplicationFactorResponse { "Cluster": Nothing }

-- | Constructs IncreaseReplicationFactorResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIncreaseReplicationFactorResponse' :: ( { "Cluster" :: Maybe (Cluster) } -> {"Cluster" :: Maybe (Cluster) } ) -> IncreaseReplicationFactorResponse
newIncreaseReplicationFactorResponse'  customize = (IncreaseReplicationFactorResponse <<< customize) { "Cluster": Nothing }



-- | <p>There are not enough system resources to create the cluster you requested (or to resize an already-existing cluster). </p>
newtype InsufficientClusterCapacityFault = InsufficientClusterCapacityFault Types.NoArguments
derive instance newtypeInsufficientClusterCapacityFault :: Newtype InsufficientClusterCapacityFault _
derive instance repGenericInsufficientClusterCapacityFault :: Generic InsufficientClusterCapacityFault _
instance showInsufficientClusterCapacityFault :: Show InsufficientClusterCapacityFault where show = genericShow
instance decodeInsufficientClusterCapacityFault :: Decode InsufficientClusterCapacityFault where decode = genericDecode options
instance encodeInsufficientClusterCapacityFault :: Encode InsufficientClusterCapacityFault where encode = genericEncode options



newtype IntegerOptional = IntegerOptional Int
derive instance newtypeIntegerOptional :: Newtype IntegerOptional _
derive instance repGenericIntegerOptional :: Generic IntegerOptional _
instance showIntegerOptional :: Show IntegerOptional where show = genericShow
instance decodeIntegerOptional :: Decode IntegerOptional where decode = genericDecode options
instance encodeIntegerOptional :: Encode IntegerOptional where encode = genericEncode options



-- | <p>The Amazon Resource Name (ARN) supplied in the request is not valid.</p>
newtype InvalidARNFault = InvalidARNFault Types.NoArguments
derive instance newtypeInvalidARNFault :: Newtype InvalidARNFault _
derive instance repGenericInvalidARNFault :: Generic InvalidARNFault _
instance showInvalidARNFault :: Show InvalidARNFault where show = genericShow
instance decodeInvalidARNFault :: Decode InvalidARNFault where decode = genericDecode options
instance encodeInvalidARNFault :: Encode InvalidARNFault where encode = genericEncode options



-- | <p>The requested DAX cluster is not in the <i>available</i> state.</p>
newtype InvalidClusterStateFault = InvalidClusterStateFault Types.NoArguments
derive instance newtypeInvalidClusterStateFault :: Newtype InvalidClusterStateFault _
derive instance repGenericInvalidClusterStateFault :: Generic InvalidClusterStateFault _
instance showInvalidClusterStateFault :: Show InvalidClusterStateFault where show = genericShow
instance decodeInvalidClusterStateFault :: Decode InvalidClusterStateFault where decode = genericDecode options
instance encodeInvalidClusterStateFault :: Encode InvalidClusterStateFault where encode = genericEncode options



-- | <p>Two or more incompatible parameters were specified.</p>
newtype InvalidParameterCombinationException = InvalidParameterCombinationException 
  { "message" :: Maybe (AwsQueryErrorMessage)
  }
derive instance newtypeInvalidParameterCombinationException :: Newtype InvalidParameterCombinationException _
derive instance repGenericInvalidParameterCombinationException :: Generic InvalidParameterCombinationException _
instance showInvalidParameterCombinationException :: Show InvalidParameterCombinationException where show = genericShow
instance decodeInvalidParameterCombinationException :: Decode InvalidParameterCombinationException where decode = genericDecode options
instance encodeInvalidParameterCombinationException :: Encode InvalidParameterCombinationException where encode = genericEncode options

-- | Constructs InvalidParameterCombinationException from required parameters
newInvalidParameterCombinationException :: InvalidParameterCombinationException
newInvalidParameterCombinationException  = InvalidParameterCombinationException { "message": Nothing }

-- | Constructs InvalidParameterCombinationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidParameterCombinationException' :: ( { "message" :: Maybe (AwsQueryErrorMessage) } -> {"message" :: Maybe (AwsQueryErrorMessage) } ) -> InvalidParameterCombinationException
newInvalidParameterCombinationException'  customize = (InvalidParameterCombinationException <<< customize) { "message": Nothing }



-- | <p>One or more parameters in a parameter group are in an invalid state.</p>
newtype InvalidParameterGroupStateFault = InvalidParameterGroupStateFault Types.NoArguments
derive instance newtypeInvalidParameterGroupStateFault :: Newtype InvalidParameterGroupStateFault _
derive instance repGenericInvalidParameterGroupStateFault :: Generic InvalidParameterGroupStateFault _
instance showInvalidParameterGroupStateFault :: Show InvalidParameterGroupStateFault where show = genericShow
instance decodeInvalidParameterGroupStateFault :: Decode InvalidParameterGroupStateFault where decode = genericDecode options
instance encodeInvalidParameterGroupStateFault :: Encode InvalidParameterGroupStateFault where encode = genericEncode options



-- | <p>The value for a parameter is invalid.</p>
newtype InvalidParameterValueException = InvalidParameterValueException 
  { "message" :: Maybe (AwsQueryErrorMessage)
  }
derive instance newtypeInvalidParameterValueException :: Newtype InvalidParameterValueException _
derive instance repGenericInvalidParameterValueException :: Generic InvalidParameterValueException _
instance showInvalidParameterValueException :: Show InvalidParameterValueException where show = genericShow
instance decodeInvalidParameterValueException :: Decode InvalidParameterValueException where decode = genericDecode options
instance encodeInvalidParameterValueException :: Encode InvalidParameterValueException where encode = genericEncode options

-- | Constructs InvalidParameterValueException from required parameters
newInvalidParameterValueException :: InvalidParameterValueException
newInvalidParameterValueException  = InvalidParameterValueException { "message": Nothing }

-- | Constructs InvalidParameterValueException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidParameterValueException' :: ( { "message" :: Maybe (AwsQueryErrorMessage) } -> {"message" :: Maybe (AwsQueryErrorMessage) } ) -> InvalidParameterValueException
newInvalidParameterValueException'  customize = (InvalidParameterValueException <<< customize) { "message": Nothing }



-- | <p>An invalid subnet identifier was specified.</p>
newtype InvalidSubnet = InvalidSubnet Types.NoArguments
derive instance newtypeInvalidSubnet :: Newtype InvalidSubnet _
derive instance repGenericInvalidSubnet :: Generic InvalidSubnet _
instance showInvalidSubnet :: Show InvalidSubnet where show = genericShow
instance decodeInvalidSubnet :: Decode InvalidSubnet where decode = genericDecode options
instance encodeInvalidSubnet :: Encode InvalidSubnet where encode = genericEncode options



-- | <p>The VPC network is in an invalid state.</p>
newtype InvalidVPCNetworkStateFault = InvalidVPCNetworkStateFault Types.NoArguments
derive instance newtypeInvalidVPCNetworkStateFault :: Newtype InvalidVPCNetworkStateFault _
derive instance repGenericInvalidVPCNetworkStateFault :: Generic InvalidVPCNetworkStateFault _
instance showInvalidVPCNetworkStateFault :: Show InvalidVPCNetworkStateFault where show = genericShow
instance decodeInvalidVPCNetworkStateFault :: Decode InvalidVPCNetworkStateFault where decode = genericDecode options
instance encodeInvalidVPCNetworkStateFault :: Encode InvalidVPCNetworkStateFault where encode = genericEncode options



newtype IsModifiable = IsModifiable String
derive instance newtypeIsModifiable :: Newtype IsModifiable _
derive instance repGenericIsModifiable :: Generic IsModifiable _
instance showIsModifiable :: Show IsModifiable where show = genericShow
instance decodeIsModifiable :: Decode IsModifiable where decode = genericDecode options
instance encodeIsModifiable :: Encode IsModifiable where encode = genericEncode options



newtype KeyList = KeyList (Array String)
derive instance newtypeKeyList :: Newtype KeyList _
derive instance repGenericKeyList :: Generic KeyList _
instance showKeyList :: Show KeyList where show = genericShow
instance decodeKeyList :: Decode KeyList where decode = genericDecode options
instance encodeKeyList :: Encode KeyList where encode = genericEncode options



newtype ListTagsRequest = ListTagsRequest 
  { "ResourceName" :: (String)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeListTagsRequest :: Newtype ListTagsRequest _
derive instance repGenericListTagsRequest :: Generic ListTagsRequest _
instance showListTagsRequest :: Show ListTagsRequest where show = genericShow
instance decodeListTagsRequest :: Decode ListTagsRequest where decode = genericDecode options
instance encodeListTagsRequest :: Encode ListTagsRequest where encode = genericEncode options

-- | Constructs ListTagsRequest from required parameters
newListTagsRequest :: String -> ListTagsRequest
newListTagsRequest _ResourceName = ListTagsRequest { "ResourceName": _ResourceName, "NextToken": Nothing }

-- | Constructs ListTagsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTagsRequest' :: String -> ( { "ResourceName" :: (String) , "NextToken" :: Maybe (String) } -> {"ResourceName" :: (String) , "NextToken" :: Maybe (String) } ) -> ListTagsRequest
newListTagsRequest' _ResourceName customize = (ListTagsRequest <<< customize) { "ResourceName": _ResourceName, "NextToken": Nothing }



newtype ListTagsResponse = ListTagsResponse 
  { "Tags" :: Maybe (TagList)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeListTagsResponse :: Newtype ListTagsResponse _
derive instance repGenericListTagsResponse :: Generic ListTagsResponse _
instance showListTagsResponse :: Show ListTagsResponse where show = genericShow
instance decodeListTagsResponse :: Decode ListTagsResponse where decode = genericDecode options
instance encodeListTagsResponse :: Encode ListTagsResponse where encode = genericEncode options

-- | Constructs ListTagsResponse from required parameters
newListTagsResponse :: ListTagsResponse
newListTagsResponse  = ListTagsResponse { "NextToken": Nothing, "Tags": Nothing }

-- | Constructs ListTagsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTagsResponse' :: ( { "Tags" :: Maybe (TagList) , "NextToken" :: Maybe (String) } -> {"Tags" :: Maybe (TagList) , "NextToken" :: Maybe (String) } ) -> ListTagsResponse
newListTagsResponse'  customize = (ListTagsResponse <<< customize) { "NextToken": Nothing, "Tags": Nothing }



-- | <p>Represents an individual node within a DAX cluster.</p>
newtype Node = Node 
  { "NodeId" :: Maybe (String)
  , "Endpoint" :: Maybe (Endpoint)
  , "NodeCreateTime" :: Maybe (TStamp)
  , "AvailabilityZone" :: Maybe (String)
  , "NodeStatus" :: Maybe (String)
  , "ParameterGroupStatus" :: Maybe (String)
  }
derive instance newtypeNode :: Newtype Node _
derive instance repGenericNode :: Generic Node _
instance showNode :: Show Node where show = genericShow
instance decodeNode :: Decode Node where decode = genericDecode options
instance encodeNode :: Encode Node where encode = genericEncode options

-- | Constructs Node from required parameters
newNode :: Node
newNode  = Node { "AvailabilityZone": Nothing, "Endpoint": Nothing, "NodeCreateTime": Nothing, "NodeId": Nothing, "NodeStatus": Nothing, "ParameterGroupStatus": Nothing }

-- | Constructs Node's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNode' :: ( { "NodeId" :: Maybe (String) , "Endpoint" :: Maybe (Endpoint) , "NodeCreateTime" :: Maybe (TStamp) , "AvailabilityZone" :: Maybe (String) , "NodeStatus" :: Maybe (String) , "ParameterGroupStatus" :: Maybe (String) } -> {"NodeId" :: Maybe (String) , "Endpoint" :: Maybe (Endpoint) , "NodeCreateTime" :: Maybe (TStamp) , "AvailabilityZone" :: Maybe (String) , "NodeStatus" :: Maybe (String) , "ParameterGroupStatus" :: Maybe (String) } ) -> Node
newNode'  customize = (Node <<< customize) { "AvailabilityZone": Nothing, "Endpoint": Nothing, "NodeCreateTime": Nothing, "NodeId": Nothing, "NodeStatus": Nothing, "ParameterGroupStatus": Nothing }



newtype NodeIdentifierList = NodeIdentifierList (Array String)
derive instance newtypeNodeIdentifierList :: Newtype NodeIdentifierList _
derive instance repGenericNodeIdentifierList :: Generic NodeIdentifierList _
instance showNodeIdentifierList :: Show NodeIdentifierList where show = genericShow
instance decodeNodeIdentifierList :: Decode NodeIdentifierList where decode = genericDecode options
instance encodeNodeIdentifierList :: Encode NodeIdentifierList where encode = genericEncode options



newtype NodeList = NodeList (Array Node)
derive instance newtypeNodeList :: Newtype NodeList _
derive instance repGenericNodeList :: Generic NodeList _
instance showNodeList :: Show NodeList where show = genericShow
instance decodeNodeList :: Decode NodeList where decode = genericDecode options
instance encodeNodeList :: Encode NodeList where encode = genericEncode options



-- | <p>None of the nodes in the cluster have the given node ID.</p>
newtype NodeNotFoundFault = NodeNotFoundFault Types.NoArguments
derive instance newtypeNodeNotFoundFault :: Newtype NodeNotFoundFault _
derive instance repGenericNodeNotFoundFault :: Generic NodeNotFoundFault _
instance showNodeNotFoundFault :: Show NodeNotFoundFault where show = genericShow
instance decodeNodeNotFoundFault :: Decode NodeNotFoundFault where decode = genericDecode options
instance encodeNodeNotFoundFault :: Encode NodeNotFoundFault where encode = genericEncode options



-- | <p>You have attempted to exceed the maximum number of nodes for a DAX cluster.</p>
newtype NodeQuotaForClusterExceededFault = NodeQuotaForClusterExceededFault Types.NoArguments
derive instance newtypeNodeQuotaForClusterExceededFault :: Newtype NodeQuotaForClusterExceededFault _
derive instance repGenericNodeQuotaForClusterExceededFault :: Generic NodeQuotaForClusterExceededFault _
instance showNodeQuotaForClusterExceededFault :: Show NodeQuotaForClusterExceededFault where show = genericShow
instance decodeNodeQuotaForClusterExceededFault :: Decode NodeQuotaForClusterExceededFault where decode = genericDecode options
instance encodeNodeQuotaForClusterExceededFault :: Encode NodeQuotaForClusterExceededFault where encode = genericEncode options



-- | <p>You have attempted to exceed the maximum number of nodes for your AWS account.</p>
newtype NodeQuotaForCustomerExceededFault = NodeQuotaForCustomerExceededFault Types.NoArguments
derive instance newtypeNodeQuotaForCustomerExceededFault :: Newtype NodeQuotaForCustomerExceededFault _
derive instance repGenericNodeQuotaForCustomerExceededFault :: Generic NodeQuotaForCustomerExceededFault _
instance showNodeQuotaForCustomerExceededFault :: Show NodeQuotaForCustomerExceededFault where show = genericShow
instance decodeNodeQuotaForCustomerExceededFault :: Decode NodeQuotaForCustomerExceededFault where decode = genericDecode options
instance encodeNodeQuotaForCustomerExceededFault :: Encode NodeQuotaForCustomerExceededFault where encode = genericEncode options



-- | <p>Represents a parameter value that is applicable to a particular node type.</p>
newtype NodeTypeSpecificValue = NodeTypeSpecificValue 
  { "NodeType" :: Maybe (String)
  , "Value" :: Maybe (String)
  }
derive instance newtypeNodeTypeSpecificValue :: Newtype NodeTypeSpecificValue _
derive instance repGenericNodeTypeSpecificValue :: Generic NodeTypeSpecificValue _
instance showNodeTypeSpecificValue :: Show NodeTypeSpecificValue where show = genericShow
instance decodeNodeTypeSpecificValue :: Decode NodeTypeSpecificValue where decode = genericDecode options
instance encodeNodeTypeSpecificValue :: Encode NodeTypeSpecificValue where encode = genericEncode options

-- | Constructs NodeTypeSpecificValue from required parameters
newNodeTypeSpecificValue :: NodeTypeSpecificValue
newNodeTypeSpecificValue  = NodeTypeSpecificValue { "NodeType": Nothing, "Value": Nothing }

-- | Constructs NodeTypeSpecificValue's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNodeTypeSpecificValue' :: ( { "NodeType" :: Maybe (String) , "Value" :: Maybe (String) } -> {"NodeType" :: Maybe (String) , "Value" :: Maybe (String) } ) -> NodeTypeSpecificValue
newNodeTypeSpecificValue'  customize = (NodeTypeSpecificValue <<< customize) { "NodeType": Nothing, "Value": Nothing }



newtype NodeTypeSpecificValueList = NodeTypeSpecificValueList (Array NodeTypeSpecificValue)
derive instance newtypeNodeTypeSpecificValueList :: Newtype NodeTypeSpecificValueList _
derive instance repGenericNodeTypeSpecificValueList :: Generic NodeTypeSpecificValueList _
instance showNodeTypeSpecificValueList :: Show NodeTypeSpecificValueList where show = genericShow
instance decodeNodeTypeSpecificValueList :: Decode NodeTypeSpecificValueList where decode = genericDecode options
instance encodeNodeTypeSpecificValueList :: Encode NodeTypeSpecificValueList where encode = genericEncode options



-- | <p>Describes a notification topic and its status. Notification topics are used for publishing DAX events to subscribers using Amazon Simple Notification Service (SNS).</p>
newtype NotificationConfiguration = NotificationConfiguration 
  { "TopicArn" :: Maybe (String)
  , "TopicStatus" :: Maybe (String)
  }
derive instance newtypeNotificationConfiguration :: Newtype NotificationConfiguration _
derive instance repGenericNotificationConfiguration :: Generic NotificationConfiguration _
instance showNotificationConfiguration :: Show NotificationConfiguration where show = genericShow
instance decodeNotificationConfiguration :: Decode NotificationConfiguration where decode = genericDecode options
instance encodeNotificationConfiguration :: Encode NotificationConfiguration where encode = genericEncode options

-- | Constructs NotificationConfiguration from required parameters
newNotificationConfiguration :: NotificationConfiguration
newNotificationConfiguration  = NotificationConfiguration { "TopicArn": Nothing, "TopicStatus": Nothing }

-- | Constructs NotificationConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotificationConfiguration' :: ( { "TopicArn" :: Maybe (String) , "TopicStatus" :: Maybe (String) } -> {"TopicArn" :: Maybe (String) , "TopicStatus" :: Maybe (String) } ) -> NotificationConfiguration
newNotificationConfiguration'  customize = (NotificationConfiguration <<< customize) { "TopicArn": Nothing, "TopicStatus": Nothing }



-- | <p>Describes an individual setting that controls some aspect of DAX behavior.</p>
newtype Parameter = Parameter 
  { "ParameterName" :: Maybe (String)
  , "ParameterType" :: Maybe (ParameterType)
  , "ParameterValue" :: Maybe (String)
  , "NodeTypeSpecificValues" :: Maybe (NodeTypeSpecificValueList)
  , "Description" :: Maybe (String)
  , "Source" :: Maybe (String)
  , "DataType" :: Maybe (String)
  , "AllowedValues" :: Maybe (String)
  , "IsModifiable" :: Maybe (IsModifiable)
  , "ChangeType" :: Maybe (ChangeType)
  }
derive instance newtypeParameter :: Newtype Parameter _
derive instance repGenericParameter :: Generic Parameter _
instance showParameter :: Show Parameter where show = genericShow
instance decodeParameter :: Decode Parameter where decode = genericDecode options
instance encodeParameter :: Encode Parameter where encode = genericEncode options

-- | Constructs Parameter from required parameters
newParameter :: Parameter
newParameter  = Parameter { "AllowedValues": Nothing, "ChangeType": Nothing, "DataType": Nothing, "Description": Nothing, "IsModifiable": Nothing, "NodeTypeSpecificValues": Nothing, "ParameterName": Nothing, "ParameterType": Nothing, "ParameterValue": Nothing, "Source": Nothing }

-- | Constructs Parameter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newParameter' :: ( { "ParameterName" :: Maybe (String) , "ParameterType" :: Maybe (ParameterType) , "ParameterValue" :: Maybe (String) , "NodeTypeSpecificValues" :: Maybe (NodeTypeSpecificValueList) , "Description" :: Maybe (String) , "Source" :: Maybe (String) , "DataType" :: Maybe (String) , "AllowedValues" :: Maybe (String) , "IsModifiable" :: Maybe (IsModifiable) , "ChangeType" :: Maybe (ChangeType) } -> {"ParameterName" :: Maybe (String) , "ParameterType" :: Maybe (ParameterType) , "ParameterValue" :: Maybe (String) , "NodeTypeSpecificValues" :: Maybe (NodeTypeSpecificValueList) , "Description" :: Maybe (String) , "Source" :: Maybe (String) , "DataType" :: Maybe (String) , "AllowedValues" :: Maybe (String) , "IsModifiable" :: Maybe (IsModifiable) , "ChangeType" :: Maybe (ChangeType) } ) -> Parameter
newParameter'  customize = (Parameter <<< customize) { "AllowedValues": Nothing, "ChangeType": Nothing, "DataType": Nothing, "Description": Nothing, "IsModifiable": Nothing, "NodeTypeSpecificValues": Nothing, "ParameterName": Nothing, "ParameterType": Nothing, "ParameterValue": Nothing, "Source": Nothing }



-- | <p>A named set of parameters that are applied to all of the nodes in a DAX cluster.</p>
newtype ParameterGroup = ParameterGroup 
  { "ParameterGroupName" :: Maybe (String)
  , "Description" :: Maybe (String)
  }
derive instance newtypeParameterGroup :: Newtype ParameterGroup _
derive instance repGenericParameterGroup :: Generic ParameterGroup _
instance showParameterGroup :: Show ParameterGroup where show = genericShow
instance decodeParameterGroup :: Decode ParameterGroup where decode = genericDecode options
instance encodeParameterGroup :: Encode ParameterGroup where encode = genericEncode options

-- | Constructs ParameterGroup from required parameters
newParameterGroup :: ParameterGroup
newParameterGroup  = ParameterGroup { "Description": Nothing, "ParameterGroupName": Nothing }

-- | Constructs ParameterGroup's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newParameterGroup' :: ( { "ParameterGroupName" :: Maybe (String) , "Description" :: Maybe (String) } -> {"ParameterGroupName" :: Maybe (String) , "Description" :: Maybe (String) } ) -> ParameterGroup
newParameterGroup'  customize = (ParameterGroup <<< customize) { "Description": Nothing, "ParameterGroupName": Nothing }



-- | <p>The specified parameter group already exists.</p>
newtype ParameterGroupAlreadyExistsFault = ParameterGroupAlreadyExistsFault Types.NoArguments
derive instance newtypeParameterGroupAlreadyExistsFault :: Newtype ParameterGroupAlreadyExistsFault _
derive instance repGenericParameterGroupAlreadyExistsFault :: Generic ParameterGroupAlreadyExistsFault _
instance showParameterGroupAlreadyExistsFault :: Show ParameterGroupAlreadyExistsFault where show = genericShow
instance decodeParameterGroupAlreadyExistsFault :: Decode ParameterGroupAlreadyExistsFault where decode = genericDecode options
instance encodeParameterGroupAlreadyExistsFault :: Encode ParameterGroupAlreadyExistsFault where encode = genericEncode options



newtype ParameterGroupList = ParameterGroupList (Array ParameterGroup)
derive instance newtypeParameterGroupList :: Newtype ParameterGroupList _
derive instance repGenericParameterGroupList :: Generic ParameterGroupList _
instance showParameterGroupList :: Show ParameterGroupList where show = genericShow
instance decodeParameterGroupList :: Decode ParameterGroupList where decode = genericDecode options
instance encodeParameterGroupList :: Encode ParameterGroupList where encode = genericEncode options



newtype ParameterGroupNameList = ParameterGroupNameList (Array String)
derive instance newtypeParameterGroupNameList :: Newtype ParameterGroupNameList _
derive instance repGenericParameterGroupNameList :: Generic ParameterGroupNameList _
instance showParameterGroupNameList :: Show ParameterGroupNameList where show = genericShow
instance decodeParameterGroupNameList :: Decode ParameterGroupNameList where decode = genericDecode options
instance encodeParameterGroupNameList :: Encode ParameterGroupNameList where encode = genericEncode options



-- | <p>The specified parameter group does not exist.</p>
newtype ParameterGroupNotFoundFault = ParameterGroupNotFoundFault Types.NoArguments
derive instance newtypeParameterGroupNotFoundFault :: Newtype ParameterGroupNotFoundFault _
derive instance repGenericParameterGroupNotFoundFault :: Generic ParameterGroupNotFoundFault _
instance showParameterGroupNotFoundFault :: Show ParameterGroupNotFoundFault where show = genericShow
instance decodeParameterGroupNotFoundFault :: Decode ParameterGroupNotFoundFault where decode = genericDecode options
instance encodeParameterGroupNotFoundFault :: Encode ParameterGroupNotFoundFault where encode = genericEncode options



-- | <p>You have attempted to exceed the maximum number of parameter groups.</p>
newtype ParameterGroupQuotaExceededFault = ParameterGroupQuotaExceededFault Types.NoArguments
derive instance newtypeParameterGroupQuotaExceededFault :: Newtype ParameterGroupQuotaExceededFault _
derive instance repGenericParameterGroupQuotaExceededFault :: Generic ParameterGroupQuotaExceededFault _
instance showParameterGroupQuotaExceededFault :: Show ParameterGroupQuotaExceededFault where show = genericShow
instance decodeParameterGroupQuotaExceededFault :: Decode ParameterGroupQuotaExceededFault where decode = genericDecode options
instance encodeParameterGroupQuotaExceededFault :: Encode ParameterGroupQuotaExceededFault where encode = genericEncode options



-- | <p>The status of a parameter group.</p>
newtype ParameterGroupStatus = ParameterGroupStatus 
  { "ParameterGroupName" :: Maybe (String)
  , "ParameterApplyStatus" :: Maybe (String)
  , "NodeIdsToReboot" :: Maybe (NodeIdentifierList)
  }
derive instance newtypeParameterGroupStatus :: Newtype ParameterGroupStatus _
derive instance repGenericParameterGroupStatus :: Generic ParameterGroupStatus _
instance showParameterGroupStatus :: Show ParameterGroupStatus where show = genericShow
instance decodeParameterGroupStatus :: Decode ParameterGroupStatus where decode = genericDecode options
instance encodeParameterGroupStatus :: Encode ParameterGroupStatus where encode = genericEncode options

-- | Constructs ParameterGroupStatus from required parameters
newParameterGroupStatus :: ParameterGroupStatus
newParameterGroupStatus  = ParameterGroupStatus { "NodeIdsToReboot": Nothing, "ParameterApplyStatus": Nothing, "ParameterGroupName": Nothing }

-- | Constructs ParameterGroupStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newParameterGroupStatus' :: ( { "ParameterGroupName" :: Maybe (String) , "ParameterApplyStatus" :: Maybe (String) , "NodeIdsToReboot" :: Maybe (NodeIdentifierList) } -> {"ParameterGroupName" :: Maybe (String) , "ParameterApplyStatus" :: Maybe (String) , "NodeIdsToReboot" :: Maybe (NodeIdentifierList) } ) -> ParameterGroupStatus
newParameterGroupStatus'  customize = (ParameterGroupStatus <<< customize) { "NodeIdsToReboot": Nothing, "ParameterApplyStatus": Nothing, "ParameterGroupName": Nothing }



newtype ParameterList = ParameterList (Array Parameter)
derive instance newtypeParameterList :: Newtype ParameterList _
derive instance repGenericParameterList :: Generic ParameterList _
instance showParameterList :: Show ParameterList where show = genericShow
instance decodeParameterList :: Decode ParameterList where decode = genericDecode options
instance encodeParameterList :: Encode ParameterList where encode = genericEncode options



-- | <p>An individual DAX parameter.</p>
newtype ParameterNameValue = ParameterNameValue 
  { "ParameterName" :: Maybe (String)
  , "ParameterValue" :: Maybe (String)
  }
derive instance newtypeParameterNameValue :: Newtype ParameterNameValue _
derive instance repGenericParameterNameValue :: Generic ParameterNameValue _
instance showParameterNameValue :: Show ParameterNameValue where show = genericShow
instance decodeParameterNameValue :: Decode ParameterNameValue where decode = genericDecode options
instance encodeParameterNameValue :: Encode ParameterNameValue where encode = genericEncode options

-- | Constructs ParameterNameValue from required parameters
newParameterNameValue :: ParameterNameValue
newParameterNameValue  = ParameterNameValue { "ParameterName": Nothing, "ParameterValue": Nothing }

-- | Constructs ParameterNameValue's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newParameterNameValue' :: ( { "ParameterName" :: Maybe (String) , "ParameterValue" :: Maybe (String) } -> {"ParameterName" :: Maybe (String) , "ParameterValue" :: Maybe (String) } ) -> ParameterNameValue
newParameterNameValue'  customize = (ParameterNameValue <<< customize) { "ParameterName": Nothing, "ParameterValue": Nothing }



newtype ParameterNameValueList = ParameterNameValueList (Array ParameterNameValue)
derive instance newtypeParameterNameValueList :: Newtype ParameterNameValueList _
derive instance repGenericParameterNameValueList :: Generic ParameterNameValueList _
instance showParameterNameValueList :: Show ParameterNameValueList where show = genericShow
instance decodeParameterNameValueList :: Decode ParameterNameValueList where decode = genericDecode options
instance encodeParameterNameValueList :: Encode ParameterNameValueList where encode = genericEncode options



newtype ParameterType = ParameterType String
derive instance newtypeParameterType :: Newtype ParameterType _
derive instance repGenericParameterType :: Generic ParameterType _
instance showParameterType :: Show ParameterType where show = genericShow
instance decodeParameterType :: Decode ParameterType where decode = genericDecode options
instance encodeParameterType :: Encode ParameterType where encode = genericEncode options



newtype RebootNodeRequest = RebootNodeRequest 
  { "ClusterName" :: (String)
  , "NodeId" :: (String)
  }
derive instance newtypeRebootNodeRequest :: Newtype RebootNodeRequest _
derive instance repGenericRebootNodeRequest :: Generic RebootNodeRequest _
instance showRebootNodeRequest :: Show RebootNodeRequest where show = genericShow
instance decodeRebootNodeRequest :: Decode RebootNodeRequest where decode = genericDecode options
instance encodeRebootNodeRequest :: Encode RebootNodeRequest where encode = genericEncode options

-- | Constructs RebootNodeRequest from required parameters
newRebootNodeRequest :: String -> String -> RebootNodeRequest
newRebootNodeRequest _ClusterName _NodeId = RebootNodeRequest { "ClusterName": _ClusterName, "NodeId": _NodeId }

-- | Constructs RebootNodeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRebootNodeRequest' :: String -> String -> ( { "ClusterName" :: (String) , "NodeId" :: (String) } -> {"ClusterName" :: (String) , "NodeId" :: (String) } ) -> RebootNodeRequest
newRebootNodeRequest' _ClusterName _NodeId customize = (RebootNodeRequest <<< customize) { "ClusterName": _ClusterName, "NodeId": _NodeId }



newtype RebootNodeResponse = RebootNodeResponse 
  { "Cluster" :: Maybe (Cluster)
  }
derive instance newtypeRebootNodeResponse :: Newtype RebootNodeResponse _
derive instance repGenericRebootNodeResponse :: Generic RebootNodeResponse _
instance showRebootNodeResponse :: Show RebootNodeResponse where show = genericShow
instance decodeRebootNodeResponse :: Decode RebootNodeResponse where decode = genericDecode options
instance encodeRebootNodeResponse :: Encode RebootNodeResponse where encode = genericEncode options

-- | Constructs RebootNodeResponse from required parameters
newRebootNodeResponse :: RebootNodeResponse
newRebootNodeResponse  = RebootNodeResponse { "Cluster": Nothing }

-- | Constructs RebootNodeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRebootNodeResponse' :: ( { "Cluster" :: Maybe (Cluster) } -> {"Cluster" :: Maybe (Cluster) } ) -> RebootNodeResponse
newRebootNodeResponse'  customize = (RebootNodeResponse <<< customize) { "Cluster": Nothing }



newtype SecurityGroupIdentifierList = SecurityGroupIdentifierList (Array String)
derive instance newtypeSecurityGroupIdentifierList :: Newtype SecurityGroupIdentifierList _
derive instance repGenericSecurityGroupIdentifierList :: Generic SecurityGroupIdentifierList _
instance showSecurityGroupIdentifierList :: Show SecurityGroupIdentifierList where show = genericShow
instance decodeSecurityGroupIdentifierList :: Decode SecurityGroupIdentifierList where decode = genericDecode options
instance encodeSecurityGroupIdentifierList :: Encode SecurityGroupIdentifierList where encode = genericEncode options



-- | <p>An individual VPC security group and its status.</p>
newtype SecurityGroupMembership = SecurityGroupMembership 
  { "SecurityGroupIdentifier" :: Maybe (String)
  , "Status" :: Maybe (String)
  }
derive instance newtypeSecurityGroupMembership :: Newtype SecurityGroupMembership _
derive instance repGenericSecurityGroupMembership :: Generic SecurityGroupMembership _
instance showSecurityGroupMembership :: Show SecurityGroupMembership where show = genericShow
instance decodeSecurityGroupMembership :: Decode SecurityGroupMembership where decode = genericDecode options
instance encodeSecurityGroupMembership :: Encode SecurityGroupMembership where encode = genericEncode options

-- | Constructs SecurityGroupMembership from required parameters
newSecurityGroupMembership :: SecurityGroupMembership
newSecurityGroupMembership  = SecurityGroupMembership { "SecurityGroupIdentifier": Nothing, "Status": Nothing }

-- | Constructs SecurityGroupMembership's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSecurityGroupMembership' :: ( { "SecurityGroupIdentifier" :: Maybe (String) , "Status" :: Maybe (String) } -> {"SecurityGroupIdentifier" :: Maybe (String) , "Status" :: Maybe (String) } ) -> SecurityGroupMembership
newSecurityGroupMembership'  customize = (SecurityGroupMembership <<< customize) { "SecurityGroupIdentifier": Nothing, "Status": Nothing }



newtype SecurityGroupMembershipList = SecurityGroupMembershipList (Array SecurityGroupMembership)
derive instance newtypeSecurityGroupMembershipList :: Newtype SecurityGroupMembershipList _
derive instance repGenericSecurityGroupMembershipList :: Generic SecurityGroupMembershipList _
instance showSecurityGroupMembershipList :: Show SecurityGroupMembershipList where show = genericShow
instance decodeSecurityGroupMembershipList :: Decode SecurityGroupMembershipList where decode = genericDecode options
instance encodeSecurityGroupMembershipList :: Encode SecurityGroupMembershipList where encode = genericEncode options



newtype SourceType = SourceType String
derive instance newtypeSourceType :: Newtype SourceType _
derive instance repGenericSourceType :: Generic SourceType _
instance showSourceType :: Show SourceType where show = genericShow
instance decodeSourceType :: Decode SourceType where decode = genericDecode options
instance encodeSourceType :: Encode SourceType where encode = genericEncode options



-- | <p>Represents the subnet associated with a DAX cluster. This parameter refers to subnets defined in Amazon Virtual Private Cloud (Amazon VPC) and used with DAX.</p>
newtype Subnet = Subnet 
  { "SubnetIdentifier" :: Maybe (String)
  , "SubnetAvailabilityZone" :: Maybe (String)
  }
derive instance newtypeSubnet :: Newtype Subnet _
derive instance repGenericSubnet :: Generic Subnet _
instance showSubnet :: Show Subnet where show = genericShow
instance decodeSubnet :: Decode Subnet where decode = genericDecode options
instance encodeSubnet :: Encode Subnet where encode = genericEncode options

-- | Constructs Subnet from required parameters
newSubnet :: Subnet
newSubnet  = Subnet { "SubnetAvailabilityZone": Nothing, "SubnetIdentifier": Nothing }

-- | Constructs Subnet's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSubnet' :: ( { "SubnetIdentifier" :: Maybe (String) , "SubnetAvailabilityZone" :: Maybe (String) } -> {"SubnetIdentifier" :: Maybe (String) , "SubnetAvailabilityZone" :: Maybe (String) } ) -> Subnet
newSubnet'  customize = (Subnet <<< customize) { "SubnetAvailabilityZone": Nothing, "SubnetIdentifier": Nothing }



-- | <p>Represents the output of one of the following actions:</p> <ul> <li> <p> <i>CreateSubnetGroup</i> </p> </li> <li> <p> <i>ModifySubnetGroup</i> </p> </li> </ul>
newtype SubnetGroup = SubnetGroup 
  { "SubnetGroupName" :: Maybe (String)
  , "Description" :: Maybe (String)
  , "VpcId" :: Maybe (String)
  , "Subnets" :: Maybe (SubnetList)
  }
derive instance newtypeSubnetGroup :: Newtype SubnetGroup _
derive instance repGenericSubnetGroup :: Generic SubnetGroup _
instance showSubnetGroup :: Show SubnetGroup where show = genericShow
instance decodeSubnetGroup :: Decode SubnetGroup where decode = genericDecode options
instance encodeSubnetGroup :: Encode SubnetGroup where encode = genericEncode options

-- | Constructs SubnetGroup from required parameters
newSubnetGroup :: SubnetGroup
newSubnetGroup  = SubnetGroup { "Description": Nothing, "SubnetGroupName": Nothing, "Subnets": Nothing, "VpcId": Nothing }

-- | Constructs SubnetGroup's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSubnetGroup' :: ( { "SubnetGroupName" :: Maybe (String) , "Description" :: Maybe (String) , "VpcId" :: Maybe (String) , "Subnets" :: Maybe (SubnetList) } -> {"SubnetGroupName" :: Maybe (String) , "Description" :: Maybe (String) , "VpcId" :: Maybe (String) , "Subnets" :: Maybe (SubnetList) } ) -> SubnetGroup
newSubnetGroup'  customize = (SubnetGroup <<< customize) { "Description": Nothing, "SubnetGroupName": Nothing, "Subnets": Nothing, "VpcId": Nothing }



-- | <p>The specified subnet group already exists.</p>
newtype SubnetGroupAlreadyExistsFault = SubnetGroupAlreadyExistsFault Types.NoArguments
derive instance newtypeSubnetGroupAlreadyExistsFault :: Newtype SubnetGroupAlreadyExistsFault _
derive instance repGenericSubnetGroupAlreadyExistsFault :: Generic SubnetGroupAlreadyExistsFault _
instance showSubnetGroupAlreadyExistsFault :: Show SubnetGroupAlreadyExistsFault where show = genericShow
instance decodeSubnetGroupAlreadyExistsFault :: Decode SubnetGroupAlreadyExistsFault where decode = genericDecode options
instance encodeSubnetGroupAlreadyExistsFault :: Encode SubnetGroupAlreadyExistsFault where encode = genericEncode options



-- | <p>The specified subnet group is currently in use.</p>
newtype SubnetGroupInUseFault = SubnetGroupInUseFault Types.NoArguments
derive instance newtypeSubnetGroupInUseFault :: Newtype SubnetGroupInUseFault _
derive instance repGenericSubnetGroupInUseFault :: Generic SubnetGroupInUseFault _
instance showSubnetGroupInUseFault :: Show SubnetGroupInUseFault where show = genericShow
instance decodeSubnetGroupInUseFault :: Decode SubnetGroupInUseFault where decode = genericDecode options
instance encodeSubnetGroupInUseFault :: Encode SubnetGroupInUseFault where encode = genericEncode options



newtype SubnetGroupList = SubnetGroupList (Array SubnetGroup)
derive instance newtypeSubnetGroupList :: Newtype SubnetGroupList _
derive instance repGenericSubnetGroupList :: Generic SubnetGroupList _
instance showSubnetGroupList :: Show SubnetGroupList where show = genericShow
instance decodeSubnetGroupList :: Decode SubnetGroupList where decode = genericDecode options
instance encodeSubnetGroupList :: Encode SubnetGroupList where encode = genericEncode options



newtype SubnetGroupNameList = SubnetGroupNameList (Array String)
derive instance newtypeSubnetGroupNameList :: Newtype SubnetGroupNameList _
derive instance repGenericSubnetGroupNameList :: Generic SubnetGroupNameList _
instance showSubnetGroupNameList :: Show SubnetGroupNameList where show = genericShow
instance decodeSubnetGroupNameList :: Decode SubnetGroupNameList where decode = genericDecode options
instance encodeSubnetGroupNameList :: Encode SubnetGroupNameList where encode = genericEncode options



-- | <p>The requested subnet group name does not refer to an existing subnet group.</p>
newtype SubnetGroupNotFoundFault = SubnetGroupNotFoundFault Types.NoArguments
derive instance newtypeSubnetGroupNotFoundFault :: Newtype SubnetGroupNotFoundFault _
derive instance repGenericSubnetGroupNotFoundFault :: Generic SubnetGroupNotFoundFault _
instance showSubnetGroupNotFoundFault :: Show SubnetGroupNotFoundFault where show = genericShow
instance decodeSubnetGroupNotFoundFault :: Decode SubnetGroupNotFoundFault where decode = genericDecode options
instance encodeSubnetGroupNotFoundFault :: Encode SubnetGroupNotFoundFault where encode = genericEncode options



-- | <p>The request cannot be processed because it would exceed the allowed number of subnets in a subnet group.</p>
newtype SubnetGroupQuotaExceededFault = SubnetGroupQuotaExceededFault Types.NoArguments
derive instance newtypeSubnetGroupQuotaExceededFault :: Newtype SubnetGroupQuotaExceededFault _
derive instance repGenericSubnetGroupQuotaExceededFault :: Generic SubnetGroupQuotaExceededFault _
instance showSubnetGroupQuotaExceededFault :: Show SubnetGroupQuotaExceededFault where show = genericShow
instance decodeSubnetGroupQuotaExceededFault :: Decode SubnetGroupQuotaExceededFault where decode = genericDecode options
instance encodeSubnetGroupQuotaExceededFault :: Encode SubnetGroupQuotaExceededFault where encode = genericEncode options



newtype SubnetIdentifierList = SubnetIdentifierList (Array String)
derive instance newtypeSubnetIdentifierList :: Newtype SubnetIdentifierList _
derive instance repGenericSubnetIdentifierList :: Generic SubnetIdentifierList _
instance showSubnetIdentifierList :: Show SubnetIdentifierList where show = genericShow
instance decodeSubnetIdentifierList :: Decode SubnetIdentifierList where decode = genericDecode options
instance encodeSubnetIdentifierList :: Encode SubnetIdentifierList where encode = genericEncode options



-- | <p>The requested subnet is being used by another subnet group.</p>
newtype SubnetInUse = SubnetInUse Types.NoArguments
derive instance newtypeSubnetInUse :: Newtype SubnetInUse _
derive instance repGenericSubnetInUse :: Generic SubnetInUse _
instance showSubnetInUse :: Show SubnetInUse where show = genericShow
instance decodeSubnetInUse :: Decode SubnetInUse where decode = genericDecode options
instance encodeSubnetInUse :: Encode SubnetInUse where encode = genericEncode options



newtype SubnetList = SubnetList (Array Subnet)
derive instance newtypeSubnetList :: Newtype SubnetList _
derive instance repGenericSubnetList :: Generic SubnetList _
instance showSubnetList :: Show SubnetList where show = genericShow
instance decodeSubnetList :: Decode SubnetList where decode = genericDecode options
instance encodeSubnetList :: Encode SubnetList where encode = genericEncode options



-- | <p>The request cannot be processed because it would exceed the allowed number of subnets in a subnet group.</p>
newtype SubnetQuotaExceededFault = SubnetQuotaExceededFault Types.NoArguments
derive instance newtypeSubnetQuotaExceededFault :: Newtype SubnetQuotaExceededFault _
derive instance repGenericSubnetQuotaExceededFault :: Generic SubnetQuotaExceededFault _
instance showSubnetQuotaExceededFault :: Show SubnetQuotaExceededFault where show = genericShow
instance decodeSubnetQuotaExceededFault :: Decode SubnetQuotaExceededFault where decode = genericDecode options
instance encodeSubnetQuotaExceededFault :: Encode SubnetQuotaExceededFault where encode = genericEncode options



newtype TStamp = TStamp Types.Timestamp
derive instance newtypeTStamp :: Newtype TStamp _
derive instance repGenericTStamp :: Generic TStamp _
instance showTStamp :: Show TStamp where show = genericShow
instance decodeTStamp :: Decode TStamp where decode = genericDecode options
instance encodeTStamp :: Encode TStamp where encode = genericEncode options



-- | <p>A description of a tag. Every tag is a key-value pair. You can add up to 50 tags to a single DAX cluster.</p> <p>AWS-assigned tag names and values are automatically assigned the <code>aws:</code> prefix, which the user cannot assign. AWS-assigned tag names do not count towards the tag limit of 50. User-assigned tag names have the prefix <code>user:</code>.</p> <p>You cannot backdate the application of a tag.</p>
newtype Tag = Tag 
  { "Key" :: Maybe (String)
  , "Value" :: Maybe (String)
  }
derive instance newtypeTag :: Newtype Tag _
derive instance repGenericTag :: Generic Tag _
instance showTag :: Show Tag where show = genericShow
instance decodeTag :: Decode Tag where decode = genericDecode options
instance encodeTag :: Encode Tag where encode = genericEncode options

-- | Constructs Tag from required parameters
newTag :: Tag
newTag  = Tag { "Key": Nothing, "Value": Nothing }

-- | Constructs Tag's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTag' :: ( { "Key" :: Maybe (String) , "Value" :: Maybe (String) } -> {"Key" :: Maybe (String) , "Value" :: Maybe (String) } ) -> Tag
newTag'  customize = (Tag <<< customize) { "Key": Nothing, "Value": Nothing }



newtype TagList = TagList (Array Tag)
derive instance newtypeTagList :: Newtype TagList _
derive instance repGenericTagList :: Generic TagList _
instance showTagList :: Show TagList where show = genericShow
instance decodeTagList :: Decode TagList where decode = genericDecode options
instance encodeTagList :: Encode TagList where encode = genericEncode options



-- | <p>The tag does not exist.</p>
newtype TagNotFoundFault = TagNotFoundFault Types.NoArguments
derive instance newtypeTagNotFoundFault :: Newtype TagNotFoundFault _
derive instance repGenericTagNotFoundFault :: Generic TagNotFoundFault _
instance showTagNotFoundFault :: Show TagNotFoundFault where show = genericShow
instance decodeTagNotFoundFault :: Decode TagNotFoundFault where decode = genericDecode options
instance encodeTagNotFoundFault :: Encode TagNotFoundFault where encode = genericEncode options



-- | <p>You have exceeded the maximum number of tags for this DAX cluster.</p>
newtype TagQuotaPerResourceExceeded = TagQuotaPerResourceExceeded Types.NoArguments
derive instance newtypeTagQuotaPerResourceExceeded :: Newtype TagQuotaPerResourceExceeded _
derive instance repGenericTagQuotaPerResourceExceeded :: Generic TagQuotaPerResourceExceeded _
instance showTagQuotaPerResourceExceeded :: Show TagQuotaPerResourceExceeded where show = genericShow
instance decodeTagQuotaPerResourceExceeded :: Decode TagQuotaPerResourceExceeded where decode = genericDecode options
instance encodeTagQuotaPerResourceExceeded :: Encode TagQuotaPerResourceExceeded where encode = genericEncode options



newtype TagResourceRequest = TagResourceRequest 
  { "ResourceName" :: (String)
  , "Tags" :: (TagList)
  }
derive instance newtypeTagResourceRequest :: Newtype TagResourceRequest _
derive instance repGenericTagResourceRequest :: Generic TagResourceRequest _
instance showTagResourceRequest :: Show TagResourceRequest where show = genericShow
instance decodeTagResourceRequest :: Decode TagResourceRequest where decode = genericDecode options
instance encodeTagResourceRequest :: Encode TagResourceRequest where encode = genericEncode options

-- | Constructs TagResourceRequest from required parameters
newTagResourceRequest :: String -> TagList -> TagResourceRequest
newTagResourceRequest _ResourceName _Tags = TagResourceRequest { "ResourceName": _ResourceName, "Tags": _Tags }

-- | Constructs TagResourceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTagResourceRequest' :: String -> TagList -> ( { "ResourceName" :: (String) , "Tags" :: (TagList) } -> {"ResourceName" :: (String) , "Tags" :: (TagList) } ) -> TagResourceRequest
newTagResourceRequest' _ResourceName _Tags customize = (TagResourceRequest <<< customize) { "ResourceName": _ResourceName, "Tags": _Tags }



newtype TagResourceResponse = TagResourceResponse 
  { "Tags" :: Maybe (TagList)
  }
derive instance newtypeTagResourceResponse :: Newtype TagResourceResponse _
derive instance repGenericTagResourceResponse :: Generic TagResourceResponse _
instance showTagResourceResponse :: Show TagResourceResponse where show = genericShow
instance decodeTagResourceResponse :: Decode TagResourceResponse where decode = genericDecode options
instance encodeTagResourceResponse :: Encode TagResourceResponse where encode = genericEncode options

-- | Constructs TagResourceResponse from required parameters
newTagResourceResponse :: TagResourceResponse
newTagResourceResponse  = TagResourceResponse { "Tags": Nothing }

-- | Constructs TagResourceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTagResourceResponse' :: ( { "Tags" :: Maybe (TagList) } -> {"Tags" :: Maybe (TagList) } ) -> TagResourceResponse
newTagResourceResponse'  customize = (TagResourceResponse <<< customize) { "Tags": Nothing }



newtype UntagResourceRequest = UntagResourceRequest 
  { "ResourceName" :: (String)
  , "TagKeys" :: (KeyList)
  }
derive instance newtypeUntagResourceRequest :: Newtype UntagResourceRequest _
derive instance repGenericUntagResourceRequest :: Generic UntagResourceRequest _
instance showUntagResourceRequest :: Show UntagResourceRequest where show = genericShow
instance decodeUntagResourceRequest :: Decode UntagResourceRequest where decode = genericDecode options
instance encodeUntagResourceRequest :: Encode UntagResourceRequest where encode = genericEncode options

-- | Constructs UntagResourceRequest from required parameters
newUntagResourceRequest :: String -> KeyList -> UntagResourceRequest
newUntagResourceRequest _ResourceName _TagKeys = UntagResourceRequest { "ResourceName": _ResourceName, "TagKeys": _TagKeys }

-- | Constructs UntagResourceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUntagResourceRequest' :: String -> KeyList -> ( { "ResourceName" :: (String) , "TagKeys" :: (KeyList) } -> {"ResourceName" :: (String) , "TagKeys" :: (KeyList) } ) -> UntagResourceRequest
newUntagResourceRequest' _ResourceName _TagKeys customize = (UntagResourceRequest <<< customize) { "ResourceName": _ResourceName, "TagKeys": _TagKeys }



newtype UntagResourceResponse = UntagResourceResponse 
  { "Tags" :: Maybe (TagList)
  }
derive instance newtypeUntagResourceResponse :: Newtype UntagResourceResponse _
derive instance repGenericUntagResourceResponse :: Generic UntagResourceResponse _
instance showUntagResourceResponse :: Show UntagResourceResponse where show = genericShow
instance decodeUntagResourceResponse :: Decode UntagResourceResponse where decode = genericDecode options
instance encodeUntagResourceResponse :: Encode UntagResourceResponse where encode = genericEncode options

-- | Constructs UntagResourceResponse from required parameters
newUntagResourceResponse :: UntagResourceResponse
newUntagResourceResponse  = UntagResourceResponse { "Tags": Nothing }

-- | Constructs UntagResourceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUntagResourceResponse' :: ( { "Tags" :: Maybe (TagList) } -> {"Tags" :: Maybe (TagList) } ) -> UntagResourceResponse
newUntagResourceResponse'  customize = (UntagResourceResponse <<< customize) { "Tags": Nothing }



newtype UpdateClusterRequest = UpdateClusterRequest 
  { "ClusterName" :: (String)
  , "Description" :: Maybe (String)
  , "PreferredMaintenanceWindow" :: Maybe (String)
  , "NotificationTopicArn" :: Maybe (String)
  , "NotificationTopicStatus" :: Maybe (String)
  , "ParameterGroupName" :: Maybe (String)
  , "SecurityGroupIds" :: Maybe (SecurityGroupIdentifierList)
  }
derive instance newtypeUpdateClusterRequest :: Newtype UpdateClusterRequest _
derive instance repGenericUpdateClusterRequest :: Generic UpdateClusterRequest _
instance showUpdateClusterRequest :: Show UpdateClusterRequest where show = genericShow
instance decodeUpdateClusterRequest :: Decode UpdateClusterRequest where decode = genericDecode options
instance encodeUpdateClusterRequest :: Encode UpdateClusterRequest where encode = genericEncode options

-- | Constructs UpdateClusterRequest from required parameters
newUpdateClusterRequest :: String -> UpdateClusterRequest
newUpdateClusterRequest _ClusterName = UpdateClusterRequest { "ClusterName": _ClusterName, "Description": Nothing, "NotificationTopicArn": Nothing, "NotificationTopicStatus": Nothing, "ParameterGroupName": Nothing, "PreferredMaintenanceWindow": Nothing, "SecurityGroupIds": Nothing }

-- | Constructs UpdateClusterRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateClusterRequest' :: String -> ( { "ClusterName" :: (String) , "Description" :: Maybe (String) , "PreferredMaintenanceWindow" :: Maybe (String) , "NotificationTopicArn" :: Maybe (String) , "NotificationTopicStatus" :: Maybe (String) , "ParameterGroupName" :: Maybe (String) , "SecurityGroupIds" :: Maybe (SecurityGroupIdentifierList) } -> {"ClusterName" :: (String) , "Description" :: Maybe (String) , "PreferredMaintenanceWindow" :: Maybe (String) , "NotificationTopicArn" :: Maybe (String) , "NotificationTopicStatus" :: Maybe (String) , "ParameterGroupName" :: Maybe (String) , "SecurityGroupIds" :: Maybe (SecurityGroupIdentifierList) } ) -> UpdateClusterRequest
newUpdateClusterRequest' _ClusterName customize = (UpdateClusterRequest <<< customize) { "ClusterName": _ClusterName, "Description": Nothing, "NotificationTopicArn": Nothing, "NotificationTopicStatus": Nothing, "ParameterGroupName": Nothing, "PreferredMaintenanceWindow": Nothing, "SecurityGroupIds": Nothing }



newtype UpdateClusterResponse = UpdateClusterResponse 
  { "Cluster" :: Maybe (Cluster)
  }
derive instance newtypeUpdateClusterResponse :: Newtype UpdateClusterResponse _
derive instance repGenericUpdateClusterResponse :: Generic UpdateClusterResponse _
instance showUpdateClusterResponse :: Show UpdateClusterResponse where show = genericShow
instance decodeUpdateClusterResponse :: Decode UpdateClusterResponse where decode = genericDecode options
instance encodeUpdateClusterResponse :: Encode UpdateClusterResponse where encode = genericEncode options

-- | Constructs UpdateClusterResponse from required parameters
newUpdateClusterResponse :: UpdateClusterResponse
newUpdateClusterResponse  = UpdateClusterResponse { "Cluster": Nothing }

-- | Constructs UpdateClusterResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateClusterResponse' :: ( { "Cluster" :: Maybe (Cluster) } -> {"Cluster" :: Maybe (Cluster) } ) -> UpdateClusterResponse
newUpdateClusterResponse'  customize = (UpdateClusterResponse <<< customize) { "Cluster": Nothing }



newtype UpdateParameterGroupRequest = UpdateParameterGroupRequest 
  { "ParameterGroupName" :: (String)
  , "ParameterNameValues" :: (ParameterNameValueList)
  }
derive instance newtypeUpdateParameterGroupRequest :: Newtype UpdateParameterGroupRequest _
derive instance repGenericUpdateParameterGroupRequest :: Generic UpdateParameterGroupRequest _
instance showUpdateParameterGroupRequest :: Show UpdateParameterGroupRequest where show = genericShow
instance decodeUpdateParameterGroupRequest :: Decode UpdateParameterGroupRequest where decode = genericDecode options
instance encodeUpdateParameterGroupRequest :: Encode UpdateParameterGroupRequest where encode = genericEncode options

-- | Constructs UpdateParameterGroupRequest from required parameters
newUpdateParameterGroupRequest :: String -> ParameterNameValueList -> UpdateParameterGroupRequest
newUpdateParameterGroupRequest _ParameterGroupName _ParameterNameValues = UpdateParameterGroupRequest { "ParameterGroupName": _ParameterGroupName, "ParameterNameValues": _ParameterNameValues }

-- | Constructs UpdateParameterGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateParameterGroupRequest' :: String -> ParameterNameValueList -> ( { "ParameterGroupName" :: (String) , "ParameterNameValues" :: (ParameterNameValueList) } -> {"ParameterGroupName" :: (String) , "ParameterNameValues" :: (ParameterNameValueList) } ) -> UpdateParameterGroupRequest
newUpdateParameterGroupRequest' _ParameterGroupName _ParameterNameValues customize = (UpdateParameterGroupRequest <<< customize) { "ParameterGroupName": _ParameterGroupName, "ParameterNameValues": _ParameterNameValues }



newtype UpdateParameterGroupResponse = UpdateParameterGroupResponse 
  { "ParameterGroup" :: Maybe (ParameterGroup)
  }
derive instance newtypeUpdateParameterGroupResponse :: Newtype UpdateParameterGroupResponse _
derive instance repGenericUpdateParameterGroupResponse :: Generic UpdateParameterGroupResponse _
instance showUpdateParameterGroupResponse :: Show UpdateParameterGroupResponse where show = genericShow
instance decodeUpdateParameterGroupResponse :: Decode UpdateParameterGroupResponse where decode = genericDecode options
instance encodeUpdateParameterGroupResponse :: Encode UpdateParameterGroupResponse where encode = genericEncode options

-- | Constructs UpdateParameterGroupResponse from required parameters
newUpdateParameterGroupResponse :: UpdateParameterGroupResponse
newUpdateParameterGroupResponse  = UpdateParameterGroupResponse { "ParameterGroup": Nothing }

-- | Constructs UpdateParameterGroupResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateParameterGroupResponse' :: ( { "ParameterGroup" :: Maybe (ParameterGroup) } -> {"ParameterGroup" :: Maybe (ParameterGroup) } ) -> UpdateParameterGroupResponse
newUpdateParameterGroupResponse'  customize = (UpdateParameterGroupResponse <<< customize) { "ParameterGroup": Nothing }



newtype UpdateSubnetGroupRequest = UpdateSubnetGroupRequest 
  { "SubnetGroupName" :: (String)
  , "Description" :: Maybe (String)
  , "SubnetIds" :: Maybe (SubnetIdentifierList)
  }
derive instance newtypeUpdateSubnetGroupRequest :: Newtype UpdateSubnetGroupRequest _
derive instance repGenericUpdateSubnetGroupRequest :: Generic UpdateSubnetGroupRequest _
instance showUpdateSubnetGroupRequest :: Show UpdateSubnetGroupRequest where show = genericShow
instance decodeUpdateSubnetGroupRequest :: Decode UpdateSubnetGroupRequest where decode = genericDecode options
instance encodeUpdateSubnetGroupRequest :: Encode UpdateSubnetGroupRequest where encode = genericEncode options

-- | Constructs UpdateSubnetGroupRequest from required parameters
newUpdateSubnetGroupRequest :: String -> UpdateSubnetGroupRequest
newUpdateSubnetGroupRequest _SubnetGroupName = UpdateSubnetGroupRequest { "SubnetGroupName": _SubnetGroupName, "Description": Nothing, "SubnetIds": Nothing }

-- | Constructs UpdateSubnetGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateSubnetGroupRequest' :: String -> ( { "SubnetGroupName" :: (String) , "Description" :: Maybe (String) , "SubnetIds" :: Maybe (SubnetIdentifierList) } -> {"SubnetGroupName" :: (String) , "Description" :: Maybe (String) , "SubnetIds" :: Maybe (SubnetIdentifierList) } ) -> UpdateSubnetGroupRequest
newUpdateSubnetGroupRequest' _SubnetGroupName customize = (UpdateSubnetGroupRequest <<< customize) { "SubnetGroupName": _SubnetGroupName, "Description": Nothing, "SubnetIds": Nothing }



newtype UpdateSubnetGroupResponse = UpdateSubnetGroupResponse 
  { "SubnetGroup" :: Maybe (SubnetGroup)
  }
derive instance newtypeUpdateSubnetGroupResponse :: Newtype UpdateSubnetGroupResponse _
derive instance repGenericUpdateSubnetGroupResponse :: Generic UpdateSubnetGroupResponse _
instance showUpdateSubnetGroupResponse :: Show UpdateSubnetGroupResponse where show = genericShow
instance decodeUpdateSubnetGroupResponse :: Decode UpdateSubnetGroupResponse where decode = genericDecode options
instance encodeUpdateSubnetGroupResponse :: Encode UpdateSubnetGroupResponse where encode = genericEncode options

-- | Constructs UpdateSubnetGroupResponse from required parameters
newUpdateSubnetGroupResponse :: UpdateSubnetGroupResponse
newUpdateSubnetGroupResponse  = UpdateSubnetGroupResponse { "SubnetGroup": Nothing }

-- | Constructs UpdateSubnetGroupResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateSubnetGroupResponse' :: ( { "SubnetGroup" :: Maybe (SubnetGroup) } -> {"SubnetGroup" :: Maybe (SubnetGroup) } ) -> UpdateSubnetGroupResponse
newUpdateSubnetGroupResponse'  customize = (UpdateSubnetGroupResponse <<< customize) { "SubnetGroup": Nothing }

