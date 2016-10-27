# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration::IDENTIFIERS << :emr

module Aws
  module EMR
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs
      include Aws::ClientWaiters

      @identifier = :emr

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::CredentialsConfiguration)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::HelpfulSocketErrors)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
      add_plugin(Aws::Plugins::SignatureV4)
      add_plugin(Aws::Plugins::Protocols::JsonRpc)

      # @option options [required, Aws::CredentialProvider] :credentials
      #   Your AWS credentials. This can be an instance of any one of the
      #   following classes:
      #
      #   * `Aws::Credentials` - Used for configuring static, non-refreshing
      #     credentials.
      #
      #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
      #     from an EC2 IMDS on an EC2 instance.
      #
      #   * `Aws::SharedCredentials` - Used for loading credentials from a
      #     shared file, such as `~/.aws/config`.
      #
      #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
      #
      #   When `:credentials` are not configured directly, the following
      #   locations will be searched for credentials:
      #
      #   * `Aws.config[:credentials]`
      #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
      #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
      #   * `~/.aws/credentials`
      #   * `~/.aws/config`
      #   * EC2 IMDS instance profile - When used by default, the timeouts are
      #     very aggressive. Construct and pass an instance of
      #     `Aws::InstanceProfileCredentails` to enable retries and extended
      #     timeouts.
      # @option options [required, String] :region
      #   The AWS region to connect to.  The configured `:region` is
      #   used to determine the service `:endpoint`. When not passed,
      #   a default `:region` is search for in the following locations:
      #
      #   * `Aws.config[:region]`
      #   * `ENV['AWS_REGION']`
      #   * `ENV['AMAZON_REGION']`
      #   * `ENV['AWS_DEFAULT_REGION']`
      #   * `~/.aws/credentials`
      #   * `~/.aws/config`
      # @option options [String] :access_key_id
      # @option options [Boolean] :convert_params (true)
      #   When `true`, an attempt is made to coerce request parameters into
      #   the required types.
      # @option options [String] :endpoint
      #   The client endpoint is normally constructed from the `:region`
      #   option. You should only configure an `:endpoint` when connecting
      #   to test endpoints. This should be avalid HTTP(S) URI.
      # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
      #   The log formatter.
      # @option options [Symbol] :log_level (:info)
      #   The log level to send messages to the `:logger` at.
      # @option options [Logger] :logger
      #   The Logger instance to send log messages to.  If this option
      #   is not set, logging will be disabled.
      # @option options [String] :profile ("default")
      #   Used when loading credentials from the shared credentials file
      #   at HOME/.aws/credentials.  When not specified, 'default' is used.
      # @option options [Integer] :retry_limit (3)
      #   The maximum number of times to retry failed requests.  Only
      #   ~ 500 level server errors and certain ~ 400 level client errors
      #   are retried.  Generally, these are throttling errors, data
      #   checksum errors, networking errors, timeout errors and auth
      #   errors from expired credentials.
      # @option options [String] :secret_access_key
      # @option options [String] :session_token
      # @option options [Boolean] :simple_json (false)
      #   Disables request parameter conversion, validation, and formatting.
      #   Also disable response data type conversions. This option is useful
      #   when you want to ensure the highest level of performance by
      #   avoiding overhead of walking request parameters and response data
      #   structures.
      #
      #   When `:simple_json` is enabled, the request parameters hash must
      #   be formatted exactly as the DynamoDB API expects.
      # @option options [Boolean] :stub_responses (false)
      #   Causes the client to return stubbed responses. By default
      #   fake responses are generated and returned. You can specify
      #   the response data to return or errors to raise by calling
      #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
      #
      #   ** Please note ** When response stubbing is enabled, no HTTP
      #   requests are made, and retries are disabled.
      # @option options [Boolean] :validate_params (true)
      #   When `true`, request parameters are validated before
      #   sending the request.
      def initialize(*args)
        super
      end

      # @!group API Operations

      # AddInstanceGroups adds an instance group to a running cluster.
      # @option params [required, Array<Types::InstanceGroupConfig>] :instance_groups
      #   Instance Groups to add.
      # @option params [required, String] :job_flow_id
      #   Job flow in which to add the instance groups.
      # @return [Types::AddInstanceGroupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::AddInstanceGroupsOutput#job_flow_id #JobFlowId} => String
      #   * {Types::AddInstanceGroupsOutput#instance_group_ids #InstanceGroupIds} => Array&lt;String&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.add_instance_groups({
      #     instance_groups: [ # required
      #       {
      #         name: "XmlStringMaxLen256",
      #         market: "ON_DEMAND", # accepts ON_DEMAND, SPOT
      #         instance_role: "MASTER", # required, accepts MASTER, CORE, TASK
      #         bid_price: "XmlStringMaxLen256",
      #         instance_type: "InstanceType", # required
      #         instance_count: 1, # required
      #         configurations: [
      #           {
      #             classification: "String",
      #             configurations: {
      #               # recursive ConfigurationList
      #             },
      #             properties: {
      #               "String" => "String",
      #             },
      #           },
      #         ],
      #         ebs_configuration: {
      #           ebs_block_device_configs: [
      #             {
      #               volume_specification: { # required
      #                 volume_type: "String", # required
      #                 iops: 1,
      #                 size_in_gb: 1, # required
      #               },
      #               volumes_per_instance: 1,
      #             },
      #           ],
      #           ebs_optimized: false,
      #         },
      #       },
      #     ],
      #     job_flow_id: "XmlStringMaxLen256", # required
      #   })
      #
      # @example Response structure
      #   resp.job_flow_id #=> String
      #   resp.instance_group_ids #=> Array
      #   resp.instance_group_ids[0] #=> String
      # @overload add_instance_groups(params = {})
      # @param [Hash] params ({})
      def add_instance_groups(params = {}, options = {})
        req = build_request(:add_instance_groups, params)
        req.send_request(options)
      end

      # AddJobFlowSteps adds new steps to a running job flow. A maximum of 256
      # steps are allowed in each job flow.
      #
      # If your job flow is long-running (such as a Hive data warehouse) or
      # complex, you may require more than 256 steps to process your data. You
      # can bypass the 256-step limitation in various ways, including using
      # the SSH shell to connect to the master node and submitting queries
      # directly to the software running on the master node, such as Hive and
      # Hadoop. For more information on how to do this, go to [Add More than
      # 256 Steps to a Job Flow][1] in the *Amazon Elastic MapReduce
      # Developer's Guide*.
      #
      # A step specifies the location of a JAR file stored either on the
      # master node of the job flow or in Amazon S3. Each step is performed by
      # the main function of the main class of the JAR file. The main class
      # can be specified either in the manifest of the JAR or by using the
      # MainFunction parameter of the step.
      #
      # Elastic MapReduce executes each step in the order listed. For a step
      # to be considered complete, the main function must exit with a zero
      # exit code and all Hadoop jobs started while the step was running must
      # have completed and run successfully.
      #
      # You can only add steps to a job flow that is in one of the following
      # states: STARTING, BOOTSTRAPPING, RUNNING, or WAITING.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ElasticMapReduce/latest/DeveloperGuide/AddMoreThan256Steps.html
      # @option params [required, String] :job_flow_id
      #   A string that uniquely identifies the job flow. This identifier is
      #   returned by RunJobFlow and can also be obtained from ListClusters.
      # @option params [required, Array<Types::StepConfig>] :steps
      #   A list of StepConfig to be executed by the job flow.
      # @return [Types::AddJobFlowStepsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::AddJobFlowStepsOutput#step_ids #StepIds} => Array&lt;String&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.add_job_flow_steps({
      #     job_flow_id: "XmlStringMaxLen256", # required
      #     steps: [ # required
      #       {
      #         name: "XmlStringMaxLen256", # required
      #         action_on_failure: "TERMINATE_JOB_FLOW", # accepts TERMINATE_JOB_FLOW, TERMINATE_CLUSTER, CANCEL_AND_WAIT, CONTINUE
      #         hadoop_jar_step: { # required
      #           properties: [
      #             {
      #               key: "XmlString",
      #               value: "XmlString",
      #             },
      #           ],
      #           jar: "XmlString", # required
      #           main_class: "XmlString",
      #           args: ["XmlString"],
      #         },
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.step_ids #=> Array
      #   resp.step_ids[0] #=> String
      # @overload add_job_flow_steps(params = {})
      # @param [Hash] params ({})
      def add_job_flow_steps(params = {}, options = {})
        req = build_request(:add_job_flow_steps, params)
        req.send_request(options)
      end

      # Adds tags to an Amazon EMR resource. Tags make it easier to associate
      # clusters in various ways, such as grouping clusters to track your
      # Amazon EMR resource allocation costs. For more information, see
      # [Tagging Amazon EMR Resources][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ElasticMapReduce/latest/DeveloperGuide/emr-plan-tags.html
      # @option params [required, String] :resource_id
      #   The Amazon EMR resource identifier to which tags will be added. This
      #   value must be a cluster identifier.
      # @option params [required, Array<Types::Tag>] :tags
      #   A list of tags to associate with a cluster and propagate to Amazon EC2
      #   instances. Tags are user-defined key/value pairs that consist of a
      #   required key string with a maximum of 128 characters, and an optional
      #   value string with a maximum of 256 characters.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.add_tags({
      #     resource_id: "ResourceId", # required
      #     tags: [ # required
      #       {
      #         key: "String",
      #         value: "String",
      #       },
      #     ],
      #   })
      # @overload add_tags(params = {})
      # @param [Hash] params ({})
      def add_tags(params = {}, options = {})
        req = build_request(:add_tags, params)
        req.send_request(options)
      end

      # Provides cluster-level details including status, hardware and software
      # configuration, VPC settings, and so on. For information about the
      # cluster steps, see ListSteps.
      # @option params [required, String] :cluster_id
      #   The identifier of the cluster to describe.
      # @return [Types::DescribeClusterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeClusterOutput#cluster #Cluster} => Types::Cluster
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_cluster({
      #     cluster_id: "ClusterId", # required
      #   })
      #
      # @example Response structure
      #   resp.cluster.id #=> String
      #   resp.cluster.name #=> String
      #   resp.cluster.status.state #=> String, one of "STARTING", "BOOTSTRAPPING", "RUNNING", "WAITING", "TERMINATING", "TERMINATED", "TERMINATED_WITH_ERRORS"
      #   resp.cluster.status.state_change_reason.code #=> String, one of "INTERNAL_ERROR", "VALIDATION_ERROR", "INSTANCE_FAILURE", "BOOTSTRAP_FAILURE", "USER_REQUEST", "STEP_FAILURE", "ALL_STEPS_COMPLETED"
      #   resp.cluster.status.state_change_reason.message #=> String
      #   resp.cluster.status.timeline.creation_date_time #=> Time
      #   resp.cluster.status.timeline.ready_date_time #=> Time
      #   resp.cluster.status.timeline.end_date_time #=> Time
      #   resp.cluster.ec2_instance_attributes.ec2_key_name #=> String
      #   resp.cluster.ec2_instance_attributes.ec2_subnet_id #=> String
      #   resp.cluster.ec2_instance_attributes.ec2_availability_zone #=> String
      #   resp.cluster.ec2_instance_attributes.iam_instance_profile #=> String
      #   resp.cluster.ec2_instance_attributes.emr_managed_master_security_group #=> String
      #   resp.cluster.ec2_instance_attributes.emr_managed_slave_security_group #=> String
      #   resp.cluster.ec2_instance_attributes.service_access_security_group #=> String
      #   resp.cluster.ec2_instance_attributes.additional_master_security_groups #=> Array
      #   resp.cluster.ec2_instance_attributes.additional_master_security_groups[0] #=> String
      #   resp.cluster.ec2_instance_attributes.additional_slave_security_groups #=> Array
      #   resp.cluster.ec2_instance_attributes.additional_slave_security_groups[0] #=> String
      #   resp.cluster.log_uri #=> String
      #   resp.cluster.requested_ami_version #=> String
      #   resp.cluster.running_ami_version #=> String
      #   resp.cluster.release_label #=> String
      #   resp.cluster.auto_terminate #=> Boolean
      #   resp.cluster.termination_protected #=> Boolean
      #   resp.cluster.visible_to_all_users #=> Boolean
      #   resp.cluster.applications #=> Array
      #   resp.cluster.applications[0].name #=> String
      #   resp.cluster.applications[0].version #=> String
      #   resp.cluster.applications[0].args #=> Array
      #   resp.cluster.applications[0].args[0] #=> String
      #   resp.cluster.applications[0].additional_info #=> Hash
      #   resp.cluster.applications[0].additional_info["String"] #=> String
      #   resp.cluster.tags #=> Array
      #   resp.cluster.tags[0].key #=> String
      #   resp.cluster.tags[0].value #=> String
      #   resp.cluster.service_role #=> String
      #   resp.cluster.normalized_instance_hours #=> Integer
      #   resp.cluster.master_public_dns_name #=> String
      #   resp.cluster.configurations #=> Array
      #   resp.cluster.configurations[0].classification #=> String
      #   resp.cluster.configurations[0].configurations #=> Types::ConfigurationList
      #   resp.cluster.configurations[0].properties #=> Hash
      #   resp.cluster.configurations[0].properties["String"] #=> String
      # @overload describe_cluster(params = {})
      # @param [Hash] params ({})
      def describe_cluster(params = {}, options = {})
        req = build_request(:describe_cluster, params)
        req.send_request(options)
      end

      # This API is deprecated and will eventually be removed. We recommend
      # you use ListClusters, DescribeCluster, ListSteps, ListInstanceGroups
      # and ListBootstrapActions instead.
      #
      # DescribeJobFlows returns a list of job flows that match all of the
      # supplied parameters. The parameters can include a list of job flow
      # IDs, job flow states, and restrictions on job flow creation date and
      # time.
      #
      # Regardless of supplied parameters, only job flows created within the
      # last two months are returned.
      #
      # If no parameters are supplied, then job flows matching either of the
      # following criteria are returned:
      #
      # * Job flows created and completed in the last two weeks
      #
      # * Job flows created within the last two months that are in one of the
      #   following states: `RUNNING`, `WAITING`, `SHUTTING_DOWN`, `STARTING`
      #
      # Amazon Elastic MapReduce can return a maximum of 512 job flow
      # descriptions.
      # @option params [Time,DateTime,Date,Integer,String] :created_after
      #   Return only job flows created after this date and time.
      # @option params [Time,DateTime,Date,Integer,String] :created_before
      #   Return only job flows created before this date and time.
      # @option params [Array<String>] :job_flow_ids
      #   Return only job flows whose job flow ID is contained in this list.
      # @option params [Array<String>] :job_flow_states
      #   Return only job flows whose state is contained in this list.
      # @return [Types::DescribeJobFlowsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeJobFlowsOutput#job_flows #JobFlows} => Array&lt;Types::JobFlowDetail&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_job_flows({
      #     created_after: Time.now,
      #     created_before: Time.now,
      #     job_flow_ids: ["XmlString"],
      #     job_flow_states: ["STARTING"], # accepts STARTING, BOOTSTRAPPING, RUNNING, WAITING, SHUTTING_DOWN, TERMINATED, COMPLETED, FAILED
      #   })
      #
      # @example Response structure
      #   resp.job_flows #=> Array
      #   resp.job_flows[0].job_flow_id #=> String
      #   resp.job_flows[0].name #=> String
      #   resp.job_flows[0].log_uri #=> String
      #   resp.job_flows[0].ami_version #=> String
      #   resp.job_flows[0].execution_status_detail.state #=> String, one of "STARTING", "BOOTSTRAPPING", "RUNNING", "WAITING", "SHUTTING_DOWN", "TERMINATED", "COMPLETED", "FAILED"
      #   resp.job_flows[0].execution_status_detail.creation_date_time #=> Time
      #   resp.job_flows[0].execution_status_detail.start_date_time #=> Time
      #   resp.job_flows[0].execution_status_detail.ready_date_time #=> Time
      #   resp.job_flows[0].execution_status_detail.end_date_time #=> Time
      #   resp.job_flows[0].execution_status_detail.last_state_change_reason #=> String
      #   resp.job_flows[0].instances.master_instance_type #=> String
      #   resp.job_flows[0].instances.master_public_dns_name #=> String
      #   resp.job_flows[0].instances.master_instance_id #=> String
      #   resp.job_flows[0].instances.slave_instance_type #=> String
      #   resp.job_flows[0].instances.instance_count #=> Integer
      #   resp.job_flows[0].instances.instance_groups #=> Array
      #   resp.job_flows[0].instances.instance_groups[0].instance_group_id #=> String
      #   resp.job_flows[0].instances.instance_groups[0].name #=> String
      #   resp.job_flows[0].instances.instance_groups[0].market #=> String, one of "ON_DEMAND", "SPOT"
      #   resp.job_flows[0].instances.instance_groups[0].instance_role #=> String, one of "MASTER", "CORE", "TASK"
      #   resp.job_flows[0].instances.instance_groups[0].bid_price #=> String
      #   resp.job_flows[0].instances.instance_groups[0].instance_type #=> String
      #   resp.job_flows[0].instances.instance_groups[0].instance_request_count #=> Integer
      #   resp.job_flows[0].instances.instance_groups[0].instance_running_count #=> Integer
      #   resp.job_flows[0].instances.instance_groups[0].state #=> String, one of "PROVISIONING", "BOOTSTRAPPING", "RUNNING", "RESIZING", "SUSPENDED", "TERMINATING", "TERMINATED", "ARRESTED", "SHUTTING_DOWN", "ENDED"
      #   resp.job_flows[0].instances.instance_groups[0].last_state_change_reason #=> String
      #   resp.job_flows[0].instances.instance_groups[0].creation_date_time #=> Time
      #   resp.job_flows[0].instances.instance_groups[0].start_date_time #=> Time
      #   resp.job_flows[0].instances.instance_groups[0].ready_date_time #=> Time
      #   resp.job_flows[0].instances.instance_groups[0].end_date_time #=> Time
      #   resp.job_flows[0].instances.normalized_instance_hours #=> Integer
      #   resp.job_flows[0].instances.ec2_key_name #=> String
      #   resp.job_flows[0].instances.ec2_subnet_id #=> String
      #   resp.job_flows[0].instances.placement.availability_zone #=> String
      #   resp.job_flows[0].instances.keep_job_flow_alive_when_no_steps #=> Boolean
      #   resp.job_flows[0].instances.termination_protected #=> Boolean
      #   resp.job_flows[0].instances.hadoop_version #=> String
      #   resp.job_flows[0].steps #=> Array
      #   resp.job_flows[0].steps[0].step_config.name #=> String
      #   resp.job_flows[0].steps[0].step_config.action_on_failure #=> String, one of "TERMINATE_JOB_FLOW", "TERMINATE_CLUSTER", "CANCEL_AND_WAIT", "CONTINUE"
      #   resp.job_flows[0].steps[0].step_config.hadoop_jar_step.properties #=> Array
      #   resp.job_flows[0].steps[0].step_config.hadoop_jar_step.properties[0].key #=> String
      #   resp.job_flows[0].steps[0].step_config.hadoop_jar_step.properties[0].value #=> String
      #   resp.job_flows[0].steps[0].step_config.hadoop_jar_step.jar #=> String
      #   resp.job_flows[0].steps[0].step_config.hadoop_jar_step.main_class #=> String
      #   resp.job_flows[0].steps[0].step_config.hadoop_jar_step.args #=> Array
      #   resp.job_flows[0].steps[0].step_config.hadoop_jar_step.args[0] #=> String
      #   resp.job_flows[0].steps[0].execution_status_detail.state #=> String, one of "PENDING", "RUNNING", "CONTINUE", "COMPLETED", "CANCELLED", "FAILED", "INTERRUPTED"
      #   resp.job_flows[0].steps[0].execution_status_detail.creation_date_time #=> Time
      #   resp.job_flows[0].steps[0].execution_status_detail.start_date_time #=> Time
      #   resp.job_flows[0].steps[0].execution_status_detail.end_date_time #=> Time
      #   resp.job_flows[0].steps[0].execution_status_detail.last_state_change_reason #=> String
      #   resp.job_flows[0].bootstrap_actions #=> Array
      #   resp.job_flows[0].bootstrap_actions[0].bootstrap_action_config.name #=> String
      #   resp.job_flows[0].bootstrap_actions[0].bootstrap_action_config.script_bootstrap_action.path #=> String
      #   resp.job_flows[0].bootstrap_actions[0].bootstrap_action_config.script_bootstrap_action.args #=> Array
      #   resp.job_flows[0].bootstrap_actions[0].bootstrap_action_config.script_bootstrap_action.args[0] #=> String
      #   resp.job_flows[0].supported_products #=> Array
      #   resp.job_flows[0].supported_products[0] #=> String
      #   resp.job_flows[0].visible_to_all_users #=> Boolean
      #   resp.job_flows[0].job_flow_role #=> String
      #   resp.job_flows[0].service_role #=> String
      # @overload describe_job_flows(params = {})
      # @param [Hash] params ({})
      def describe_job_flows(params = {}, options = {})
        req = build_request(:describe_job_flows, params)
        req.send_request(options)
      end

      # Provides more detail about the cluster step.
      # @option params [required, String] :cluster_id
      #   The identifier of the cluster with steps to describe.
      # @option params [required, String] :step_id
      #   The identifier of the step to describe.
      # @return [Types::DescribeStepOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeStepOutput#step #Step} => Types::Step
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_step({
      #     cluster_id: "ClusterId", # required
      #     step_id: "StepId", # required
      #   })
      #
      # @example Response structure
      #   resp.step.id #=> String
      #   resp.step.name #=> String
      #   resp.step.config.jar #=> String
      #   resp.step.config.properties #=> Hash
      #   resp.step.config.properties["String"] #=> String
      #   resp.step.config.main_class #=> String
      #   resp.step.config.args #=> Array
      #   resp.step.config.args[0] #=> String
      #   resp.step.action_on_failure #=> String, one of "TERMINATE_JOB_FLOW", "TERMINATE_CLUSTER", "CANCEL_AND_WAIT", "CONTINUE"
      #   resp.step.status.state #=> String, one of "PENDING", "RUNNING", "COMPLETED", "CANCELLED", "FAILED", "INTERRUPTED"
      #   resp.step.status.state_change_reason.code #=> String, one of "NONE"
      #   resp.step.status.state_change_reason.message #=> String
      #   resp.step.status.failure_details.reason #=> String
      #   resp.step.status.failure_details.message #=> String
      #   resp.step.status.failure_details.log_file #=> String
      #   resp.step.status.timeline.creation_date_time #=> Time
      #   resp.step.status.timeline.start_date_time #=> Time
      #   resp.step.status.timeline.end_date_time #=> Time
      # @overload describe_step(params = {})
      # @param [Hash] params ({})
      def describe_step(params = {}, options = {})
        req = build_request(:describe_step, params)
        req.send_request(options)
      end

      # Provides information about the bootstrap actions associated with a
      # cluster.
      # @option params [required, String] :cluster_id
      #   The cluster identifier for the bootstrap actions to list .
      # @option params [String] :marker
      #   The pagination token that indicates the next set of results to
      #   retrieve .
      # @return [Types::ListBootstrapActionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListBootstrapActionsOutput#bootstrap_actions #BootstrapActions} => Array&lt;Types::Command&gt;
      #   * {Types::ListBootstrapActionsOutput#marker #Marker} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_bootstrap_actions({
      #     cluster_id: "ClusterId", # required
      #     marker: "Marker",
      #   })
      #
      # @example Response structure
      #   resp.bootstrap_actions #=> Array
      #   resp.bootstrap_actions[0].name #=> String
      #   resp.bootstrap_actions[0].script_path #=> String
      #   resp.bootstrap_actions[0].args #=> Array
      #   resp.bootstrap_actions[0].args[0] #=> String
      #   resp.marker #=> String
      # @overload list_bootstrap_actions(params = {})
      # @param [Hash] params ({})
      def list_bootstrap_actions(params = {}, options = {})
        req = build_request(:list_bootstrap_actions, params)
        req.send_request(options)
      end

      # Provides the status of all clusters visible to this AWS account.
      # Allows you to filter the list of clusters based on certain criteria;
      # for example, filtering by cluster creation date and time or by status.
      # This call returns a maximum of 50 clusters per call, but returns a
      # marker to track the paging of the cluster list across multiple
      # ListClusters calls.
      # @option params [Time,DateTime,Date,Integer,String] :created_after
      #   The creation date and time beginning value filter for listing clusters
      #   .
      # @option params [Time,DateTime,Date,Integer,String] :created_before
      #   The creation date and time end value filter for listing clusters .
      # @option params [Array<String>] :cluster_states
      #   The cluster state filters to apply when listing clusters.
      # @option params [String] :marker
      #   The pagination token that indicates the next set of results to
      #   retrieve.
      # @return [Types::ListClustersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListClustersOutput#clusters #Clusters} => Array&lt;Types::ClusterSummary&gt;
      #   * {Types::ListClustersOutput#marker #Marker} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_clusters({
      #     created_after: Time.now,
      #     created_before: Time.now,
      #     cluster_states: ["STARTING"], # accepts STARTING, BOOTSTRAPPING, RUNNING, WAITING, TERMINATING, TERMINATED, TERMINATED_WITH_ERRORS
      #     marker: "Marker",
      #   })
      #
      # @example Response structure
      #   resp.clusters #=> Array
      #   resp.clusters[0].id #=> String
      #   resp.clusters[0].name #=> String
      #   resp.clusters[0].status.state #=> String, one of "STARTING", "BOOTSTRAPPING", "RUNNING", "WAITING", "TERMINATING", "TERMINATED", "TERMINATED_WITH_ERRORS"
      #   resp.clusters[0].status.state_change_reason.code #=> String, one of "INTERNAL_ERROR", "VALIDATION_ERROR", "INSTANCE_FAILURE", "BOOTSTRAP_FAILURE", "USER_REQUEST", "STEP_FAILURE", "ALL_STEPS_COMPLETED"
      #   resp.clusters[0].status.state_change_reason.message #=> String
      #   resp.clusters[0].status.timeline.creation_date_time #=> Time
      #   resp.clusters[0].status.timeline.ready_date_time #=> Time
      #   resp.clusters[0].status.timeline.end_date_time #=> Time
      #   resp.clusters[0].normalized_instance_hours #=> Integer
      #   resp.marker #=> String
      # @overload list_clusters(params = {})
      # @param [Hash] params ({})
      def list_clusters(params = {}, options = {})
        req = build_request(:list_clusters, params)
        req.send_request(options)
      end

      # Provides all available details about the instance groups in a cluster.
      # @option params [required, String] :cluster_id
      #   The identifier of the cluster for which to list the instance groups.
      # @option params [String] :marker
      #   The pagination token that indicates the next set of results to
      #   retrieve.
      # @return [Types::ListInstanceGroupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListInstanceGroupsOutput#instance_groups #InstanceGroups} => Array&lt;Types::InstanceGroup&gt;
      #   * {Types::ListInstanceGroupsOutput#marker #Marker} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_instance_groups({
      #     cluster_id: "ClusterId", # required
      #     marker: "Marker",
      #   })
      #
      # @example Response structure
      #   resp.instance_groups #=> Array
      #   resp.instance_groups[0].id #=> String
      #   resp.instance_groups[0].name #=> String
      #   resp.instance_groups[0].market #=> String, one of "ON_DEMAND", "SPOT"
      #   resp.instance_groups[0].instance_group_type #=> String, one of "MASTER", "CORE", "TASK"
      #   resp.instance_groups[0].bid_price #=> String
      #   resp.instance_groups[0].instance_type #=> String
      #   resp.instance_groups[0].requested_instance_count #=> Integer
      #   resp.instance_groups[0].running_instance_count #=> Integer
      #   resp.instance_groups[0].status.state #=> String, one of "PROVISIONING", "BOOTSTRAPPING", "RUNNING", "RESIZING", "SUSPENDED", "TERMINATING", "TERMINATED", "ARRESTED", "SHUTTING_DOWN", "ENDED"
      #   resp.instance_groups[0].status.state_change_reason.code #=> String, one of "INTERNAL_ERROR", "VALIDATION_ERROR", "INSTANCE_FAILURE", "CLUSTER_TERMINATED"
      #   resp.instance_groups[0].status.state_change_reason.message #=> String
      #   resp.instance_groups[0].status.timeline.creation_date_time #=> Time
      #   resp.instance_groups[0].status.timeline.ready_date_time #=> Time
      #   resp.instance_groups[0].status.timeline.end_date_time #=> Time
      #   resp.instance_groups[0].configurations #=> Array
      #   resp.instance_groups[0].configurations[0].classification #=> String
      #   resp.instance_groups[0].configurations[0].configurations #=> Types::ConfigurationList
      #   resp.instance_groups[0].configurations[0].properties #=> Hash
      #   resp.instance_groups[0].configurations[0].properties["String"] #=> String
      #   resp.instance_groups[0].ebs_block_devices #=> Array
      #   resp.instance_groups[0].ebs_block_devices[0].volume_specification.volume_type #=> String
      #   resp.instance_groups[0].ebs_block_devices[0].volume_specification.iops #=> Integer
      #   resp.instance_groups[0].ebs_block_devices[0].volume_specification.size_in_gb #=> Integer
      #   resp.instance_groups[0].ebs_block_devices[0].device #=> String
      #   resp.instance_groups[0].ebs_optimized #=> Boolean
      #   resp.instance_groups[0].shrink_policy.decommission_timeout #=> Integer
      #   resp.instance_groups[0].shrink_policy.instance_resize_policy.instances_to_terminate #=> Array
      #   resp.instance_groups[0].shrink_policy.instance_resize_policy.instances_to_terminate[0] #=> String
      #   resp.instance_groups[0].shrink_policy.instance_resize_policy.instances_to_protect #=> Array
      #   resp.instance_groups[0].shrink_policy.instance_resize_policy.instances_to_protect[0] #=> String
      #   resp.instance_groups[0].shrink_policy.instance_resize_policy.instance_termination_timeout #=> Integer
      #   resp.marker #=> String
      # @overload list_instance_groups(params = {})
      # @param [Hash] params ({})
      def list_instance_groups(params = {}, options = {})
        req = build_request(:list_instance_groups, params)
        req.send_request(options)
      end

      # Provides information about the cluster instances that Amazon EMR
      # provisions on behalf of a user when it creates the cluster. For
      # example, this operation indicates when the EC2 instances reach the
      # Ready state, when instances become available to Amazon EMR to use for
      # jobs, and the IP addresses for cluster instances, etc.
      # @option params [required, String] :cluster_id
      #   The identifier of the cluster for which to list the instances.
      # @option params [String] :instance_group_id
      #   The identifier of the instance group for which to list the instances.
      # @option params [Array<String>] :instance_group_types
      #   The type of instance group for which to list the instances.
      # @option params [Array<String>] :instance_states
      #   A list of instance states that will filter the instances returned with
      #   this request.
      # @option params [String] :marker
      #   The pagination token that indicates the next set of results to
      #   retrieve.
      # @return [Types::ListInstancesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListInstancesOutput#instances #Instances} => Array&lt;Types::Instance&gt;
      #   * {Types::ListInstancesOutput#marker #Marker} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_instances({
      #     cluster_id: "ClusterId", # required
      #     instance_group_id: "InstanceGroupId",
      #     instance_group_types: ["MASTER"], # accepts MASTER, CORE, TASK
      #     instance_states: ["AWAITING_FULFILLMENT"], # accepts AWAITING_FULFILLMENT, PROVISIONING, BOOTSTRAPPING, RUNNING, TERMINATED
      #     marker: "Marker",
      #   })
      #
      # @example Response structure
      #   resp.instances #=> Array
      #   resp.instances[0].id #=> String
      #   resp.instances[0].ec2_instance_id #=> String
      #   resp.instances[0].public_dns_name #=> String
      #   resp.instances[0].public_ip_address #=> String
      #   resp.instances[0].private_dns_name #=> String
      #   resp.instances[0].private_ip_address #=> String
      #   resp.instances[0].status.state #=> String, one of "AWAITING_FULFILLMENT", "PROVISIONING", "BOOTSTRAPPING", "RUNNING", "TERMINATED"
      #   resp.instances[0].status.state_change_reason.code #=> String, one of "INTERNAL_ERROR", "VALIDATION_ERROR", "INSTANCE_FAILURE", "BOOTSTRAP_FAILURE", "CLUSTER_TERMINATED"
      #   resp.instances[0].status.state_change_reason.message #=> String
      #   resp.instances[0].status.timeline.creation_date_time #=> Time
      #   resp.instances[0].status.timeline.ready_date_time #=> Time
      #   resp.instances[0].status.timeline.end_date_time #=> Time
      #   resp.instances[0].instance_group_id #=> String
      #   resp.instances[0].ebs_volumes #=> Array
      #   resp.instances[0].ebs_volumes[0].device #=> String
      #   resp.instances[0].ebs_volumes[0].volume_id #=> String
      #   resp.marker #=> String
      # @overload list_instances(params = {})
      # @param [Hash] params ({})
      def list_instances(params = {}, options = {})
        req = build_request(:list_instances, params)
        req.send_request(options)
      end

      # Provides a list of steps for the cluster.
      # @option params [required, String] :cluster_id
      #   The identifier of the cluster for which to list the steps.
      # @option params [Array<String>] :step_states
      #   The filter to limit the step list based on certain states.
      # @option params [Array<String>] :step_ids
      #   The filter to limit the step list based on the identifier of the
      #   steps.
      # @option params [String] :marker
      #   The pagination token that indicates the next set of results to
      #   retrieve.
      # @return [Types::ListStepsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListStepsOutput#steps #Steps} => Array&lt;Types::StepSummary&gt;
      #   * {Types::ListStepsOutput#marker #Marker} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_steps({
      #     cluster_id: "ClusterId", # required
      #     step_states: ["PENDING"], # accepts PENDING, RUNNING, COMPLETED, CANCELLED, FAILED, INTERRUPTED
      #     step_ids: ["XmlString"],
      #     marker: "Marker",
      #   })
      #
      # @example Response structure
      #   resp.steps #=> Array
      #   resp.steps[0].id #=> String
      #   resp.steps[0].name #=> String
      #   resp.steps[0].config.jar #=> String
      #   resp.steps[0].config.properties #=> Hash
      #   resp.steps[0].config.properties["String"] #=> String
      #   resp.steps[0].config.main_class #=> String
      #   resp.steps[0].config.args #=> Array
      #   resp.steps[0].config.args[0] #=> String
      #   resp.steps[0].action_on_failure #=> String, one of "TERMINATE_JOB_FLOW", "TERMINATE_CLUSTER", "CANCEL_AND_WAIT", "CONTINUE"
      #   resp.steps[0].status.state #=> String, one of "PENDING", "RUNNING", "COMPLETED", "CANCELLED", "FAILED", "INTERRUPTED"
      #   resp.steps[0].status.state_change_reason.code #=> String, one of "NONE"
      #   resp.steps[0].status.state_change_reason.message #=> String
      #   resp.steps[0].status.failure_details.reason #=> String
      #   resp.steps[0].status.failure_details.message #=> String
      #   resp.steps[0].status.failure_details.log_file #=> String
      #   resp.steps[0].status.timeline.creation_date_time #=> Time
      #   resp.steps[0].status.timeline.start_date_time #=> Time
      #   resp.steps[0].status.timeline.end_date_time #=> Time
      #   resp.marker #=> String
      # @overload list_steps(params = {})
      # @param [Hash] params ({})
      def list_steps(params = {}, options = {})
        req = build_request(:list_steps, params)
        req.send_request(options)
      end

      # ModifyInstanceGroups modifies the number of nodes and configuration
      # settings of an instance group. The input parameters include the new
      # target instance count for the group and the instance group ID. The
      # call will either succeed or fail atomically.
      # @option params [Array<Types::InstanceGroupModifyConfig>] :instance_groups
      #   Instance groups to change.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.modify_instance_groups({
      #     instance_groups: [
      #       {
      #         instance_group_id: "XmlStringMaxLen256", # required
      #         instance_count: 1,
      #         ec2_instance_ids_to_terminate: ["InstanceId"],
      #         shrink_policy: {
      #           decommission_timeout: 1,
      #           instance_resize_policy: {
      #             instances_to_terminate: ["InstanceId"],
      #             instances_to_protect: ["InstanceId"],
      #             instance_termination_timeout: 1,
      #           },
      #         },
      #       },
      #     ],
      #   })
      # @overload modify_instance_groups(params = {})
      # @param [Hash] params ({})
      def modify_instance_groups(params = {}, options = {})
        req = build_request(:modify_instance_groups, params)
        req.send_request(options)
      end

      # Removes tags from an Amazon EMR resource. Tags make it easier to
      # associate clusters in various ways, such as grouping clusters to track
      # your Amazon EMR resource allocation costs. For more information, see
      # [Tagging Amazon EMR Resources][1].
      #
      # The following example removes the stack tag with value Prod from a
      # cluster:
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ElasticMapReduce/latest/DeveloperGuide/emr-plan-tags.html
      # @option params [required, String] :resource_id
      #   The Amazon EMR resource identifier from which tags will be removed.
      #   This value must be a cluster identifier.
      # @option params [required, Array<String>] :tag_keys
      #   A list of tag keys to remove from a resource.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.remove_tags({
      #     resource_id: "ResourceId", # required
      #     tag_keys: ["String"], # required
      #   })
      # @overload remove_tags(params = {})
      # @param [Hash] params ({})
      def remove_tags(params = {}, options = {})
        req = build_request(:remove_tags, params)
        req.send_request(options)
      end

      # RunJobFlow creates and starts running a new job flow. The job flow
      # will run the steps specified. Once the job flow completes, the cluster
      # is stopped and the HDFS partition is lost. To prevent loss of data,
      # configure the last step of the job flow to store results in Amazon S3.
      # If the JobFlowInstancesConfig `KeepJobFlowAliveWhenNoSteps` parameter
      # is set to `TRUE`, the job flow will transition to the WAITING state
      # rather than shutting down once the steps have completed.
      #
      # For additional protection, you can set the JobFlowInstancesConfig
      # `TerminationProtected` parameter to `TRUE` to lock the job flow and
      # prevent it from being terminated by API call, user intervention, or in
      # the event of a job flow error.
      #
      # A maximum of 256 steps are allowed in each job flow.
      #
      # If your job flow is long-running (such as a Hive data warehouse) or
      # complex, you may require more than 256 steps to process your data. You
      # can bypass the 256-step limitation in various ways, including using
      # the SSH shell to connect to the master node and submitting queries
      # directly to the software running on the master node, such as Hive and
      # Hadoop. For more information on how to do this, go to [Add More than
      # 256 Steps to a Job Flow][1] in the *Amazon Elastic MapReduce
      # Developer's Guide*.
      #
      # For long running job flows, we recommend that you periodically store
      # your results.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ElasticMapReduce/latest/DeveloperGuide/AddMoreThan256Steps.html
      # @option params [required, String] :name
      #   The name of the job flow.
      # @option params [String] :log_uri
      #   The location in Amazon S3 to write the log files of the job flow. If a
      #   value is not provided, logs are not created.
      # @option params [String] :additional_info
      #   A JSON string for selecting additional features.
      # @option params [String] :ami_version
      #   <note markdown="1"> For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and
      #   greater, use ReleaseLabel.
      #
      #    </note>
      #
      #   The version of the Amazon Machine Image (AMI) to use when launching
      #   Amazon EC2 instances in the job flow. The following values are valid:
      #
      #   * The version number of the AMI to use, for example, "2.0."
      #
      #   ^
      #
      #   If the AMI supports multiple versions of Hadoop (for example, AMI 1.0
      #   supports both Hadoop 0.18 and 0.20) you can use the
      #   JobFlowInstancesConfig `HadoopVersion` parameter to modify the version
      #   of Hadoop from the defaults shown above.
      #
      #   For details about the AMI versions currently supported by Amazon
      #   Elastic MapReduce, go to [AMI Versions Supported in Elastic
      #   MapReduce][1] in the *Amazon Elastic MapReduce Developer's Guide.*
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/ElasticMapReduce/latest/DeveloperGuide/EnvironmentConfig_AMIVersion.html#ami-versions-supported
      # @option params [String] :release_label
      #   <note markdown="1"> Amazon EMR releases 4.x or later.
      #
      #    </note>
      #
      #   The release label for the Amazon EMR release. For Amazon EMR 3.x and
      #   2.x AMIs, use amiVersion instead instead of ReleaseLabel.
      # @option params [required, Types::JobFlowInstancesConfig] :instances
      #   A specification of the number and type of Amazon EC2 instances on
      #   which to run the job flow.
      # @option params [Array<Types::StepConfig>] :steps
      #   A list of steps to be executed by the job flow.
      # @option params [Array<Types::BootstrapActionConfig>] :bootstrap_actions
      #   A list of bootstrap actions that will be run before Hadoop is started
      #   on the cluster nodes.
      # @option params [Array<String>] :supported_products
      #   <note markdown="1"> For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and
      #   greater, use Applications.
      #
      #    </note>
      #
      #   A list of strings that indicates third-party software to use with the
      #   job flow. For more information, go to [Use Third Party Applications
      #   with Amazon EMR][1]. Currently supported values are:
      #
      #   * "mapr-m3" - launch the job flow using MapR M3 Edition.
      #
      #   * "mapr-m5" - launch the job flow using MapR M5 Edition.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/ElasticMapReduce/latest/DeveloperGuide/emr-supported-products.html
      # @option params [Array<Types::SupportedProductConfig>] :new_supported_products
      #   <note markdown="1"> For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and
      #   greater, use Applications.
      #
      #    </note>
      #
      #   A list of strings that indicates third-party software to use with the
      #   job flow that accepts a user argument list. EMR accepts and forwards
      #   the argument list to the corresponding installation script as
      #   bootstrap action arguments. For more information, see [Launch a Job
      #   Flow on the MapR Distribution for Hadoop][1]. Currently supported
      #   values are:
      #
      #   * "mapr-m3" - launch the cluster using MapR M3 Edition.
      #
      #   * "mapr-m5" - launch the cluster using MapR M5 Edition.
      #
      #   * "mapr" with the user arguments specifying "--edition,m3" or
      #     "--edition,m5" - launch the job flow using MapR M3 or M5 Edition
      #     respectively.
      #
      #   * "mapr-m7" - launch the cluster using MapR M7 Edition.
      #
      #   * "hunk" - launch the cluster with the Hunk Big Data Analtics
      #     Platform.
      #
      #   * "hue"- launch the cluster with Hue installed.
      #
      #   * "spark" - launch the cluster with Apache Spark installed.
      #
      #   * "ganglia" - launch the cluster with the Ganglia Monitoring System
      #     installed.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/ElasticMapReduce/latest/DeveloperGuide/emr-mapr.html
      # @option params [Array<Types::Application>] :applications
      #   <note markdown="1"> Amazon EMR releases 4.x or later.
      #
      #    </note>
      #
      #   A list of applications for the cluster. Valid values are: "Hadoop",
      #   "Hive", "Mahout", "Pig", and "Spark." They are case
      #   insensitive.
      # @option params [Array<Types::Configuration>] :configurations
      #   <note markdown="1"> Amazon EMR releases 4.x or later.
      #
      #    </note>
      #
      #   The list of configurations supplied for the EMR cluster you are
      #   creating.
      # @option params [Boolean] :visible_to_all_users
      #   Whether the job flow is visible to all IAM users of the AWS account
      #   associated with the job flow. If this value is set to `true`, all IAM
      #   users of that AWS account can view and (if they have the proper policy
      #   permissions set) manage the job flow. If it is set to `false`, only
      #   the IAM user that created the job flow can view and manage it.
      # @option params [String] :job_flow_role
      #   Also called instance profile and EC2 role. An IAM role for an EMR
      #   cluster. The EC2 instances of the cluster assume this role. The
      #   default role is `EMR_EC2_DefaultRole`. In order to use the default
      #   role, you must have already created it using the CLI or console.
      # @option params [String] :service_role
      #   The IAM role that will be assumed by the Amazon EMR service to access
      #   AWS resources on your behalf.
      # @option params [Array<Types::Tag>] :tags
      #   A list of tags to associate with a cluster and propagate to Amazon EC2
      #   instances.
      # @return [Types::RunJobFlowOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::RunJobFlowOutput#job_flow_id #JobFlowId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.run_job_flow({
      #     name: "XmlStringMaxLen256", # required
      #     log_uri: "XmlString",
      #     additional_info: "XmlString",
      #     ami_version: "XmlStringMaxLen256",
      #     release_label: "XmlStringMaxLen256",
      #     instances: { # required
      #       master_instance_type: "InstanceType",
      #       slave_instance_type: "InstanceType",
      #       instance_count: 1,
      #       instance_groups: [
      #         {
      #           name: "XmlStringMaxLen256",
      #           market: "ON_DEMAND", # accepts ON_DEMAND, SPOT
      #           instance_role: "MASTER", # required, accepts MASTER, CORE, TASK
      #           bid_price: "XmlStringMaxLen256",
      #           instance_type: "InstanceType", # required
      #           instance_count: 1, # required
      #           configurations: [
      #             {
      #               classification: "String",
      #               configurations: {
      #                 # recursive ConfigurationList
      #               },
      #               properties: {
      #                 "String" => "String",
      #               },
      #             },
      #           ],
      #           ebs_configuration: {
      #             ebs_block_device_configs: [
      #               {
      #                 volume_specification: { # required
      #                   volume_type: "String", # required
      #                   iops: 1,
      #                   size_in_gb: 1, # required
      #                 },
      #                 volumes_per_instance: 1,
      #               },
      #             ],
      #             ebs_optimized: false,
      #           },
      #         },
      #       ],
      #       ec2_key_name: "XmlStringMaxLen256",
      #       placement: {
      #         availability_zone: "XmlString", # required
      #       },
      #       keep_job_flow_alive_when_no_steps: false,
      #       termination_protected: false,
      #       hadoop_version: "XmlStringMaxLen256",
      #       ec2_subnet_id: "XmlStringMaxLen256",
      #       emr_managed_master_security_group: "XmlStringMaxLen256",
      #       emr_managed_slave_security_group: "XmlStringMaxLen256",
      #       service_access_security_group: "XmlStringMaxLen256",
      #       additional_master_security_groups: ["XmlStringMaxLen256"],
      #       additional_slave_security_groups: ["XmlStringMaxLen256"],
      #     },
      #     steps: [
      #       {
      #         name: "XmlStringMaxLen256", # required
      #         action_on_failure: "TERMINATE_JOB_FLOW", # accepts TERMINATE_JOB_FLOW, TERMINATE_CLUSTER, CANCEL_AND_WAIT, CONTINUE
      #         hadoop_jar_step: { # required
      #           properties: [
      #             {
      #               key: "XmlString",
      #               value: "XmlString",
      #             },
      #           ],
      #           jar: "XmlString", # required
      #           main_class: "XmlString",
      #           args: ["XmlString"],
      #         },
      #       },
      #     ],
      #     bootstrap_actions: [
      #       {
      #         name: "XmlStringMaxLen256", # required
      #         script_bootstrap_action: { # required
      #           path: "XmlString", # required
      #           args: ["XmlString"],
      #         },
      #       },
      #     ],
      #     supported_products: ["XmlStringMaxLen256"],
      #     new_supported_products: [
      #       {
      #         name: "XmlStringMaxLen256",
      #         args: ["XmlString"],
      #       },
      #     ],
      #     applications: [
      #       {
      #         name: "String",
      #         version: "String",
      #         args: ["String"],
      #         additional_info: {
      #           "String" => "String",
      #         },
      #       },
      #     ],
      #     configurations: [
      #       {
      #         classification: "String",
      #         configurations: {
      #           # recursive ConfigurationList
      #         },
      #         properties: {
      #           "String" => "String",
      #         },
      #       },
      #     ],
      #     visible_to_all_users: false,
      #     job_flow_role: "XmlString",
      #     service_role: "XmlString",
      #     tags: [
      #       {
      #         key: "String",
      #         value: "String",
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.job_flow_id #=> String
      # @overload run_job_flow(params = {})
      # @param [Hash] params ({})
      def run_job_flow(params = {}, options = {})
        req = build_request(:run_job_flow, params)
        req.send_request(options)
      end

      # SetTerminationProtection locks a job flow so the Amazon EC2 instances
      # in the cluster cannot be terminated by user intervention, an API call,
      # or in the event of a job-flow error. The cluster still terminates upon
      # successful completion of the job flow. Calling
      # SetTerminationProtection on a job flow is analogous to calling the
      # Amazon EC2 DisableAPITermination API on all of the EC2 instances in a
      # cluster.
      #
      # SetTerminationProtection is used to prevent accidental termination of
      # a job flow and to ensure that in the event of an error, the instances
      # will persist so you can recover any data stored in their ephemeral
      # instance storage.
      #
      # To terminate a job flow that has been locked by setting
      # SetTerminationProtection to `true`, you must first unlock the job flow
      # by a subsequent call to SetTerminationProtection in which you set the
      # value to `false`.
      #
      # For more information, go to [Protecting a Job Flow from
      # Termination][1] in the *Amazon Elastic MapReduce Developer's Guide.*
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ElasticMapReduce/latest/DeveloperGuide/UsingEMR_TerminationProtection.html
      # @option params [required, Array<String>] :job_flow_ids
      #   A list of strings that uniquely identify the job flows to protect.
      #   This identifier is returned by RunJobFlow and can also be obtained
      #   from DescribeJobFlows .
      # @option params [required, Boolean] :termination_protected
      #   A Boolean that indicates whether to protect the job flow and prevent
      #   the Amazon EC2 instances in the cluster from shutting down due to API
      #   calls, user intervention, or job-flow error.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.set_termination_protection({
      #     job_flow_ids: ["XmlString"], # required
      #     termination_protected: false, # required
      #   })
      # @overload set_termination_protection(params = {})
      # @param [Hash] params ({})
      def set_termination_protection(params = {}, options = {})
        req = build_request(:set_termination_protection, params)
        req.send_request(options)
      end

      # Sets whether all AWS Identity and Access Management (IAM) users under
      # your account can access the specified job flows. This action works on
      # running job flows. You can also set the visibility of a job flow when
      # you launch it using the `VisibleToAllUsers` parameter of RunJobFlow.
      # The SetVisibleToAllUsers action can be called only by an IAM user who
      # created the job flow or the AWS account that owns the job flow.
      # @option params [required, Array<String>] :job_flow_ids
      #   Identifiers of the job flows to receive the new visibility setting.
      # @option params [required, Boolean] :visible_to_all_users
      #   Whether the specified job flows are visible to all IAM users of the
      #   AWS account associated with the job flow. If this value is set to
      #   True, all IAM users of that AWS account can view and, if they have the
      #   proper IAM policy permissions set, manage the job flows. If it is set
      #   to False, only the IAM user that created a job flow can view and
      #   manage it.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.set_visible_to_all_users({
      #     job_flow_ids: ["XmlString"], # required
      #     visible_to_all_users: false, # required
      #   })
      # @overload set_visible_to_all_users(params = {})
      # @param [Hash] params ({})
      def set_visible_to_all_users(params = {}, options = {})
        req = build_request(:set_visible_to_all_users, params)
        req.send_request(options)
      end

      # TerminateJobFlows shuts a list of job flows down. When a job flow is
      # shut down, any step not yet completed is canceled and the EC2
      # instances on which the job flow is running are stopped. Any log files
      # not already saved are uploaded to Amazon S3 if a LogUri was specified
      # when the job flow was created.
      #
      # The maximum number of JobFlows allowed is 10. The call to
      # TerminateJobFlows is asynchronous. Depending on the configuration of
      # the job flow, it may take up to 5-20 minutes for the job flow to
      # completely terminate and release allocated resources, such as Amazon
      # EC2 instances.
      # @option params [required, Array<String>] :job_flow_ids
      #   A list of job flows to be shutdown.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.terminate_job_flows({
      #     job_flow_ids: ["XmlString"], # required
      #   })
      # @overload terminate_job_flows(params = {})
      # @param [Hash] params ({})
      def terminate_job_flows(params = {}, options = {})
        req = build_request(:terminate_job_flows, params)
        req.send_request(options)
      end

      # @!endgroup

      # @param [Symbol] waiter_name
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      # @option options [Integer] :max_attempts
      # @option options [Integer] :delay
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def wait_until(waiter_name, params = {}, options = {})
        w = waiter(waiter_name, options)
        yield(w.waiter) if block_given? # deprecated
        w.wait(params)
      end

      def waiter_names
        waiters.keys
      end

      private

      # @param [Symbol] waiter_name
      # @param [Hash] options ({})
      def waiter(waiter_name, options = {})
        waiter_class = waiters[waiter_name]
        if waiter_class
          waiter_class.new(options.merge(client: self))
        else
          raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
        end
      end

      def waiters
        {
          cluster_running: Waiters::ClusterRunning,
          step_complete: Waiters::StepComplete
        }
      end

      # @api private
      class << self

        # @api private
        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end
