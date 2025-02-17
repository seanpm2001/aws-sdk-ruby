# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SSOAdmin
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessControlAttribute = Shapes::StructureShape.new(name: 'AccessControlAttribute')
    AccessControlAttributeKey = Shapes::StringShape.new(name: 'AccessControlAttributeKey')
    AccessControlAttributeList = Shapes::ListShape.new(name: 'AccessControlAttributeList')
    AccessControlAttributeValue = Shapes::StructureShape.new(name: 'AccessControlAttributeValue')
    AccessControlAttributeValueSource = Shapes::StringShape.new(name: 'AccessControlAttributeValueSource')
    AccessControlAttributeValueSourceList = Shapes::ListShape.new(name: 'AccessControlAttributeValueSourceList')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessDeniedExceptionMessage = Shapes::StringShape.new(name: 'AccessDeniedExceptionMessage')
    AccountAssignment = Shapes::StructureShape.new(name: 'AccountAssignment')
    AccountAssignmentList = Shapes::ListShape.new(name: 'AccountAssignmentList')
    AccountAssignmentOperationStatus = Shapes::StructureShape.new(name: 'AccountAssignmentOperationStatus')
    AccountAssignmentOperationStatusList = Shapes::ListShape.new(name: 'AccountAssignmentOperationStatusList')
    AccountAssignmentOperationStatusMetadata = Shapes::StructureShape.new(name: 'AccountAssignmentOperationStatusMetadata')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountList = Shapes::ListShape.new(name: 'AccountList')
    AttachCustomerManagedPolicyReferenceToPermissionSetRequest = Shapes::StructureShape.new(name: 'AttachCustomerManagedPolicyReferenceToPermissionSetRequest')
    AttachCustomerManagedPolicyReferenceToPermissionSetResponse = Shapes::StructureShape.new(name: 'AttachCustomerManagedPolicyReferenceToPermissionSetResponse')
    AttachManagedPolicyToPermissionSetRequest = Shapes::StructureShape.new(name: 'AttachManagedPolicyToPermissionSetRequest')
    AttachManagedPolicyToPermissionSetResponse = Shapes::StructureShape.new(name: 'AttachManagedPolicyToPermissionSetResponse')
    AttachedManagedPolicy = Shapes::StructureShape.new(name: 'AttachedManagedPolicy')
    AttachedManagedPolicyList = Shapes::ListShape.new(name: 'AttachedManagedPolicyList')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConflictExceptionMessage = Shapes::StringShape.new(name: 'ConflictExceptionMessage')
    CreateAccountAssignmentRequest = Shapes::StructureShape.new(name: 'CreateAccountAssignmentRequest')
    CreateAccountAssignmentResponse = Shapes::StructureShape.new(name: 'CreateAccountAssignmentResponse')
    CreateInstanceAccessControlAttributeConfigurationRequest = Shapes::StructureShape.new(name: 'CreateInstanceAccessControlAttributeConfigurationRequest')
    CreateInstanceAccessControlAttributeConfigurationResponse = Shapes::StructureShape.new(name: 'CreateInstanceAccessControlAttributeConfigurationResponse')
    CreatePermissionSetRequest = Shapes::StructureShape.new(name: 'CreatePermissionSetRequest')
    CreatePermissionSetResponse = Shapes::StructureShape.new(name: 'CreatePermissionSetResponse')
    CustomerManagedPolicyReference = Shapes::StructureShape.new(name: 'CustomerManagedPolicyReference')
    CustomerManagedPolicyReferenceList = Shapes::ListShape.new(name: 'CustomerManagedPolicyReferenceList')
    Date = Shapes::TimestampShape.new(name: 'Date')
    DeleteAccountAssignmentRequest = Shapes::StructureShape.new(name: 'DeleteAccountAssignmentRequest')
    DeleteAccountAssignmentResponse = Shapes::StructureShape.new(name: 'DeleteAccountAssignmentResponse')
    DeleteInlinePolicyFromPermissionSetRequest = Shapes::StructureShape.new(name: 'DeleteInlinePolicyFromPermissionSetRequest')
    DeleteInlinePolicyFromPermissionSetResponse = Shapes::StructureShape.new(name: 'DeleteInlinePolicyFromPermissionSetResponse')
    DeleteInstanceAccessControlAttributeConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteInstanceAccessControlAttributeConfigurationRequest')
    DeleteInstanceAccessControlAttributeConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteInstanceAccessControlAttributeConfigurationResponse')
    DeletePermissionSetRequest = Shapes::StructureShape.new(name: 'DeletePermissionSetRequest')
    DeletePermissionSetResponse = Shapes::StructureShape.new(name: 'DeletePermissionSetResponse')
    DeletePermissionsBoundaryFromPermissionSetRequest = Shapes::StructureShape.new(name: 'DeletePermissionsBoundaryFromPermissionSetRequest')
    DeletePermissionsBoundaryFromPermissionSetResponse = Shapes::StructureShape.new(name: 'DeletePermissionsBoundaryFromPermissionSetResponse')
    DescribeAccountAssignmentCreationStatusRequest = Shapes::StructureShape.new(name: 'DescribeAccountAssignmentCreationStatusRequest')
    DescribeAccountAssignmentCreationStatusResponse = Shapes::StructureShape.new(name: 'DescribeAccountAssignmentCreationStatusResponse')
    DescribeAccountAssignmentDeletionStatusRequest = Shapes::StructureShape.new(name: 'DescribeAccountAssignmentDeletionStatusRequest')
    DescribeAccountAssignmentDeletionStatusResponse = Shapes::StructureShape.new(name: 'DescribeAccountAssignmentDeletionStatusResponse')
    DescribeInstanceAccessControlAttributeConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeInstanceAccessControlAttributeConfigurationRequest')
    DescribeInstanceAccessControlAttributeConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeInstanceAccessControlAttributeConfigurationResponse')
    DescribePermissionSetProvisioningStatusRequest = Shapes::StructureShape.new(name: 'DescribePermissionSetProvisioningStatusRequest')
    DescribePermissionSetProvisioningStatusResponse = Shapes::StructureShape.new(name: 'DescribePermissionSetProvisioningStatusResponse')
    DescribePermissionSetRequest = Shapes::StructureShape.new(name: 'DescribePermissionSetRequest')
    DescribePermissionSetResponse = Shapes::StructureShape.new(name: 'DescribePermissionSetResponse')
    DetachCustomerManagedPolicyReferenceFromPermissionSetRequest = Shapes::StructureShape.new(name: 'DetachCustomerManagedPolicyReferenceFromPermissionSetRequest')
    DetachCustomerManagedPolicyReferenceFromPermissionSetResponse = Shapes::StructureShape.new(name: 'DetachCustomerManagedPolicyReferenceFromPermissionSetResponse')
    DetachManagedPolicyFromPermissionSetRequest = Shapes::StructureShape.new(name: 'DetachManagedPolicyFromPermissionSetRequest')
    DetachManagedPolicyFromPermissionSetResponse = Shapes::StructureShape.new(name: 'DetachManagedPolicyFromPermissionSetResponse')
    Duration = Shapes::StringShape.new(name: 'Duration')
    GetInlinePolicyForPermissionSetRequest = Shapes::StructureShape.new(name: 'GetInlinePolicyForPermissionSetRequest')
    GetInlinePolicyForPermissionSetResponse = Shapes::StructureShape.new(name: 'GetInlinePolicyForPermissionSetResponse')
    GetPermissionsBoundaryForPermissionSetRequest = Shapes::StructureShape.new(name: 'GetPermissionsBoundaryForPermissionSetRequest')
    GetPermissionsBoundaryForPermissionSetResponse = Shapes::StructureShape.new(name: 'GetPermissionsBoundaryForPermissionSetResponse')
    Id = Shapes::StringShape.new(name: 'Id')
    InstanceAccessControlAttributeConfiguration = Shapes::StructureShape.new(name: 'InstanceAccessControlAttributeConfiguration')
    InstanceAccessControlAttributeConfigurationStatus = Shapes::StringShape.new(name: 'InstanceAccessControlAttributeConfigurationStatus')
    InstanceAccessControlAttributeConfigurationStatusReason = Shapes::StringShape.new(name: 'InstanceAccessControlAttributeConfigurationStatusReason')
    InstanceArn = Shapes::StringShape.new(name: 'InstanceArn')
    InstanceList = Shapes::ListShape.new(name: 'InstanceList')
    InstanceMetadata = Shapes::StructureShape.new(name: 'InstanceMetadata')
    InternalFailureMessage = Shapes::StringShape.new(name: 'InternalFailureMessage')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListAccountAssignmentCreationStatusRequest = Shapes::StructureShape.new(name: 'ListAccountAssignmentCreationStatusRequest')
    ListAccountAssignmentCreationStatusResponse = Shapes::StructureShape.new(name: 'ListAccountAssignmentCreationStatusResponse')
    ListAccountAssignmentDeletionStatusRequest = Shapes::StructureShape.new(name: 'ListAccountAssignmentDeletionStatusRequest')
    ListAccountAssignmentDeletionStatusResponse = Shapes::StructureShape.new(name: 'ListAccountAssignmentDeletionStatusResponse')
    ListAccountAssignmentsRequest = Shapes::StructureShape.new(name: 'ListAccountAssignmentsRequest')
    ListAccountAssignmentsResponse = Shapes::StructureShape.new(name: 'ListAccountAssignmentsResponse')
    ListAccountsForProvisionedPermissionSetRequest = Shapes::StructureShape.new(name: 'ListAccountsForProvisionedPermissionSetRequest')
    ListAccountsForProvisionedPermissionSetResponse = Shapes::StructureShape.new(name: 'ListAccountsForProvisionedPermissionSetResponse')
    ListCustomerManagedPolicyReferencesInPermissionSetRequest = Shapes::StructureShape.new(name: 'ListCustomerManagedPolicyReferencesInPermissionSetRequest')
    ListCustomerManagedPolicyReferencesInPermissionSetResponse = Shapes::StructureShape.new(name: 'ListCustomerManagedPolicyReferencesInPermissionSetResponse')
    ListInstancesRequest = Shapes::StructureShape.new(name: 'ListInstancesRequest')
    ListInstancesResponse = Shapes::StructureShape.new(name: 'ListInstancesResponse')
    ListManagedPoliciesInPermissionSetRequest = Shapes::StructureShape.new(name: 'ListManagedPoliciesInPermissionSetRequest')
    ListManagedPoliciesInPermissionSetResponse = Shapes::StructureShape.new(name: 'ListManagedPoliciesInPermissionSetResponse')
    ListPermissionSetProvisioningStatusRequest = Shapes::StructureShape.new(name: 'ListPermissionSetProvisioningStatusRequest')
    ListPermissionSetProvisioningStatusResponse = Shapes::StructureShape.new(name: 'ListPermissionSetProvisioningStatusResponse')
    ListPermissionSetsProvisionedToAccountRequest = Shapes::StructureShape.new(name: 'ListPermissionSetsProvisionedToAccountRequest')
    ListPermissionSetsProvisionedToAccountResponse = Shapes::StructureShape.new(name: 'ListPermissionSetsProvisionedToAccountResponse')
    ListPermissionSetsRequest = Shapes::StructureShape.new(name: 'ListPermissionSetsRequest')
    ListPermissionSetsResponse = Shapes::StructureShape.new(name: 'ListPermissionSetsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ManagedPolicyArn = Shapes::StringShape.new(name: 'ManagedPolicyArn')
    ManagedPolicyName = Shapes::StringShape.new(name: 'ManagedPolicyName')
    ManagedPolicyPath = Shapes::StringShape.new(name: 'ManagedPolicyPath')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Name = Shapes::StringShape.new(name: 'Name')
    OperationStatusFilter = Shapes::StructureShape.new(name: 'OperationStatusFilter')
    PermissionSet = Shapes::StructureShape.new(name: 'PermissionSet')
    PermissionSetArn = Shapes::StringShape.new(name: 'PermissionSetArn')
    PermissionSetDescription = Shapes::StringShape.new(name: 'PermissionSetDescription')
    PermissionSetList = Shapes::ListShape.new(name: 'PermissionSetList')
    PermissionSetName = Shapes::StringShape.new(name: 'PermissionSetName')
    PermissionSetPolicyDocument = Shapes::StringShape.new(name: 'PermissionSetPolicyDocument')
    PermissionSetProvisioningStatus = Shapes::StructureShape.new(name: 'PermissionSetProvisioningStatus')
    PermissionSetProvisioningStatusList = Shapes::ListShape.new(name: 'PermissionSetProvisioningStatusList')
    PermissionSetProvisioningStatusMetadata = Shapes::StructureShape.new(name: 'PermissionSetProvisioningStatusMetadata')
    PermissionsBoundary = Shapes::StructureShape.new(name: 'PermissionsBoundary')
    PrincipalId = Shapes::StringShape.new(name: 'PrincipalId')
    PrincipalType = Shapes::StringShape.new(name: 'PrincipalType')
    ProvisionPermissionSetRequest = Shapes::StructureShape.new(name: 'ProvisionPermissionSetRequest')
    ProvisionPermissionSetResponse = Shapes::StructureShape.new(name: 'ProvisionPermissionSetResponse')
    ProvisionTargetType = Shapes::StringShape.new(name: 'ProvisionTargetType')
    ProvisioningStatus = Shapes::StringShape.new(name: 'ProvisioningStatus')
    PutInlinePolicyToPermissionSetRequest = Shapes::StructureShape.new(name: 'PutInlinePolicyToPermissionSetRequest')
    PutInlinePolicyToPermissionSetResponse = Shapes::StructureShape.new(name: 'PutInlinePolicyToPermissionSetResponse')
    PutPermissionsBoundaryToPermissionSetRequest = Shapes::StructureShape.new(name: 'PutPermissionsBoundaryToPermissionSetRequest')
    PutPermissionsBoundaryToPermissionSetResponse = Shapes::StructureShape.new(name: 'PutPermissionsBoundaryToPermissionSetResponse')
    Reason = Shapes::StringShape.new(name: 'Reason')
    RelayState = Shapes::StringShape.new(name: 'RelayState')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceNotFoundMessage = Shapes::StringShape.new(name: 'ResourceNotFoundMessage')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceQuotaExceededMessage = Shapes::StringShape.new(name: 'ServiceQuotaExceededMessage')
    StatusValues = Shapes::StringShape.new(name: 'StatusValues')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TaggableResourceArn = Shapes::StringShape.new(name: 'TaggableResourceArn')
    TargetId = Shapes::StringShape.new(name: 'TargetId')
    TargetType = Shapes::StringShape.new(name: 'TargetType')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    ThrottlingExceptionMessage = Shapes::StringShape.new(name: 'ThrottlingExceptionMessage')
    Token = Shapes::StringShape.new(name: 'Token')
    UUId = Shapes::StringShape.new(name: 'UUId')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateInstanceAccessControlAttributeConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateInstanceAccessControlAttributeConfigurationRequest')
    UpdateInstanceAccessControlAttributeConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateInstanceAccessControlAttributeConfigurationResponse')
    UpdatePermissionSetRequest = Shapes::StructureShape.new(name: 'UpdatePermissionSetRequest')
    UpdatePermissionSetResponse = Shapes::StructureShape.new(name: 'UpdatePermissionSetResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionMessage = Shapes::StringShape.new(name: 'ValidationExceptionMessage')

    AccessControlAttribute.add_member(:key, Shapes::ShapeRef.new(shape: AccessControlAttributeKey, required: true, location_name: "Key"))
    AccessControlAttribute.add_member(:value, Shapes::ShapeRef.new(shape: AccessControlAttributeValue, required: true, location_name: "Value"))
    AccessControlAttribute.struct_class = Types::AccessControlAttribute

    AccessControlAttributeList.member = Shapes::ShapeRef.new(shape: AccessControlAttribute)

    AccessControlAttributeValue.add_member(:source, Shapes::ShapeRef.new(shape: AccessControlAttributeValueSourceList, required: true, location_name: "Source"))
    AccessControlAttributeValue.struct_class = Types::AccessControlAttributeValue

    AccessControlAttributeValueSourceList.member = Shapes::ShapeRef.new(shape: AccessControlAttributeValueSource)

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: AccessDeniedExceptionMessage, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountAssignment.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    AccountAssignment.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, location_name: "PermissionSetArn"))
    AccountAssignment.add_member(:principal_id, Shapes::ShapeRef.new(shape: PrincipalId, location_name: "PrincipalId"))
    AccountAssignment.add_member(:principal_type, Shapes::ShapeRef.new(shape: PrincipalType, location_name: "PrincipalType"))
    AccountAssignment.struct_class = Types::AccountAssignment

    AccountAssignmentList.member = Shapes::ShapeRef.new(shape: AccountAssignment)

    AccountAssignmentOperationStatus.add_member(:created_date, Shapes::ShapeRef.new(shape: Date, location_name: "CreatedDate"))
    AccountAssignmentOperationStatus.add_member(:failure_reason, Shapes::ShapeRef.new(shape: Reason, location_name: "FailureReason"))
    AccountAssignmentOperationStatus.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, location_name: "PermissionSetArn"))
    AccountAssignmentOperationStatus.add_member(:principal_id, Shapes::ShapeRef.new(shape: PrincipalId, location_name: "PrincipalId"))
    AccountAssignmentOperationStatus.add_member(:principal_type, Shapes::ShapeRef.new(shape: PrincipalType, location_name: "PrincipalType"))
    AccountAssignmentOperationStatus.add_member(:request_id, Shapes::ShapeRef.new(shape: UUId, location_name: "RequestId"))
    AccountAssignmentOperationStatus.add_member(:status, Shapes::ShapeRef.new(shape: StatusValues, location_name: "Status"))
    AccountAssignmentOperationStatus.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, location_name: "TargetId"))
    AccountAssignmentOperationStatus.add_member(:target_type, Shapes::ShapeRef.new(shape: TargetType, location_name: "TargetType"))
    AccountAssignmentOperationStatus.struct_class = Types::AccountAssignmentOperationStatus

    AccountAssignmentOperationStatusList.member = Shapes::ShapeRef.new(shape: AccountAssignmentOperationStatusMetadata)

    AccountAssignmentOperationStatusMetadata.add_member(:created_date, Shapes::ShapeRef.new(shape: Date, location_name: "CreatedDate"))
    AccountAssignmentOperationStatusMetadata.add_member(:request_id, Shapes::ShapeRef.new(shape: UUId, location_name: "RequestId"))
    AccountAssignmentOperationStatusMetadata.add_member(:status, Shapes::ShapeRef.new(shape: StatusValues, location_name: "Status"))
    AccountAssignmentOperationStatusMetadata.struct_class = Types::AccountAssignmentOperationStatusMetadata

    AccountList.member = Shapes::ShapeRef.new(shape: AccountId)

    AttachCustomerManagedPolicyReferenceToPermissionSetRequest.add_member(:customer_managed_policy_reference, Shapes::ShapeRef.new(shape: CustomerManagedPolicyReference, required: true, location_name: "CustomerManagedPolicyReference"))
    AttachCustomerManagedPolicyReferenceToPermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    AttachCustomerManagedPolicyReferenceToPermissionSetRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    AttachCustomerManagedPolicyReferenceToPermissionSetRequest.struct_class = Types::AttachCustomerManagedPolicyReferenceToPermissionSetRequest

    AttachCustomerManagedPolicyReferenceToPermissionSetResponse.struct_class = Types::AttachCustomerManagedPolicyReferenceToPermissionSetResponse

    AttachManagedPolicyToPermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    AttachManagedPolicyToPermissionSetRequest.add_member(:managed_policy_arn, Shapes::ShapeRef.new(shape: ManagedPolicyArn, required: true, location_name: "ManagedPolicyArn"))
    AttachManagedPolicyToPermissionSetRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    AttachManagedPolicyToPermissionSetRequest.struct_class = Types::AttachManagedPolicyToPermissionSetRequest

    AttachManagedPolicyToPermissionSetResponse.struct_class = Types::AttachManagedPolicyToPermissionSetResponse

    AttachedManagedPolicy.add_member(:arn, Shapes::ShapeRef.new(shape: ManagedPolicyArn, location_name: "Arn"))
    AttachedManagedPolicy.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    AttachedManagedPolicy.struct_class = Types::AttachedManagedPolicy

    AttachedManagedPolicyList.member = Shapes::ShapeRef.new(shape: AttachedManagedPolicy)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ConflictExceptionMessage, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateAccountAssignmentRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    CreateAccountAssignmentRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    CreateAccountAssignmentRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: PrincipalId, required: true, location_name: "PrincipalId"))
    CreateAccountAssignmentRequest.add_member(:principal_type, Shapes::ShapeRef.new(shape: PrincipalType, required: true, location_name: "PrincipalType"))
    CreateAccountAssignmentRequest.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, required: true, location_name: "TargetId"))
    CreateAccountAssignmentRequest.add_member(:target_type, Shapes::ShapeRef.new(shape: TargetType, required: true, location_name: "TargetType"))
    CreateAccountAssignmentRequest.struct_class = Types::CreateAccountAssignmentRequest

    CreateAccountAssignmentResponse.add_member(:account_assignment_creation_status, Shapes::ShapeRef.new(shape: AccountAssignmentOperationStatus, location_name: "AccountAssignmentCreationStatus"))
    CreateAccountAssignmentResponse.struct_class = Types::CreateAccountAssignmentResponse

    CreateInstanceAccessControlAttributeConfigurationRequest.add_member(:instance_access_control_attribute_configuration, Shapes::ShapeRef.new(shape: InstanceAccessControlAttributeConfiguration, required: true, location_name: "InstanceAccessControlAttributeConfiguration"))
    CreateInstanceAccessControlAttributeConfigurationRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    CreateInstanceAccessControlAttributeConfigurationRequest.struct_class = Types::CreateInstanceAccessControlAttributeConfigurationRequest

    CreateInstanceAccessControlAttributeConfigurationResponse.struct_class = Types::CreateInstanceAccessControlAttributeConfigurationResponse

    CreatePermissionSetRequest.add_member(:description, Shapes::ShapeRef.new(shape: PermissionSetDescription, location_name: "Description"))
    CreatePermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    CreatePermissionSetRequest.add_member(:name, Shapes::ShapeRef.new(shape: PermissionSetName, required: true, location_name: "Name"))
    CreatePermissionSetRequest.add_member(:relay_state, Shapes::ShapeRef.new(shape: RelayState, location_name: "RelayState"))
    CreatePermissionSetRequest.add_member(:session_duration, Shapes::ShapeRef.new(shape: Duration, location_name: "SessionDuration"))
    CreatePermissionSetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreatePermissionSetRequest.struct_class = Types::CreatePermissionSetRequest

    CreatePermissionSetResponse.add_member(:permission_set, Shapes::ShapeRef.new(shape: PermissionSet, location_name: "PermissionSet"))
    CreatePermissionSetResponse.struct_class = Types::CreatePermissionSetResponse

    CustomerManagedPolicyReference.add_member(:name, Shapes::ShapeRef.new(shape: ManagedPolicyName, required: true, location_name: "Name"))
    CustomerManagedPolicyReference.add_member(:path, Shapes::ShapeRef.new(shape: ManagedPolicyPath, location_name: "Path"))
    CustomerManagedPolicyReference.struct_class = Types::CustomerManagedPolicyReference

    CustomerManagedPolicyReferenceList.member = Shapes::ShapeRef.new(shape: CustomerManagedPolicyReference)

    DeleteAccountAssignmentRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    DeleteAccountAssignmentRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    DeleteAccountAssignmentRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: PrincipalId, required: true, location_name: "PrincipalId"))
    DeleteAccountAssignmentRequest.add_member(:principal_type, Shapes::ShapeRef.new(shape: PrincipalType, required: true, location_name: "PrincipalType"))
    DeleteAccountAssignmentRequest.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, required: true, location_name: "TargetId"))
    DeleteAccountAssignmentRequest.add_member(:target_type, Shapes::ShapeRef.new(shape: TargetType, required: true, location_name: "TargetType"))
    DeleteAccountAssignmentRequest.struct_class = Types::DeleteAccountAssignmentRequest

    DeleteAccountAssignmentResponse.add_member(:account_assignment_deletion_status, Shapes::ShapeRef.new(shape: AccountAssignmentOperationStatus, location_name: "AccountAssignmentDeletionStatus"))
    DeleteAccountAssignmentResponse.struct_class = Types::DeleteAccountAssignmentResponse

    DeleteInlinePolicyFromPermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    DeleteInlinePolicyFromPermissionSetRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    DeleteInlinePolicyFromPermissionSetRequest.struct_class = Types::DeleteInlinePolicyFromPermissionSetRequest

    DeleteInlinePolicyFromPermissionSetResponse.struct_class = Types::DeleteInlinePolicyFromPermissionSetResponse

    DeleteInstanceAccessControlAttributeConfigurationRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    DeleteInstanceAccessControlAttributeConfigurationRequest.struct_class = Types::DeleteInstanceAccessControlAttributeConfigurationRequest

    DeleteInstanceAccessControlAttributeConfigurationResponse.struct_class = Types::DeleteInstanceAccessControlAttributeConfigurationResponse

    DeletePermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    DeletePermissionSetRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    DeletePermissionSetRequest.struct_class = Types::DeletePermissionSetRequest

    DeletePermissionSetResponse.struct_class = Types::DeletePermissionSetResponse

    DeletePermissionsBoundaryFromPermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    DeletePermissionsBoundaryFromPermissionSetRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    DeletePermissionsBoundaryFromPermissionSetRequest.struct_class = Types::DeletePermissionsBoundaryFromPermissionSetRequest

    DeletePermissionsBoundaryFromPermissionSetResponse.struct_class = Types::DeletePermissionsBoundaryFromPermissionSetResponse

    DescribeAccountAssignmentCreationStatusRequest.add_member(:account_assignment_creation_request_id, Shapes::ShapeRef.new(shape: UUId, required: true, location_name: "AccountAssignmentCreationRequestId"))
    DescribeAccountAssignmentCreationStatusRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    DescribeAccountAssignmentCreationStatusRequest.struct_class = Types::DescribeAccountAssignmentCreationStatusRequest

    DescribeAccountAssignmentCreationStatusResponse.add_member(:account_assignment_creation_status, Shapes::ShapeRef.new(shape: AccountAssignmentOperationStatus, location_name: "AccountAssignmentCreationStatus"))
    DescribeAccountAssignmentCreationStatusResponse.struct_class = Types::DescribeAccountAssignmentCreationStatusResponse

    DescribeAccountAssignmentDeletionStatusRequest.add_member(:account_assignment_deletion_request_id, Shapes::ShapeRef.new(shape: UUId, required: true, location_name: "AccountAssignmentDeletionRequestId"))
    DescribeAccountAssignmentDeletionStatusRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    DescribeAccountAssignmentDeletionStatusRequest.struct_class = Types::DescribeAccountAssignmentDeletionStatusRequest

    DescribeAccountAssignmentDeletionStatusResponse.add_member(:account_assignment_deletion_status, Shapes::ShapeRef.new(shape: AccountAssignmentOperationStatus, location_name: "AccountAssignmentDeletionStatus"))
    DescribeAccountAssignmentDeletionStatusResponse.struct_class = Types::DescribeAccountAssignmentDeletionStatusResponse

    DescribeInstanceAccessControlAttributeConfigurationRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    DescribeInstanceAccessControlAttributeConfigurationRequest.struct_class = Types::DescribeInstanceAccessControlAttributeConfigurationRequest

    DescribeInstanceAccessControlAttributeConfigurationResponse.add_member(:instance_access_control_attribute_configuration, Shapes::ShapeRef.new(shape: InstanceAccessControlAttributeConfiguration, location_name: "InstanceAccessControlAttributeConfiguration"))
    DescribeInstanceAccessControlAttributeConfigurationResponse.add_member(:status, Shapes::ShapeRef.new(shape: InstanceAccessControlAttributeConfigurationStatus, location_name: "Status"))
    DescribeInstanceAccessControlAttributeConfigurationResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: InstanceAccessControlAttributeConfigurationStatusReason, location_name: "StatusReason"))
    DescribeInstanceAccessControlAttributeConfigurationResponse.struct_class = Types::DescribeInstanceAccessControlAttributeConfigurationResponse

    DescribePermissionSetProvisioningStatusRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    DescribePermissionSetProvisioningStatusRequest.add_member(:provision_permission_set_request_id, Shapes::ShapeRef.new(shape: UUId, required: true, location_name: "ProvisionPermissionSetRequestId"))
    DescribePermissionSetProvisioningStatusRequest.struct_class = Types::DescribePermissionSetProvisioningStatusRequest

    DescribePermissionSetProvisioningStatusResponse.add_member(:permission_set_provisioning_status, Shapes::ShapeRef.new(shape: PermissionSetProvisioningStatus, location_name: "PermissionSetProvisioningStatus"))
    DescribePermissionSetProvisioningStatusResponse.struct_class = Types::DescribePermissionSetProvisioningStatusResponse

    DescribePermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    DescribePermissionSetRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    DescribePermissionSetRequest.struct_class = Types::DescribePermissionSetRequest

    DescribePermissionSetResponse.add_member(:permission_set, Shapes::ShapeRef.new(shape: PermissionSet, location_name: "PermissionSet"))
    DescribePermissionSetResponse.struct_class = Types::DescribePermissionSetResponse

    DetachCustomerManagedPolicyReferenceFromPermissionSetRequest.add_member(:customer_managed_policy_reference, Shapes::ShapeRef.new(shape: CustomerManagedPolicyReference, required: true, location_name: "CustomerManagedPolicyReference"))
    DetachCustomerManagedPolicyReferenceFromPermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    DetachCustomerManagedPolicyReferenceFromPermissionSetRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    DetachCustomerManagedPolicyReferenceFromPermissionSetRequest.struct_class = Types::DetachCustomerManagedPolicyReferenceFromPermissionSetRequest

    DetachCustomerManagedPolicyReferenceFromPermissionSetResponse.struct_class = Types::DetachCustomerManagedPolicyReferenceFromPermissionSetResponse

    DetachManagedPolicyFromPermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    DetachManagedPolicyFromPermissionSetRequest.add_member(:managed_policy_arn, Shapes::ShapeRef.new(shape: ManagedPolicyArn, required: true, location_name: "ManagedPolicyArn"))
    DetachManagedPolicyFromPermissionSetRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    DetachManagedPolicyFromPermissionSetRequest.struct_class = Types::DetachManagedPolicyFromPermissionSetRequest

    DetachManagedPolicyFromPermissionSetResponse.struct_class = Types::DetachManagedPolicyFromPermissionSetResponse

    GetInlinePolicyForPermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    GetInlinePolicyForPermissionSetRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    GetInlinePolicyForPermissionSetRequest.struct_class = Types::GetInlinePolicyForPermissionSetRequest

    GetInlinePolicyForPermissionSetResponse.add_member(:inline_policy, Shapes::ShapeRef.new(shape: PermissionSetPolicyDocument, location_name: "InlinePolicy"))
    GetInlinePolicyForPermissionSetResponse.struct_class = Types::GetInlinePolicyForPermissionSetResponse

    GetPermissionsBoundaryForPermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    GetPermissionsBoundaryForPermissionSetRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    GetPermissionsBoundaryForPermissionSetRequest.struct_class = Types::GetPermissionsBoundaryForPermissionSetRequest

    GetPermissionsBoundaryForPermissionSetResponse.add_member(:permissions_boundary, Shapes::ShapeRef.new(shape: PermissionsBoundary, location_name: "PermissionsBoundary"))
    GetPermissionsBoundaryForPermissionSetResponse.struct_class = Types::GetPermissionsBoundaryForPermissionSetResponse

    InstanceAccessControlAttributeConfiguration.add_member(:access_control_attributes, Shapes::ShapeRef.new(shape: AccessControlAttributeList, required: true, location_name: "AccessControlAttributes"))
    InstanceAccessControlAttributeConfiguration.struct_class = Types::InstanceAccessControlAttributeConfiguration

    InstanceList.member = Shapes::ShapeRef.new(shape: InstanceMetadata)

    InstanceMetadata.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: Id, location_name: "IdentityStoreId"))
    InstanceMetadata.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, location_name: "InstanceArn"))
    InstanceMetadata.struct_class = Types::InstanceMetadata

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: InternalFailureMessage, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListAccountAssignmentCreationStatusRequest.add_member(:filter, Shapes::ShapeRef.new(shape: OperationStatusFilter, location_name: "Filter"))
    ListAccountAssignmentCreationStatusRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    ListAccountAssignmentCreationStatusRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListAccountAssignmentCreationStatusRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListAccountAssignmentCreationStatusRequest.struct_class = Types::ListAccountAssignmentCreationStatusRequest

    ListAccountAssignmentCreationStatusResponse.add_member(:account_assignments_creation_status, Shapes::ShapeRef.new(shape: AccountAssignmentOperationStatusList, location_name: "AccountAssignmentsCreationStatus"))
    ListAccountAssignmentCreationStatusResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListAccountAssignmentCreationStatusResponse.struct_class = Types::ListAccountAssignmentCreationStatusResponse

    ListAccountAssignmentDeletionStatusRequest.add_member(:filter, Shapes::ShapeRef.new(shape: OperationStatusFilter, location_name: "Filter"))
    ListAccountAssignmentDeletionStatusRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    ListAccountAssignmentDeletionStatusRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListAccountAssignmentDeletionStatusRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListAccountAssignmentDeletionStatusRequest.struct_class = Types::ListAccountAssignmentDeletionStatusRequest

    ListAccountAssignmentDeletionStatusResponse.add_member(:account_assignments_deletion_status, Shapes::ShapeRef.new(shape: AccountAssignmentOperationStatusList, location_name: "AccountAssignmentsDeletionStatus"))
    ListAccountAssignmentDeletionStatusResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListAccountAssignmentDeletionStatusResponse.struct_class = Types::ListAccountAssignmentDeletionStatusResponse

    ListAccountAssignmentsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: TargetId, required: true, location_name: "AccountId"))
    ListAccountAssignmentsRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    ListAccountAssignmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListAccountAssignmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListAccountAssignmentsRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    ListAccountAssignmentsRequest.struct_class = Types::ListAccountAssignmentsRequest

    ListAccountAssignmentsResponse.add_member(:account_assignments, Shapes::ShapeRef.new(shape: AccountAssignmentList, location_name: "AccountAssignments"))
    ListAccountAssignmentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListAccountAssignmentsResponse.struct_class = Types::ListAccountAssignmentsResponse

    ListAccountsForProvisionedPermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    ListAccountsForProvisionedPermissionSetRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListAccountsForProvisionedPermissionSetRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListAccountsForProvisionedPermissionSetRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    ListAccountsForProvisionedPermissionSetRequest.add_member(:provisioning_status, Shapes::ShapeRef.new(shape: ProvisioningStatus, location_name: "ProvisioningStatus"))
    ListAccountsForProvisionedPermissionSetRequest.struct_class = Types::ListAccountsForProvisionedPermissionSetRequest

    ListAccountsForProvisionedPermissionSetResponse.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountList, location_name: "AccountIds"))
    ListAccountsForProvisionedPermissionSetResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListAccountsForProvisionedPermissionSetResponse.struct_class = Types::ListAccountsForProvisionedPermissionSetResponse

    ListCustomerManagedPolicyReferencesInPermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    ListCustomerManagedPolicyReferencesInPermissionSetRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListCustomerManagedPolicyReferencesInPermissionSetRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListCustomerManagedPolicyReferencesInPermissionSetRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    ListCustomerManagedPolicyReferencesInPermissionSetRequest.struct_class = Types::ListCustomerManagedPolicyReferencesInPermissionSetRequest

    ListCustomerManagedPolicyReferencesInPermissionSetResponse.add_member(:customer_managed_policy_references, Shapes::ShapeRef.new(shape: CustomerManagedPolicyReferenceList, location_name: "CustomerManagedPolicyReferences"))
    ListCustomerManagedPolicyReferencesInPermissionSetResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListCustomerManagedPolicyReferencesInPermissionSetResponse.struct_class = Types::ListCustomerManagedPolicyReferencesInPermissionSetResponse

    ListInstancesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListInstancesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListInstancesRequest.struct_class = Types::ListInstancesRequest

    ListInstancesResponse.add_member(:instances, Shapes::ShapeRef.new(shape: InstanceList, location_name: "Instances"))
    ListInstancesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListInstancesResponse.struct_class = Types::ListInstancesResponse

    ListManagedPoliciesInPermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    ListManagedPoliciesInPermissionSetRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListManagedPoliciesInPermissionSetRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListManagedPoliciesInPermissionSetRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    ListManagedPoliciesInPermissionSetRequest.struct_class = Types::ListManagedPoliciesInPermissionSetRequest

    ListManagedPoliciesInPermissionSetResponse.add_member(:attached_managed_policies, Shapes::ShapeRef.new(shape: AttachedManagedPolicyList, location_name: "AttachedManagedPolicies"))
    ListManagedPoliciesInPermissionSetResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListManagedPoliciesInPermissionSetResponse.struct_class = Types::ListManagedPoliciesInPermissionSetResponse

    ListPermissionSetProvisioningStatusRequest.add_member(:filter, Shapes::ShapeRef.new(shape: OperationStatusFilter, location_name: "Filter"))
    ListPermissionSetProvisioningStatusRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    ListPermissionSetProvisioningStatusRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListPermissionSetProvisioningStatusRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPermissionSetProvisioningStatusRequest.struct_class = Types::ListPermissionSetProvisioningStatusRequest

    ListPermissionSetProvisioningStatusResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPermissionSetProvisioningStatusResponse.add_member(:permission_sets_provisioning_status, Shapes::ShapeRef.new(shape: PermissionSetProvisioningStatusList, location_name: "PermissionSetsProvisioningStatus"))
    ListPermissionSetProvisioningStatusResponse.struct_class = Types::ListPermissionSetProvisioningStatusResponse

    ListPermissionSetsProvisionedToAccountRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    ListPermissionSetsProvisionedToAccountRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    ListPermissionSetsProvisionedToAccountRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListPermissionSetsProvisionedToAccountRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPermissionSetsProvisionedToAccountRequest.add_member(:provisioning_status, Shapes::ShapeRef.new(shape: ProvisioningStatus, location_name: "ProvisioningStatus"))
    ListPermissionSetsProvisionedToAccountRequest.struct_class = Types::ListPermissionSetsProvisionedToAccountRequest

    ListPermissionSetsProvisionedToAccountResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPermissionSetsProvisionedToAccountResponse.add_member(:permission_sets, Shapes::ShapeRef.new(shape: PermissionSetList, location_name: "PermissionSets"))
    ListPermissionSetsProvisionedToAccountResponse.struct_class = Types::ListPermissionSetsProvisionedToAccountResponse

    ListPermissionSetsRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    ListPermissionSetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListPermissionSetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPermissionSetsRequest.struct_class = Types::ListPermissionSetsRequest

    ListPermissionSetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPermissionSetsResponse.add_member(:permission_sets, Shapes::ShapeRef.new(shape: PermissionSetList, location_name: "PermissionSets"))
    ListPermissionSetsResponse.struct_class = Types::ListPermissionSetsResponse

    ListTagsForResourceRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    ListTagsForResourceRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    OperationStatusFilter.add_member(:status, Shapes::ShapeRef.new(shape: StatusValues, location_name: "Status"))
    OperationStatusFilter.struct_class = Types::OperationStatusFilter

    PermissionSet.add_member(:created_date, Shapes::ShapeRef.new(shape: Date, location_name: "CreatedDate"))
    PermissionSet.add_member(:description, Shapes::ShapeRef.new(shape: PermissionSetDescription, location_name: "Description"))
    PermissionSet.add_member(:name, Shapes::ShapeRef.new(shape: PermissionSetName, location_name: "Name"))
    PermissionSet.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, location_name: "PermissionSetArn"))
    PermissionSet.add_member(:relay_state, Shapes::ShapeRef.new(shape: RelayState, location_name: "RelayState"))
    PermissionSet.add_member(:session_duration, Shapes::ShapeRef.new(shape: Duration, location_name: "SessionDuration"))
    PermissionSet.struct_class = Types::PermissionSet

    PermissionSetList.member = Shapes::ShapeRef.new(shape: PermissionSetArn)

    PermissionSetProvisioningStatus.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    PermissionSetProvisioningStatus.add_member(:created_date, Shapes::ShapeRef.new(shape: Date, location_name: "CreatedDate"))
    PermissionSetProvisioningStatus.add_member(:failure_reason, Shapes::ShapeRef.new(shape: Reason, location_name: "FailureReason"))
    PermissionSetProvisioningStatus.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, location_name: "PermissionSetArn"))
    PermissionSetProvisioningStatus.add_member(:request_id, Shapes::ShapeRef.new(shape: UUId, location_name: "RequestId"))
    PermissionSetProvisioningStatus.add_member(:status, Shapes::ShapeRef.new(shape: StatusValues, location_name: "Status"))
    PermissionSetProvisioningStatus.struct_class = Types::PermissionSetProvisioningStatus

    PermissionSetProvisioningStatusList.member = Shapes::ShapeRef.new(shape: PermissionSetProvisioningStatusMetadata)

    PermissionSetProvisioningStatusMetadata.add_member(:created_date, Shapes::ShapeRef.new(shape: Date, location_name: "CreatedDate"))
    PermissionSetProvisioningStatusMetadata.add_member(:request_id, Shapes::ShapeRef.new(shape: UUId, location_name: "RequestId"))
    PermissionSetProvisioningStatusMetadata.add_member(:status, Shapes::ShapeRef.new(shape: StatusValues, location_name: "Status"))
    PermissionSetProvisioningStatusMetadata.struct_class = Types::PermissionSetProvisioningStatusMetadata

    PermissionsBoundary.add_member(:customer_managed_policy_reference, Shapes::ShapeRef.new(shape: CustomerManagedPolicyReference, location_name: "CustomerManagedPolicyReference"))
    PermissionsBoundary.add_member(:managed_policy_arn, Shapes::ShapeRef.new(shape: ManagedPolicyArn, location_name: "ManagedPolicyArn"))
    PermissionsBoundary.struct_class = Types::PermissionsBoundary

    ProvisionPermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    ProvisionPermissionSetRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    ProvisionPermissionSetRequest.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, location_name: "TargetId"))
    ProvisionPermissionSetRequest.add_member(:target_type, Shapes::ShapeRef.new(shape: ProvisionTargetType, required: true, location_name: "TargetType"))
    ProvisionPermissionSetRequest.struct_class = Types::ProvisionPermissionSetRequest

    ProvisionPermissionSetResponse.add_member(:permission_set_provisioning_status, Shapes::ShapeRef.new(shape: PermissionSetProvisioningStatus, location_name: "PermissionSetProvisioningStatus"))
    ProvisionPermissionSetResponse.struct_class = Types::ProvisionPermissionSetResponse

    PutInlinePolicyToPermissionSetRequest.add_member(:inline_policy, Shapes::ShapeRef.new(shape: PermissionSetPolicyDocument, required: true, location_name: "InlinePolicy"))
    PutInlinePolicyToPermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    PutInlinePolicyToPermissionSetRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    PutInlinePolicyToPermissionSetRequest.struct_class = Types::PutInlinePolicyToPermissionSetRequest

    PutInlinePolicyToPermissionSetResponse.struct_class = Types::PutInlinePolicyToPermissionSetResponse

    PutPermissionsBoundaryToPermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    PutPermissionsBoundaryToPermissionSetRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    PutPermissionsBoundaryToPermissionSetRequest.add_member(:permissions_boundary, Shapes::ShapeRef.new(shape: PermissionsBoundary, required: true, location_name: "PermissionsBoundary"))
    PutPermissionsBoundaryToPermissionSetRequest.struct_class = Types::PutPermissionsBoundaryToPermissionSetRequest

    PutPermissionsBoundaryToPermissionSetResponse.struct_class = Types::PutPermissionsBoundaryToPermissionSetResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ResourceNotFoundMessage, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ServiceQuotaExceededMessage, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ThrottlingExceptionMessage, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateInstanceAccessControlAttributeConfigurationRequest.add_member(:instance_access_control_attribute_configuration, Shapes::ShapeRef.new(shape: InstanceAccessControlAttributeConfiguration, required: true, location_name: "InstanceAccessControlAttributeConfiguration"))
    UpdateInstanceAccessControlAttributeConfigurationRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    UpdateInstanceAccessControlAttributeConfigurationRequest.struct_class = Types::UpdateInstanceAccessControlAttributeConfigurationRequest

    UpdateInstanceAccessControlAttributeConfigurationResponse.struct_class = Types::UpdateInstanceAccessControlAttributeConfigurationResponse

    UpdatePermissionSetRequest.add_member(:description, Shapes::ShapeRef.new(shape: PermissionSetDescription, location_name: "Description"))
    UpdatePermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    UpdatePermissionSetRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    UpdatePermissionSetRequest.add_member(:relay_state, Shapes::ShapeRef.new(shape: RelayState, location_name: "RelayState"))
    UpdatePermissionSetRequest.add_member(:session_duration, Shapes::ShapeRef.new(shape: Duration, location_name: "SessionDuration"))
    UpdatePermissionSetRequest.struct_class = Types::UpdatePermissionSetRequest

    UpdatePermissionSetResponse.struct_class = Types::UpdatePermissionSetResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ValidationExceptionMessage, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-07-20"

      api.metadata = {
        "apiVersion" => "2020-07-20",
        "endpointPrefix" => "sso",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "SSO Admin",
        "serviceFullName" => "AWS Single Sign-On Admin",
        "serviceId" => "SSO Admin",
        "signatureVersion" => "v4",
        "signingName" => "sso",
        "targetPrefix" => "SWBExternalService",
        "uid" => "sso-admin-2020-07-20",
      }

      api.add_operation(:attach_customer_managed_policy_reference_to_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AttachCustomerManagedPolicyReferenceToPermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AttachCustomerManagedPolicyReferenceToPermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: AttachCustomerManagedPolicyReferenceToPermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:attach_managed_policy_to_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AttachManagedPolicyToPermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AttachManagedPolicyToPermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: AttachManagedPolicyToPermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_account_assignment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAccountAssignment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAccountAssignmentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAccountAssignmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_instance_access_control_attribute_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateInstanceAccessControlAttributeConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateInstanceAccessControlAttributeConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateInstanceAccessControlAttributeConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_account_assignment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccountAssignment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAccountAssignmentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAccountAssignmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_inline_policy_from_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInlinePolicyFromPermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteInlinePolicyFromPermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteInlinePolicyFromPermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_instance_access_control_attribute_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInstanceAccessControlAttributeConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteInstanceAccessControlAttributeConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteInstanceAccessControlAttributeConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_permissions_boundary_from_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePermissionsBoundaryFromPermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePermissionsBoundaryFromPermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePermissionsBoundaryFromPermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_account_assignment_creation_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccountAssignmentCreationStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAccountAssignmentCreationStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAccountAssignmentCreationStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_account_assignment_deletion_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccountAssignmentDeletionStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAccountAssignmentDeletionStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAccountAssignmentDeletionStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_instance_access_control_attribute_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInstanceAccessControlAttributeConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeInstanceAccessControlAttributeConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInstanceAccessControlAttributeConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_permission_set_provisioning_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePermissionSetProvisioningStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePermissionSetProvisioningStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePermissionSetProvisioningStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:detach_customer_managed_policy_reference_from_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetachCustomerManagedPolicyReferenceFromPermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetachCustomerManagedPolicyReferenceFromPermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DetachCustomerManagedPolicyReferenceFromPermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:detach_managed_policy_from_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetachManagedPolicyFromPermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetachManagedPolicyFromPermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DetachManagedPolicyFromPermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_inline_policy_for_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInlinePolicyForPermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetInlinePolicyForPermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInlinePolicyForPermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_permissions_boundary_for_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPermissionsBoundaryForPermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPermissionsBoundaryForPermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPermissionsBoundaryForPermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_account_assignment_creation_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccountAssignmentCreationStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAccountAssignmentCreationStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccountAssignmentCreationStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_account_assignment_deletion_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccountAssignmentDeletionStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAccountAssignmentDeletionStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccountAssignmentDeletionStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_account_assignments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccountAssignments"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAccountAssignmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccountAssignmentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_accounts_for_provisioned_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccountsForProvisionedPermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAccountsForProvisionedPermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccountsForProvisionedPermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_customer_managed_policy_references_in_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCustomerManagedPolicyReferencesInPermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCustomerManagedPolicyReferencesInPermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCustomerManagedPolicyReferencesInPermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListInstancesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInstancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_managed_policies_in_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListManagedPoliciesInPermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListManagedPoliciesInPermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: ListManagedPoliciesInPermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_permission_set_provisioning_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPermissionSetProvisioningStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPermissionSetProvisioningStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPermissionSetProvisioningStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_permission_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPermissionSets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPermissionSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPermissionSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_permission_sets_provisioned_to_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPermissionSetsProvisionedToAccount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPermissionSetsProvisionedToAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPermissionSetsProvisionedToAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:provision_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ProvisionPermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ProvisionPermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: ProvisionPermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:put_inline_policy_to_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutInlinePolicyToPermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutInlinePolicyToPermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: PutInlinePolicyToPermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:put_permissions_boundary_to_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutPermissionsBoundaryToPermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutPermissionsBoundaryToPermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: PutPermissionsBoundaryToPermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_instance_access_control_attribute_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateInstanceAccessControlAttributeConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateInstanceAccessControlAttributeConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateInstanceAccessControlAttributeConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdatePermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end
