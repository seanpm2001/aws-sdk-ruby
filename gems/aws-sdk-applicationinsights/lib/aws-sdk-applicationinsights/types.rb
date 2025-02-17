# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ApplicationInsights
  module Types

    # User does not have permissions to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] workload_configuration
    #   The configuration settings of the workload. The value is the escaped
    #   JSON of the configuration.
    #   @return [Types::WorkloadConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/AddWorkloadRequest AWS API Documentation
    #
    class AddWorkloadRequest < Struct.new(
      :resource_group_name,
      :component_name,
      :workload_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workload_id
    #   The ID of the workload.
    #   @return [String]
    #
    # @!attribute [rw] workload_configuration
    #   The configuration settings of the workload. The value is the escaped
    #   JSON of the configuration.
    #   @return [Types::WorkloadConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/AddWorkloadResponse AWS API Documentation
    #
    class AddWorkloadResponse < Struct.new(
      :workload_id,
      :workload_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a standalone resource or similarly grouped resources that
    # the application is made up of.
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] component_remarks
    #   If logging is supported for the resource type, indicates whether the
    #   component has configured logs to be monitored.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type. Supported resource types include EC2 instances,
    #   Auto Scaling group, Classic ELB, Application ELB, and SQS Queue.
    #   @return [String]
    #
    # @!attribute [rw] os_type
    #   The operating system of the component.
    #   @return [String]
    #
    # @!attribute [rw] tier
    #   The stack tier of the application component.
    #   @return [String]
    #
    # @!attribute [rw] monitor
    #   Indicates whether the application component is monitored.
    #   @return [Boolean]
    #
    # @!attribute [rw] detected_workload
    #   Workloads detected in the application component.
    #   @return [Hash<String,Hash<String,String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ApplicationComponent AWS API Documentation
    #
    class ApplicationComponent < Struct.new(
      :component_name,
      :component_remarks,
      :resource_type,
      :os_type,
      :tier,
      :monitor,
      :detected_workload)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the status of the application.
    #
    # @!attribute [rw] account_id
    #   The AWS account ID for the owner of the application.
    #   @return [String]
    #
    # @!attribute [rw] resource_group_name
    #   The name of the resource group used for the application.
    #   @return [String]
    #
    # @!attribute [rw] life_cycle
    #   The lifecycle of the application.
    #   @return [String]
    #
    # @!attribute [rw] ops_item_sns_topic_arn
    #   The SNS topic provided to Application Insights that is associated to
    #   the created opsItems to receive SNS notifications for opsItem
    #   updates.
    #   @return [String]
    #
    # @!attribute [rw] ops_center_enabled
    #   Indicates whether Application Insights will create opsItems for any
    #   problem detected by Application Insights for an application.
    #   @return [Boolean]
    #
    # @!attribute [rw] cwe_monitor_enabled
    #   Indicates whether Application Insights can listen to CloudWatch
    #   events for the application resources, such as `instance terminated`,
    #   `failed deployment`, and others.
    #   @return [Boolean]
    #
    # @!attribute [rw] remarks
    #   The issues on the user side that block Application Insights from
    #   successfully monitoring an application. Example remarks include:
    #
    #   * “Configuring application, detected 1 Errors, 3 Warnings”
    #
    #   * “Configuring application, detected 1 Unconfigured Components”
    #   @return [String]
    #
    # @!attribute [rw] auto_config_enabled
    #   Indicates whether auto-configuration is turned on for this
    #   application.
    #   @return [Boolean]
    #
    # @!attribute [rw] discovery_type
    #   The method used by Application Insights to onboard your resources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ApplicationInfo AWS API Documentation
    #
    class ApplicationInfo < Struct.new(
      :account_id,
      :resource_group_name,
      :life_cycle,
      :ops_item_sns_topic_arn,
      :ops_center_enabled,
      :cwe_monitor_enabled,
      :remarks,
      :auto_config_enabled,
      :discovery_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request is not understood by the server.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The event information.
    #
    # @!attribute [rw] resource_group_name
    #   The name of the resource group of the application to which the
    #   configuration event belongs.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The AWS account ID for the owner of the application to which the
    #   configuration event belongs.
    #   @return [String]
    #
    # @!attribute [rw] monitored_resource_arn
    #   The resource monitored by Application Insights.
    #   @return [String]
    #
    # @!attribute [rw] event_status
    #   The status of the configuration update event. Possible values
    #   include INFO, WARN, and ERROR.
    #   @return [String]
    #
    # @!attribute [rw] event_resource_type
    #   The resource type that Application Insights attempted to configure,
    #   for example, CLOUDWATCH\_ALARM.
    #   @return [String]
    #
    # @!attribute [rw] event_time
    #   The timestamp of the event.
    #   @return [Time]
    #
    # @!attribute [rw] event_detail
    #   The details of the event in plain text.
    #   @return [String]
    #
    # @!attribute [rw] event_resource_name
    #   The name of the resource Application Insights attempted to
    #   configure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ConfigurationEvent AWS API Documentation
    #
    class ConfigurationEvent < Struct.new(
      :resource_group_name,
      :account_id,
      :monitored_resource_arn,
      :event_status,
      :event_resource_type,
      :event_time,
      :event_detail,
      :event_resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] ops_center_enabled
    #   When set to `true`, creates opsItems for any problems detected on an
    #   application.
    #   @return [Boolean]
    #
    # @!attribute [rw] cwe_monitor_enabled
    #   Indicates whether Application Insights can listen to CloudWatch
    #   events for the application resources, such as `instance terminated`,
    #   `failed deployment`, and others.
    #   @return [Boolean]
    #
    # @!attribute [rw] ops_item_sns_topic_arn
    #   The SNS topic provided to Application Insights that is associated to
    #   the created opsItem. Allows you to receive notifications for updates
    #   to the opsItem.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   List of tags to add to the application. tag key (`Key`) and an
    #   associated tag value (`Value`). The maximum length of a tag key is
    #   128 characters. The maximum length of a tag value is 256 characters.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] auto_config_enabled
    #   Indicates whether Application Insights automatically configures
    #   unmonitored resources in the resource group.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_create
    #   Configures all of the resources in the resource group by applying
    #   the recommended configurations.
    #   @return [Boolean]
    #
    # @!attribute [rw] grouping_type
    #   Application Insights can create applications based on a resource
    #   group or on an account. To create an account-based application using
    #   all of the resources in the account, set this parameter to
    #   `ACCOUNT_BASED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/CreateApplicationRequest AWS API Documentation
    #
    class CreateApplicationRequest < Struct.new(
      :resource_group_name,
      :ops_center_enabled,
      :cwe_monitor_enabled,
      :ops_item_sns_topic_arn,
      :tags,
      :auto_config_enabled,
      :auto_create,
      :grouping_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_info
    #   Information about the application.
    #   @return [Types::ApplicationInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/CreateApplicationResponse AWS API Documentation
    #
    class CreateApplicationResponse < Struct.new(
      :application_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] resource_list
    #   The list of resource ARNs that belong to the component.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/CreateComponentRequest AWS API Documentation
    #
    class CreateComponentRequest < Struct.new(
      :resource_group_name,
      :component_name,
      :resource_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/CreateComponentResponse AWS API Documentation
    #
    class CreateComponentResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] pattern_set_name
    #   The name of the log pattern set.
    #   @return [String]
    #
    # @!attribute [rw] pattern_name
    #   The name of the log pattern.
    #   @return [String]
    #
    # @!attribute [rw] pattern
    #   The log pattern. The pattern must be DFA compatible. Patterns that
    #   utilize forward lookahead or backreference constructions are not
    #   supported.
    #   @return [String]
    #
    # @!attribute [rw] rank
    #   Rank of the log pattern. Must be a value between `1` and
    #   `1,000,000`. The patterns are sorted by rank, so we recommend that
    #   you set your highest priority patterns with the lowest rank. A
    #   pattern of rank `1` will be the first to get matched to a log line.
    #   A pattern of rank `1,000,000` will be last to get matched. When you
    #   configure custom log patterns from the console, a `Low` severity
    #   pattern translates to a `750,000` rank. A `Medium` severity pattern
    #   translates to a `500,000` rank. And a `High` severity pattern
    #   translates to a `250,000` rank. Rank values less than `1` or greater
    #   than `1,000,000` are reserved for AWS-provided patterns.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/CreateLogPatternRequest AWS API Documentation
    #
    class CreateLogPatternRequest < Struct.new(
      :resource_group_name,
      :pattern_set_name,
      :pattern_name,
      :pattern,
      :rank)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_pattern
    #   The successfully created log pattern.
    #   @return [Types::LogPattern]
    #
    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/CreateLogPatternResponse AWS API Documentation
    #
    class CreateLogPatternResponse < Struct.new(
      :log_pattern,
      :resource_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DeleteApplicationRequest AWS API Documentation
    #
    class DeleteApplicationRequest < Struct.new(
      :resource_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DeleteApplicationResponse AWS API Documentation
    #
    class DeleteApplicationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DeleteComponentRequest AWS API Documentation
    #
    class DeleteComponentRequest < Struct.new(
      :resource_group_name,
      :component_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DeleteComponentResponse AWS API Documentation
    #
    class DeleteComponentResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] pattern_set_name
    #   The name of the log pattern set.
    #   @return [String]
    #
    # @!attribute [rw] pattern_name
    #   The name of the log pattern.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DeleteLogPatternRequest AWS API Documentation
    #
    class DeleteLogPatternRequest < Struct.new(
      :resource_group_name,
      :pattern_set_name,
      :pattern_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DeleteLogPatternResponse AWS API Documentation
    #
    class DeleteLogPatternResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The AWS account ID for the resource group owner.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeApplicationRequest AWS API Documentation
    #
    class DescribeApplicationRequest < Struct.new(
      :resource_group_name,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_info
    #   Information about the application.
    #   @return [Types::ApplicationInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeApplicationResponse AWS API Documentation
    #
    class DescribeApplicationResponse < Struct.new(
      :application_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] tier
    #   The tier of the application component.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_type
    #   The recommended configuration type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeComponentConfigurationRecommendationRequest AWS API Documentation
    #
    class DescribeComponentConfigurationRecommendationRequest < Struct.new(
      :resource_group_name,
      :component_name,
      :tier,
      :recommendation_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] component_configuration
    #   The recommended configuration settings of the component. The value
    #   is the escaped JSON of the configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeComponentConfigurationRecommendationResponse AWS API Documentation
    #
    class DescribeComponentConfigurationRecommendationResponse < Struct.new(
      :component_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The AWS account ID for the resource group owner.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeComponentConfigurationRequest AWS API Documentation
    #
    class DescribeComponentConfigurationRequest < Struct.new(
      :resource_group_name,
      :component_name,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor
    #   Indicates whether the application component is monitored.
    #   @return [Boolean]
    #
    # @!attribute [rw] tier
    #   The tier of the application component. Supported tiers include
    #   `DOT_NET_CORE`, `DOT_NET_WORKER`, `DOT_NET_WEB`, `SQL_SERVER`, and
    #   `DEFAULT`
    #   @return [String]
    #
    # @!attribute [rw] component_configuration
    #   The configuration settings of the component. The value is the
    #   escaped JSON of the configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeComponentConfigurationResponse AWS API Documentation
    #
    class DescribeComponentConfigurationResponse < Struct.new(
      :monitor,
      :tier,
      :component_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The AWS account ID for the resource group owner.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeComponentRequest AWS API Documentation
    #
    class DescribeComponentRequest < Struct.new(
      :resource_group_name,
      :component_name,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_component
    #   Describes a standalone resource or similarly grouped resources that
    #   the application is made up of.
    #   @return [Types::ApplicationComponent]
    #
    # @!attribute [rw] resource_list
    #   The list of resource ARNs that belong to the component.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeComponentResponse AWS API Documentation
    #
    class DescribeComponentResponse < Struct.new(
      :application_component,
      :resource_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] pattern_set_name
    #   The name of the log pattern set.
    #   @return [String]
    #
    # @!attribute [rw] pattern_name
    #   The name of the log pattern.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The AWS account ID for the resource group owner.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeLogPatternRequest AWS API Documentation
    #
    class DescribeLogPatternRequest < Struct.new(
      :resource_group_name,
      :pattern_set_name,
      :pattern_name,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The AWS account ID for the resource group owner.
    #   @return [String]
    #
    # @!attribute [rw] log_pattern
    #   The successfully created log pattern.
    #   @return [Types::LogPattern]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeLogPatternResponse AWS API Documentation
    #
    class DescribeLogPatternResponse < Struct.new(
      :resource_group_name,
      :account_id,
      :log_pattern)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] observation_id
    #   The ID of the observation.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The AWS account ID for the resource group owner.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeObservationRequest AWS API Documentation
    #
    class DescribeObservationRequest < Struct.new(
      :observation_id,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] observation
    #   Information about the observation.
    #   @return [Types::Observation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeObservationResponse AWS API Documentation
    #
    class DescribeObservationResponse < Struct.new(
      :observation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] problem_id
    #   The ID of the problem.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The AWS account ID for the resource group owner.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeProblemObservationsRequest AWS API Documentation
    #
    class DescribeProblemObservationsRequest < Struct.new(
      :problem_id,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] related_observations
    #   Observations related to the problem.
    #   @return [Types::RelatedObservations]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeProblemObservationsResponse AWS API Documentation
    #
    class DescribeProblemObservationsResponse < Struct.new(
      :related_observations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] problem_id
    #   The ID of the problem.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The AWS account ID for the owner of the resource group affected by
    #   the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeProblemRequest AWS API Documentation
    #
    class DescribeProblemRequest < Struct.new(
      :problem_id,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] problem
    #   Information about the problem.
    #   @return [Types::Problem]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeProblemResponse AWS API Documentation
    #
    class DescribeProblemResponse < Struct.new(
      :problem)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] workload_id
    #   The ID of the workload.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The AWS account ID for the workload owner.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeWorkloadRequest AWS API Documentation
    #
    class DescribeWorkloadRequest < Struct.new(
      :resource_group_name,
      :component_name,
      :workload_id,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workload_id
    #   The ID of the workload.
    #   @return [String]
    #
    # @!attribute [rw] workload_remarks
    #   If logging is supported for the resource type, shows whether the
    #   component has configured logs to be monitored.
    #   @return [String]
    #
    # @!attribute [rw] workload_configuration
    #   The configuration settings of the workload. The value is the escaped
    #   JSON of the configuration.
    #   @return [Types::WorkloadConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeWorkloadResponse AWS API Documentation
    #
    class DescribeWorkloadResponse < Struct.new(
      :workload_id,
      :workload_remarks,
      :workload_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The server encountered an internal error and is unable to complete the
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `NextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The AWS account ID for the resource group owner.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ListApplicationsRequest AWS API Documentation
    #
    class ListApplicationsRequest < Struct.new(
      :max_results,
      :next_token,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_info_list
    #   The list of applications.
    #   @return [Array<Types::ApplicationInfo>]
    #
    # @!attribute [rw] next_token
    #   The token used to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ListApplicationsResponse AWS API Documentation
    #
    class ListApplicationsResponse < Struct.new(
      :application_info_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `NextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The AWS account ID for the resource group owner.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ListComponentsRequest AWS API Documentation
    #
    class ListComponentsRequest < Struct.new(
      :resource_group_name,
      :max_results,
      :next_token,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_component_list
    #   The list of application components.
    #   @return [Array<Types::ApplicationComponent>]
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ListComponentsResponse AWS API Documentation
    #
    class ListComponentsResponse < Struct.new(
      :application_component_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_group_name
    #   Resource group to which the application belongs.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time of the event.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of the event.
    #   @return [Time]
    #
    # @!attribute [rw] event_status
    #   The status of the configuration update event. Possible values
    #   include INFO, WARN, and ERROR.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results returned by `ListConfigurationHistory`
    #   in paginated output. When this parameter is used,
    #   `ListConfigurationHistory` returns only `MaxResults` in a single
    #   page along with a `NextToken` response element. The remaining
    #   results of the initial request can be seen by sending another
    #   `ListConfigurationHistory` request with the returned `NextToken`
    #   value. If this parameter is not used, then
    #   `ListConfigurationHistory` returns all results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `NextToken` value returned from a previous paginated
    #   `ListConfigurationHistory` request where `MaxResults` was used and
    #   the results exceeded the value of that parameter. Pagination
    #   continues from the end of the previous results that returned the
    #   `NextToken` value. This value is `null` when there are no more
    #   results to return.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The AWS account ID for the resource group owner.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ListConfigurationHistoryRequest AWS API Documentation
    #
    class ListConfigurationHistoryRequest < Struct.new(
      :resource_group_name,
      :start_time,
      :end_time,
      :event_status,
      :max_results,
      :next_token,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_list
    #   The list of configuration events and their corresponding details.
    #   @return [Array<Types::ConfigurationEvent>]
    #
    # @!attribute [rw] next_token
    #   The `NextToken` value to include in a future
    #   `ListConfigurationHistory` request. When the results of a
    #   `ListConfigurationHistory` request exceed `MaxResults`, this value
    #   can be used to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ListConfigurationHistoryResponse AWS API Documentation
    #
    class ListConfigurationHistoryResponse < Struct.new(
      :event_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `NextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The AWS account ID for the resource group owner.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ListLogPatternSetsRequest AWS API Documentation
    #
    class ListLogPatternSetsRequest < Struct.new(
      :resource_group_name,
      :max_results,
      :next_token,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The AWS account ID for the resource group owner.
    #   @return [String]
    #
    # @!attribute [rw] log_pattern_sets
    #   The list of log pattern sets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token used to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ListLogPatternSetsResponse AWS API Documentation
    #
    class ListLogPatternSetsResponse < Struct.new(
      :resource_group_name,
      :account_id,
      :log_pattern_sets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] pattern_set_name
    #   The name of the log pattern set.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `NextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The AWS account ID for the resource group owner.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ListLogPatternsRequest AWS API Documentation
    #
    class ListLogPatternsRequest < Struct.new(
      :resource_group_name,
      :pattern_set_name,
      :max_results,
      :next_token,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The AWS account ID for the resource group owner.
    #   @return [String]
    #
    # @!attribute [rw] log_patterns
    #   The list of log patterns.
    #   @return [Array<Types::LogPattern>]
    #
    # @!attribute [rw] next_token
    #   The token used to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ListLogPatternsResponse AWS API Documentation
    #
    class ListLogPatternsResponse < Struct.new(
      :resource_group_name,
      :account_id,
      :log_patterns,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The AWS account ID for the resource group owner.
    #   @return [String]
    #
    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time when the problem was detected, in epoch seconds. If you
    #   don't specify a time frame for the request, problems within the
    #   past seven days are returned.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time when the problem ended, in epoch seconds. If not specified,
    #   problems within the past seven days are returned.
    #   @return [Time]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `NextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] visibility
    #   Specifies whether or not you can view the problem. If not specified,
    #   visible and ignored problems are returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ListProblemsRequest AWS API Documentation
    #
    class ListProblemsRequest < Struct.new(
      :account_id,
      :resource_group_name,
      :start_time,
      :end_time,
      :max_results,
      :next_token,
      :component_name,
      :visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] problem_list
    #   The list of problems.
    #   @return [Array<Types::Problem>]
    #
    # @!attribute [rw] next_token
    #   The token used to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The AWS account ID for the resource group owner.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ListProblemsResponse AWS API Documentation
    #
    class ListProblemsResponse < Struct.new(
      :problem_list,
      :next_token,
      :resource_group_name,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the application that you want to
    #   retrieve tag information for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   An array that lists all the tags that are associated with the
    #   application. Each tag consists of a required tag key (`Key`) and an
    #   associated tag value (`Value`).
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `NextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The AWS account ID of the owner of the workload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ListWorkloadsRequest AWS API Documentation
    #
    class ListWorkloadsRequest < Struct.new(
      :resource_group_name,
      :component_name,
      :max_results,
      :next_token,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workload_list
    #   The list of workloads.
    #   @return [Array<Types::Workload>]
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ListWorkloadsResponse AWS API Documentation
    #
    class ListWorkloadsResponse < Struct.new(
      :workload_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that defines the log patterns that belongs to a
    # `LogPatternSet`.
    #
    # @!attribute [rw] pattern_set_name
    #   The name of the log pattern. A log pattern name can contain as many
    #   as 30 characters, and it cannot be empty. The characters can be
    #   Unicode letters, digits, or one of the following symbols: period,
    #   dash, underscore.
    #   @return [String]
    #
    # @!attribute [rw] pattern_name
    #   The name of the log pattern. A log pattern name can contain as many
    #   as 50 characters, and it cannot be empty. The characters can be
    #   Unicode letters, digits, or one of the following symbols: period,
    #   dash, underscore.
    #   @return [String]
    #
    # @!attribute [rw] pattern
    #   A regular expression that defines the log pattern. A log pattern can
    #   contain as many as 50 characters, and it cannot be empty. The
    #   pattern must be DFA compatible. Patterns that utilize forward
    #   lookahead or backreference constructions are not supported.
    #   @return [String]
    #
    # @!attribute [rw] rank
    #   Rank of the log pattern. Must be a value between `1` and
    #   `1,000,000`. The patterns are sorted by rank, so we recommend that
    #   you set your highest priority patterns with the lowest rank. A
    #   pattern of rank `1` will be the first to get matched to a log line.
    #   A pattern of rank `1,000,000` will be last to get matched. When you
    #   configure custom log patterns from the console, a `Low` severity
    #   pattern translates to a `750,000` rank. A `Medium` severity pattern
    #   translates to a `500,000` rank. And a `High` severity pattern
    #   translates to a `250,000` rank. Rank values less than `1` or greater
    #   than `1,000,000` are reserved for AWS-provided patterns.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/LogPattern AWS API Documentation
    #
    class LogPattern < Struct.new(
      :pattern_set_name,
      :pattern_name,
      :pattern,
      :rank)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an anomaly or error with the application.
    #
    # @!attribute [rw] id
    #   The ID of the observation type.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time when the observation was first detected, in epoch seconds.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time when the observation ended, in epoch seconds.
    #   @return [Time]
    #
    # @!attribute [rw] source_type
    #   The source type of the observation.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   The source resource ARN of the observation.
    #   @return [String]
    #
    # @!attribute [rw] log_group
    #   The log group name.
    #   @return [String]
    #
    # @!attribute [rw] line_time
    #   The timestamp in the CloudWatch Logs that specifies when the matched
    #   line occurred.
    #   @return [Time]
    #
    # @!attribute [rw] log_text
    #   The log text of the observation.
    #   @return [String]
    #
    # @!attribute [rw] log_filter
    #   The log filter of the observation.
    #   @return [String]
    #
    # @!attribute [rw] metric_namespace
    #   The namespace of the observation metric.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The name of the observation metric.
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The unit of the source observation metric.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the source observation metric.
    #   @return [Float]
    #
    # @!attribute [rw] cloud_watch_event_id
    #   The ID of the CloudWatch Event-based observation related to the
    #   detected problem.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_event_source
    #   The source of the CloudWatch Event.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_event_detail_type
    #   The detail type of the CloudWatch Event-based observation, for
    #   example, `EC2 Instance State-change Notification`.
    #   @return [String]
    #
    # @!attribute [rw] health_event_arn
    #   The Amazon Resource Name (ARN) of the AWS Health Event-based
    #   observation.
    #   @return [String]
    #
    # @!attribute [rw] health_service
    #   The service to which the AWS Health Event belongs, such as EC2.
    #   @return [String]
    #
    # @!attribute [rw] health_event_type_code
    #   The type of the AWS Health event, for example,
    #   `AWS_EC2_POWER_CONNECTIVITY_ISSUE`.
    #   @return [String]
    #
    # @!attribute [rw] health_event_type_category
    #   The category of the AWS Health event, such as `issue`.
    #   @return [String]
    #
    # @!attribute [rw] health_event_description
    #   The description of the AWS Health event provided by the service,
    #   such as Amazon EC2.
    #   @return [String]
    #
    # @!attribute [rw] code_deploy_deployment_id
    #   The deployment ID of the CodeDeploy-based observation related to the
    #   detected problem.
    #   @return [String]
    #
    # @!attribute [rw] code_deploy_deployment_group
    #   The deployment group to which the CodeDeploy deployment belongs.
    #   @return [String]
    #
    # @!attribute [rw] code_deploy_state
    #   The status of the CodeDeploy deployment, for example `SUCCESS` or `
    #   FAILURE`.
    #   @return [String]
    #
    # @!attribute [rw] code_deploy_application
    #   The CodeDeploy application to which the deployment belongs.
    #   @return [String]
    #
    # @!attribute [rw] code_deploy_instance_group_id
    #   The instance group to which the CodeDeploy instance belongs.
    #   @return [String]
    #
    # @!attribute [rw] ec2_state
    #   The state of the instance, such as `STOPPING` or `TERMINATING`.
    #   @return [String]
    #
    # @!attribute [rw] rds_event_categories
    #   The category of an RDS event.
    #   @return [String]
    #
    # @!attribute [rw] rds_event_message
    #   The message of an RDS event.
    #   @return [String]
    #
    # @!attribute [rw] s3_event_name
    #   The name of the S3 CloudWatch Event-based observation.
    #   @return [String]
    #
    # @!attribute [rw] states_execution_arn
    #   The Amazon Resource Name (ARN) of the step function execution-based
    #   observation.
    #   @return [String]
    #
    # @!attribute [rw] states_arn
    #   The Amazon Resource Name (ARN) of the step function-based
    #   observation.
    #   @return [String]
    #
    # @!attribute [rw] states_status
    #   The status of the step function-related observation.
    #   @return [String]
    #
    # @!attribute [rw] states_input
    #   The input to the step function-based observation.
    #   @return [String]
    #
    # @!attribute [rw] ebs_event
    #   The type of EBS CloudWatch event, such as `createVolume`,
    #   `deleteVolume` or `attachVolume`.
    #   @return [String]
    #
    # @!attribute [rw] ebs_result
    #   The result of an EBS CloudWatch event, such as `failed` or
    #   `succeeded`.
    #   @return [String]
    #
    # @!attribute [rw] ebs_cause
    #   The cause of an EBS CloudWatch event.
    #   @return [String]
    #
    # @!attribute [rw] ebs_request_id
    #   The request ID of an EBS CloudWatch event.
    #   @return [String]
    #
    # @!attribute [rw] x_ray_fault_percent
    #   The X-Ray request fault percentage for this node.
    #   @return [Integer]
    #
    # @!attribute [rw] x_ray_throttle_percent
    #   The X-Ray request throttle percentage for this node.
    #   @return [Integer]
    #
    # @!attribute [rw] x_ray_error_percent
    #   The X-Ray request error percentage for this node.
    #   @return [Integer]
    #
    # @!attribute [rw] x_ray_request_count
    #   The X-Ray request count for this node.
    #   @return [Integer]
    #
    # @!attribute [rw] x_ray_request_average_latency
    #   The X-Ray node request average latency for this node.
    #   @return [Integer]
    #
    # @!attribute [rw] x_ray_node_name
    #   The name of the X-Ray node.
    #   @return [String]
    #
    # @!attribute [rw] x_ray_node_type
    #   The type of the X-Ray node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/Observation AWS API Documentation
    #
    class Observation < Struct.new(
      :id,
      :start_time,
      :end_time,
      :source_type,
      :source_arn,
      :log_group,
      :line_time,
      :log_text,
      :log_filter,
      :metric_namespace,
      :metric_name,
      :unit,
      :value,
      :cloud_watch_event_id,
      :cloud_watch_event_source,
      :cloud_watch_event_detail_type,
      :health_event_arn,
      :health_service,
      :health_event_type_code,
      :health_event_type_category,
      :health_event_description,
      :code_deploy_deployment_id,
      :code_deploy_deployment_group,
      :code_deploy_state,
      :code_deploy_application,
      :code_deploy_instance_group_id,
      :ec2_state,
      :rds_event_categories,
      :rds_event_message,
      :s3_event_name,
      :states_execution_arn,
      :states_arn,
      :states_status,
      :states_input,
      :ebs_event,
      :ebs_result,
      :ebs_cause,
      :ebs_request_id,
      :x_ray_fault_percent,
      :x_ray_throttle_percent,
      :x_ray_error_percent,
      :x_ray_request_count,
      :x_ray_request_average_latency,
      :x_ray_node_name,
      :x_ray_node_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a problem that is detected by correlating observations.
    #
    # @!attribute [rw] id
    #   The ID of the problem.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The name of the problem.
    #   @return [String]
    #
    # @!attribute [rw] insights
    #   A detailed analysis of the problem using machine learning.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the problem.
    #   @return [String]
    #
    # @!attribute [rw] affected_resource
    #   The resource affected by the problem.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time when the problem started, in epoch seconds.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time when the problem ended, in epoch seconds.
    #   @return [Time]
    #
    # @!attribute [rw] severity_level
    #   A measure of the level of impact of the problem.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The AWS account ID for the owner of the resource group affected by
    #   the problem.
    #   @return [String]
    #
    # @!attribute [rw] resource_group_name
    #   The name of the resource group affected by the problem.
    #   @return [String]
    #
    # @!attribute [rw] feedback
    #   Feedback provided by the user about the problem.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] recurring_count
    #   The number of times that the same problem reoccurred after the first
    #   time it was resolved.
    #   @return [Integer]
    #
    # @!attribute [rw] last_recurrence_time
    #   The last time that the problem reoccurred after its last resolution.
    #   @return [Time]
    #
    # @!attribute [rw] visibility
    #   Specifies whether or not you can view the problem. Updates to
    #   ignored problems do not generate notifications.
    #   @return [String]
    #
    # @!attribute [rw] resolution_method
    #   Specifies how the problem was resolved. If the value is `AUTOMATIC`,
    #   the system resolved the problem. If the value is `MANUAL`, the user
    #   resolved the problem. If the value is `UNRESOLVED`, then the problem
    #   is not resolved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/Problem AWS API Documentation
    #
    class Problem < Struct.new(
      :id,
      :title,
      :insights,
      :status,
      :affected_resource,
      :start_time,
      :end_time,
      :severity_level,
      :account_id,
      :resource_group_name,
      :feedback,
      :recurring_count,
      :last_recurrence_time,
      :visibility,
      :resolution_method)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes observations related to the problem.
    #
    # @!attribute [rw] observation_list
    #   The list of observations related to the problem.
    #   @return [Array<Types::Observation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/RelatedObservations AWS API Documentation
    #
    class RelatedObservations < Struct.new(
      :observation_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] workload_id
    #   The ID of the workload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/RemoveWorkloadRequest AWS API Documentation
    #
    class RemoveWorkloadRequest < Struct.new(
      :resource_group_name,
      :component_name,
      :workload_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/RemoveWorkloadResponse AWS API Documentation
    #
    class RemoveWorkloadResponse < Aws::EmptyStructure; end

    # The resource is already created or in use.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource does not exist in the customer account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that defines the tags associated with an application. A
    # *tag* is a label that you optionally define and associate with an
    # application. Tags can help you categorize and manage resources in
    # different ways, such as by purpose, owner, environment, or other
    # criteria.
    #
    # Each tag consists of a required *tag key* and an associated *tag
    # value*, both of which you define. A tag key is a general label that
    # acts as a category for a more specific tag value. A tag value acts as
    # a descriptor within a tag key. A tag key can contain as many as 128
    # characters. A tag value can contain as many as 256 characters. The
    # characters can be Unicode letters, digits, white space, or one of the
    # following symbols: \_ . : / = + -. The following additional
    # restrictions apply to tags:
    #
    # * Tag keys and values are case sensitive.
    #
    # * For each associated resource, each tag key must be unique and it can
    #   have only one value.
    #
    # * The `aws:` prefix is reserved for use by AWS; you can’t use it in
    #   any tag keys or values that you define. In addition, you can't edit
    #   or remove tag keys or values that use this prefix.
    #
    # @!attribute [rw] key
    #   One part of a key-value pair that defines a tag. The maximum length
    #   of a tag key is 128 characters. The minimum length is 1 character.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The optional part of a key-value pair that defines a tag. The
    #   maximum length of a tag value is 256 characters. The minimum length
    #   is 0 characters. If you don't want an application to have a
    #   specific tag value, don't specify a value for this parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the application that you want to
    #   add one or more tags to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags that to add to the application. A tag consists of a
    #   required tag key (`Key`) and an associated tag value (`Value`). The
    #   maximum length of a tag key is 128 characters. The maximum length of
    #   a tag value is 256 characters.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Tags are already registered for the specified application ARN.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/TagsAlreadyExistException AWS API Documentation
    #
    class TagsAlreadyExistException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of the provided tags is beyond the limit, or the number of
    # total tags you are trying to attach to the specified resource exceeds
    # the limit.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the resource with too many tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Struct.new(
      :message,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the application that you want to
    #   remove one or more tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tags (tag keys) that you want to remove from the resource. When
    #   you specify a tag key, the action removes both that key and its
    #   associated tag value.
    #
    #   To remove more than one tag from the application, append the
    #   `TagKeys` parameter and argument for each additional tag to remove,
    #   separated by an ampersand.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] ops_center_enabled
    #   When set to `true`, creates opsItems for any problems detected on an
    #   application.
    #   @return [Boolean]
    #
    # @!attribute [rw] cwe_monitor_enabled
    #   Indicates whether Application Insights can listen to CloudWatch
    #   events for the application resources, such as `instance terminated`,
    #   `failed deployment`, and others.
    #   @return [Boolean]
    #
    # @!attribute [rw] ops_item_sns_topic_arn
    #   The SNS topic provided to Application Insights that is associated to
    #   the created opsItem. Allows you to receive notifications for updates
    #   to the opsItem.
    #   @return [String]
    #
    # @!attribute [rw] remove_sns_topic
    #   Disassociates the SNS topic from the opsItem created for detected
    #   problems.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_config_enabled
    #   Turns auto-configuration on or off.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/UpdateApplicationRequest AWS API Documentation
    #
    class UpdateApplicationRequest < Struct.new(
      :resource_group_name,
      :ops_center_enabled,
      :cwe_monitor_enabled,
      :ops_item_sns_topic_arn,
      :remove_sns_topic,
      :auto_config_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_info
    #   Information about the application.
    #   @return [Types::ApplicationInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/UpdateApplicationResponse AWS API Documentation
    #
    class UpdateApplicationResponse < Struct.new(
      :application_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] monitor
    #   Indicates whether the application component is monitored.
    #   @return [Boolean]
    #
    # @!attribute [rw] tier
    #   The tier of the application component.
    #   @return [String]
    #
    # @!attribute [rw] component_configuration
    #   The configuration settings of the component. The value is the
    #   escaped JSON of the configuration. For more information about the
    #   JSON format, see [Working with JSON][1]. You can send a request to
    #   `DescribeComponentConfigurationRecommendation` to see the
    #   recommended configuration for a component. For the complete format
    #   of the component configuration file, see [Component
    #   Configuration][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sdk-for-javascript/v2/developer-guide/working-with-json.html
    #   [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/component-config.html
    #   @return [String]
    #
    # @!attribute [rw] auto_config_enabled
    #   Automatically configures the component by applying the recommended
    #   configurations.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/UpdateComponentConfigurationRequest AWS API Documentation
    #
    class UpdateComponentConfigurationRequest < Struct.new(
      :resource_group_name,
      :component_name,
      :monitor,
      :tier,
      :component_configuration,
      :auto_config_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/UpdateComponentConfigurationResponse AWS API Documentation
    #
    class UpdateComponentConfigurationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] new_component_name
    #   The new name of the component.
    #   @return [String]
    #
    # @!attribute [rw] resource_list
    #   The list of resource ARNs that belong to the component.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/UpdateComponentRequest AWS API Documentation
    #
    class UpdateComponentRequest < Struct.new(
      :resource_group_name,
      :component_name,
      :new_component_name,
      :resource_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/UpdateComponentResponse AWS API Documentation
    #
    class UpdateComponentResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] pattern_set_name
    #   The name of the log pattern set.
    #   @return [String]
    #
    # @!attribute [rw] pattern_name
    #   The name of the log pattern.
    #   @return [String]
    #
    # @!attribute [rw] pattern
    #   The log pattern. The pattern must be DFA compatible. Patterns that
    #   utilize forward lookahead or backreference constructions are not
    #   supported.
    #   @return [String]
    #
    # @!attribute [rw] rank
    #   Rank of the log pattern. Must be a value between `1` and
    #   `1,000,000`. The patterns are sorted by rank, so we recommend that
    #   you set your highest priority patterns with the lowest rank. A
    #   pattern of rank `1` will be the first to get matched to a log line.
    #   A pattern of rank `1,000,000` will be last to get matched. When you
    #   configure custom log patterns from the console, a `Low` severity
    #   pattern translates to a `750,000` rank. A `Medium` severity pattern
    #   translates to a `500,000` rank. And a `High` severity pattern
    #   translates to a `250,000` rank. Rank values less than `1` or greater
    #   than `1,000,000` are reserved for AWS-provided patterns.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/UpdateLogPatternRequest AWS API Documentation
    #
    class UpdateLogPatternRequest < Struct.new(
      :resource_group_name,
      :pattern_set_name,
      :pattern_name,
      :pattern,
      :rank)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] log_pattern
    #   The successfully created log pattern.
    #   @return [Types::LogPattern]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/UpdateLogPatternResponse AWS API Documentation
    #
    class UpdateLogPatternResponse < Struct.new(
      :resource_group_name,
      :log_pattern)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] problem_id
    #   The ID of the problem.
    #   @return [String]
    #
    # @!attribute [rw] update_status
    #   The status of the problem. Arguments can be passed for only problems
    #   that show a status of `RECOVERING`.
    #   @return [String]
    #
    # @!attribute [rw] visibility
    #   The visibility of a problem. When you pass a value of `IGNORED`, the
    #   problem is removed from the default view, and all notifications for
    #   the problem are suspended. When `VISIBLE` is passed, the `IGNORED`
    #   action is reversed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/UpdateProblemRequest AWS API Documentation
    #
    class UpdateProblemRequest < Struct.new(
      :problem_id,
      :update_status,
      :visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/UpdateProblemResponse AWS API Documentation
    #
    class UpdateProblemResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_group_name
    #   The name of the resource group.
    #   @return [String]
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] workload_id
    #   The ID of the workload.
    #   @return [String]
    #
    # @!attribute [rw] workload_configuration
    #   The configuration settings of the workload. The value is the escaped
    #   JSON of the configuration.
    #   @return [Types::WorkloadConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/UpdateWorkloadRequest AWS API Documentation
    #
    class UpdateWorkloadRequest < Struct.new(
      :resource_group_name,
      :component_name,
      :workload_id,
      :workload_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workload_id
    #   The ID of the workload.
    #   @return [String]
    #
    # @!attribute [rw] workload_configuration
    #   The configuration settings of the workload. The value is the escaped
    #   JSON of the configuration.
    #   @return [Types::WorkloadConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/UpdateWorkloadResponse AWS API Documentation
    #
    class UpdateWorkloadResponse < Struct.new(
      :workload_id,
      :workload_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameter is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the workloads on a component.
    #
    # @!attribute [rw] workload_id
    #   The ID of the workload.
    #   @return [String]
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] workload_name
    #   The name of the workload.
    #   @return [String]
    #
    # @!attribute [rw] tier
    #   The tier of the workload.
    #   @return [String]
    #
    # @!attribute [rw] workload_remarks
    #   If logging is supported for the resource type, shows whether the
    #   component has configured logs to be monitored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/Workload AWS API Documentation
    #
    class Workload < Struct.new(
      :workload_id,
      :component_name,
      :workload_name,
      :tier,
      :workload_remarks)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the workload.
    #
    # @!attribute [rw] workload_name
    #   The name of the workload.
    #   @return [String]
    #
    # @!attribute [rw] tier
    #   The configuration of the workload tier.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration settings of the workload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/WorkloadConfiguration AWS API Documentation
    #
    class WorkloadConfiguration < Struct.new(
      :workload_name,
      :tier,
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
