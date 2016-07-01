# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module CodeDeploy
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs
      include Aws::ClientWaiters

      @identifier = :codedeploy

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::RequestSigner)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
      add_plugin(Aws::Plugins::Protocols::JsonRpc)

      # @!group API Operations

      # Adds tags to on-premises instances.
      # @option params [required, Array<Types::Tag>] :tags
      #   The tag key-value pairs to add to the on-premises instances.
      #
      #   Keys and values are both required. Keys cannot be null or empty
      #   strings. Value-only tags are not allowed.
      # @option params [required, Array<String>] :instance_names
      #   The names of the on-premises instances to which to add tags.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.add_tags_to_on_premises_instances({
      #     tags: [ # required
      #       {
      #         key: "Key",
      #         value: "Value",
      #       },
      #     ],
      #     instance_names: ["InstanceName"], # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def add_tags_to_on_premises_instances(params = {}, options = {})
        req = build_request(:add_tags_to_on_premises_instances, params)
        req.send_request(options)
      end

      # Gets information about one or more application revisions.
      # @option params [required, String] :application_name
      #   The name of an AWS CodeDeploy application about which to get revision
      #   information.
      # @option params [required, Array<Types::RevisionLocation>] :revisions
      #   Information to get about the application revisions, including type and
      #   location.
      # @return [Types::BatchGetApplicationRevisionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::BatchGetApplicationRevisionsOutput#application_name #applicationName} => String
      #   * {Types::BatchGetApplicationRevisionsOutput#error_message #errorMessage} => String
      #   * {Types::BatchGetApplicationRevisionsOutput#revisions #revisions} => Array&lt;Types::RevisionInfo&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.batch_get_application_revisions({
      #     application_name: "ApplicationName", # required
      #     revisions: [ # required
      #       {
      #         revision_type: "S3", # accepts S3, GitHub
      #         s3_location: {
      #           bucket: "S3Bucket",
      #           key: "S3Key",
      #           bundle_type: "tar", # accepts tar, tgz, zip
      #           version: "VersionId",
      #           e_tag: "ETag",
      #         },
      #         git_hub_location: {
      #           repository: "Repository",
      #           commit_id: "CommitId",
      #         },
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.application_name #=> String
      #   resp.error_message #=> String
      #   resp.revisions #=> Array
      #   resp.revisions[0].revision_location.revision_type #=> String, one of "S3", "GitHub"
      #   resp.revisions[0].revision_location.s3_location.bucket #=> String
      #   resp.revisions[0].revision_location.s3_location.key #=> String
      #   resp.revisions[0].revision_location.s3_location.bundle_type #=> String, one of "tar", "tgz", "zip"
      #   resp.revisions[0].revision_location.s3_location.version #=> String
      #   resp.revisions[0].revision_location.s3_location.e_tag #=> String
      #   resp.revisions[0].revision_location.git_hub_location.repository #=> String
      #   resp.revisions[0].revision_location.git_hub_location.commit_id #=> String
      #   resp.revisions[0].generic_revision_info.description #=> String
      #   resp.revisions[0].generic_revision_info.deployment_groups #=> Array
      #   resp.revisions[0].generic_revision_info.deployment_groups[0] #=> String
      #   resp.revisions[0].generic_revision_info.first_used_time #=> Time
      #   resp.revisions[0].generic_revision_info.last_used_time #=> Time
      #   resp.revisions[0].generic_revision_info.register_time #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def batch_get_application_revisions(params = {}, options = {})
        req = build_request(:batch_get_application_revisions, params)
        req.send_request(options)
      end

      # Gets information about one or more applications.
      # @option params [Array<String>] :application_names
      #   A list of application names separated by spaces.
      # @return [Types::BatchGetApplicationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::BatchGetApplicationsOutput#applications_info #applicationsInfo} => Array&lt;Types::ApplicationInfo&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.batch_get_applications({
      #     application_names: ["ApplicationName"],
      #   })
      #
      # @example Response structure
      #   resp.applications_info #=> Array
      #   resp.applications_info[0].application_id #=> String
      #   resp.applications_info[0].application_name #=> String
      #   resp.applications_info[0].create_time #=> Time
      #   resp.applications_info[0].linked_to_git_hub #=> Boolean
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def batch_get_applications(params = {}, options = {})
        req = build_request(:batch_get_applications, params)
        req.send_request(options)
      end

      # Get information about one or more deployment groups.
      # @option params [required, String] :application_name
      #   The name of an AWS CodeDeploy application associated with the
      #   applicable IAM user or AWS account.
      # @option params [required, Array<String>] :deployment_group_names
      #   The deployment groups\' names.
      # @return [Types::BatchGetDeploymentGroupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::BatchGetDeploymentGroupsOutput#deployment_groups_info #deploymentGroupsInfo} => Array&lt;Types::DeploymentGroupInfo&gt;
      #   * {Types::BatchGetDeploymentGroupsOutput#error_message #errorMessage} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.batch_get_deployment_groups({
      #     application_name: "ApplicationName", # required
      #     deployment_group_names: ["DeploymentGroupName"], # required
      #   })
      #
      # @example Response structure
      #   resp.deployment_groups_info #=> Array
      #   resp.deployment_groups_info[0].application_name #=> String
      #   resp.deployment_groups_info[0].deployment_group_id #=> String
      #   resp.deployment_groups_info[0].deployment_group_name #=> String
      #   resp.deployment_groups_info[0].deployment_config_name #=> String
      #   resp.deployment_groups_info[0].ec2_tag_filters #=> Array
      #   resp.deployment_groups_info[0].ec2_tag_filters[0].key #=> String
      #   resp.deployment_groups_info[0].ec2_tag_filters[0].value #=> String
      #   resp.deployment_groups_info[0].ec2_tag_filters[0].type #=> String, one of "KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"
      #   resp.deployment_groups_info[0].on_premises_instance_tag_filters #=> Array
      #   resp.deployment_groups_info[0].on_premises_instance_tag_filters[0].key #=> String
      #   resp.deployment_groups_info[0].on_premises_instance_tag_filters[0].value #=> String
      #   resp.deployment_groups_info[0].on_premises_instance_tag_filters[0].type #=> String, one of "KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"
      #   resp.deployment_groups_info[0].auto_scaling_groups #=> Array
      #   resp.deployment_groups_info[0].auto_scaling_groups[0].name #=> String
      #   resp.deployment_groups_info[0].auto_scaling_groups[0].hook #=> String
      #   resp.deployment_groups_info[0].service_role_arn #=> String
      #   resp.deployment_groups_info[0].target_revision.revision_type #=> String, one of "S3", "GitHub"
      #   resp.deployment_groups_info[0].target_revision.s3_location.bucket #=> String
      #   resp.deployment_groups_info[0].target_revision.s3_location.key #=> String
      #   resp.deployment_groups_info[0].target_revision.s3_location.bundle_type #=> String, one of "tar", "tgz", "zip"
      #   resp.deployment_groups_info[0].target_revision.s3_location.version #=> String
      #   resp.deployment_groups_info[0].target_revision.s3_location.e_tag #=> String
      #   resp.deployment_groups_info[0].target_revision.git_hub_location.repository #=> String
      #   resp.deployment_groups_info[0].target_revision.git_hub_location.commit_id #=> String
      #   resp.deployment_groups_info[0].trigger_configurations #=> Array
      #   resp.deployment_groups_info[0].trigger_configurations[0].trigger_name #=> String
      #   resp.deployment_groups_info[0].trigger_configurations[0].trigger_target_arn #=> String
      #   resp.deployment_groups_info[0].trigger_configurations[0].trigger_events #=> Array
      #   resp.deployment_groups_info[0].trigger_configurations[0].trigger_events[0] #=> String, one of "DeploymentStart", "DeploymentSuccess", "DeploymentFailure", "DeploymentStop", "InstanceStart", "InstanceSuccess", "InstanceFailure"
      #   resp.error_message #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def batch_get_deployment_groups(params = {}, options = {})
        req = build_request(:batch_get_deployment_groups, params)
        req.send_request(options)
      end

      # Gets information about one or more instance that are part of a
      # deployment group.
      # @option params [required, String] :deployment_id
      #   The unique ID of a deployment.
      # @option params [required, Array<String>] :instance_ids
      #   The unique IDs of instances in the deployment group.
      # @return [Types::BatchGetDeploymentInstancesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::BatchGetDeploymentInstancesOutput#instances_summary #instancesSummary} => Array&lt;Types::InstanceSummary&gt;
      #   * {Types::BatchGetDeploymentInstancesOutput#error_message #errorMessage} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.batch_get_deployment_instances({
      #     deployment_id: "DeploymentId", # required
      #     instance_ids: ["InstanceId"], # required
      #   })
      #
      # @example Response structure
      #   resp.instances_summary #=> Array
      #   resp.instances_summary[0].deployment_id #=> String
      #   resp.instances_summary[0].instance_id #=> String
      #   resp.instances_summary[0].status #=> String, one of "Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown"
      #   resp.instances_summary[0].last_updated_at #=> Time
      #   resp.instances_summary[0].lifecycle_events #=> Array
      #   resp.instances_summary[0].lifecycle_events[0].lifecycle_event_name #=> String
      #   resp.instances_summary[0].lifecycle_events[0].diagnostics.error_code #=> String, one of "Success", "ScriptMissing", "ScriptNotExecutable", "ScriptTimedOut", "ScriptFailed", "UnknownError"
      #   resp.instances_summary[0].lifecycle_events[0].diagnostics.script_name #=> String
      #   resp.instances_summary[0].lifecycle_events[0].diagnostics.message #=> String
      #   resp.instances_summary[0].lifecycle_events[0].diagnostics.log_tail #=> String
      #   resp.instances_summary[0].lifecycle_events[0].start_time #=> Time
      #   resp.instances_summary[0].lifecycle_events[0].end_time #=> Time
      #   resp.instances_summary[0].lifecycle_events[0].status #=> String, one of "Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown"
      #   resp.error_message #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def batch_get_deployment_instances(params = {}, options = {})
        req = build_request(:batch_get_deployment_instances, params)
        req.send_request(options)
      end

      # Gets information about one or more deployments.
      # @option params [Array<String>] :deployment_ids
      #   A list of deployment IDs, separated by spaces.
      # @return [Types::BatchGetDeploymentsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::BatchGetDeploymentsOutput#deployments_info #deploymentsInfo} => Array&lt;Types::DeploymentInfo&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.batch_get_deployments({
      #     deployment_ids: ["DeploymentId"],
      #   })
      #
      # @example Response structure
      #   resp.deployments_info #=> Array
      #   resp.deployments_info[0].application_name #=> String
      #   resp.deployments_info[0].deployment_group_name #=> String
      #   resp.deployments_info[0].deployment_config_name #=> String
      #   resp.deployments_info[0].deployment_id #=> String
      #   resp.deployments_info[0].revision.revision_type #=> String, one of "S3", "GitHub"
      #   resp.deployments_info[0].revision.s3_location.bucket #=> String
      #   resp.deployments_info[0].revision.s3_location.key #=> String
      #   resp.deployments_info[0].revision.s3_location.bundle_type #=> String, one of "tar", "tgz", "zip"
      #   resp.deployments_info[0].revision.s3_location.version #=> String
      #   resp.deployments_info[0].revision.s3_location.e_tag #=> String
      #   resp.deployments_info[0].revision.git_hub_location.repository #=> String
      #   resp.deployments_info[0].revision.git_hub_location.commit_id #=> String
      #   resp.deployments_info[0].status #=> String, one of "Created", "Queued", "InProgress", "Succeeded", "Failed", "Stopped"
      #   resp.deployments_info[0].error_information.code #=> String, one of "DEPLOYMENT_GROUP_MISSING", "APPLICATION_MISSING", "REVISION_MISSING", "IAM_ROLE_MISSING", "IAM_ROLE_PERMISSIONS", "NO_EC2_SUBSCRIPTION", "OVER_MAX_INSTANCES", "NO_INSTANCES", "TIMEOUT", "HEALTH_CONSTRAINTS_INVALID", "HEALTH_CONSTRAINTS", "INTERNAL_ERROR", "THROTTLED"
      #   resp.deployments_info[0].error_information.message #=> String
      #   resp.deployments_info[0].create_time #=> Time
      #   resp.deployments_info[0].start_time #=> Time
      #   resp.deployments_info[0].complete_time #=> Time
      #   resp.deployments_info[0].deployment_overview.pending #=> Integer
      #   resp.deployments_info[0].deployment_overview.in_progress #=> Integer
      #   resp.deployments_info[0].deployment_overview.succeeded #=> Integer
      #   resp.deployments_info[0].deployment_overview.failed #=> Integer
      #   resp.deployments_info[0].deployment_overview.skipped #=> Integer
      #   resp.deployments_info[0].description #=> String
      #   resp.deployments_info[0].creator #=> String, one of "user", "autoscaling"
      #   resp.deployments_info[0].ignore_application_stop_failures #=> Boolean
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def batch_get_deployments(params = {}, options = {})
        req = build_request(:batch_get_deployments, params)
        req.send_request(options)
      end

      # Gets information about one or more on-premises instances.
      # @option params [Array<String>] :instance_names
      #   The names of the on-premises instances about which to get information.
      # @return [Types::BatchGetOnPremisesInstancesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::BatchGetOnPremisesInstancesOutput#instance_infos #instanceInfos} => Array&lt;Types::InstanceInfo&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.batch_get_on_premises_instances({
      #     instance_names: ["InstanceName"],
      #   })
      #
      # @example Response structure
      #   resp.instance_infos #=> Array
      #   resp.instance_infos[0].instance_name #=> String
      #   resp.instance_infos[0].iam_user_arn #=> String
      #   resp.instance_infos[0].instance_arn #=> String
      #   resp.instance_infos[0].register_time #=> Time
      #   resp.instance_infos[0].deregister_time #=> Time
      #   resp.instance_infos[0].tags #=> Array
      #   resp.instance_infos[0].tags[0].key #=> String
      #   resp.instance_infos[0].tags[0].value #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def batch_get_on_premises_instances(params = {}, options = {})
        req = build_request(:batch_get_on_premises_instances, params)
        req.send_request(options)
      end

      # Creates an application.
      # @option params [required, String] :application_name
      #   The name of the application. This name must be unique with the
      #   applicable IAM user or AWS account.
      # @return [Types::CreateApplicationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateApplicationOutput#application_id #applicationId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_application({
      #     application_name: "ApplicationName", # required
      #   })
      #
      # @example Response structure
      #   resp.application_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_application(params = {}, options = {})
        req = build_request(:create_application, params)
        req.send_request(options)
      end

      # Deploys an application revision through the specified deployment
      # group.
      # @option params [required, String] :application_name
      #   The name of an AWS CodeDeploy application associated with the
      #   applicable IAM user or AWS account.
      # @option params [String] :deployment_group_name
      #   The name of the deployment group.
      # @option params [Types::RevisionLocation] :revision
      #   The type and location of the revision to deploy.
      # @option params [String] :deployment_config_name
      #   The name of a deployment configuration associated with the applicable
      #   IAM user or AWS account.
      #
      #   If not specified, the value configured in the deployment group will be
      #   used as the default. If the deployment group does not have a
      #   deployment configuration associated with it, then
      #   CodeDeployDefault.OneAtATime will be used by default.
      # @option params [String] :description
      #   A comment about the deployment.
      # @option params [Boolean] :ignore_application_stop_failures
      #   If set to true, then if the deployment causes the ApplicationStop
      #   deployment lifecycle event to an instance to fail, the deployment to
      #   that instance will not be considered to have failed at that point and
      #   will continue on to the BeforeInstall deployment lifecycle event.
      #
      #   If set to false or not specified, then if the deployment causes the
      #   ApplicationStop deployment lifecycle event to fail to an instance, the
      #   deployment to that instance will stop, and the deployment to that
      #   instance will be considered to have failed.
      # @return [Types::CreateDeploymentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateDeploymentOutput#deployment_id #deploymentId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_deployment({
      #     application_name: "ApplicationName", # required
      #     deployment_group_name: "DeploymentGroupName",
      #     revision: {
      #       revision_type: "S3", # accepts S3, GitHub
      #       s3_location: {
      #         bucket: "S3Bucket",
      #         key: "S3Key",
      #         bundle_type: "tar", # accepts tar, tgz, zip
      #         version: "VersionId",
      #         e_tag: "ETag",
      #       },
      #       git_hub_location: {
      #         repository: "Repository",
      #         commit_id: "CommitId",
      #       },
      #     },
      #     deployment_config_name: "DeploymentConfigName",
      #     description: "Description",
      #     ignore_application_stop_failures: false,
      #   })
      #
      # @example Response structure
      #   resp.deployment_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_deployment(params = {}, options = {})
        req = build_request(:create_deployment, params)
        req.send_request(options)
      end

      # Creates a deployment configuration.
      # @option params [required, String] :deployment_config_name
      #   The name of the deployment configuration to create.
      # @option params [Types::MinimumHealthyHosts] :minimum_healthy_hosts
      #   The minimum number of healthy instances that should be available at
      #   any time during the deployment. There are two parameters expected in
      #   the input: type and value.
      #
      #   The type parameter takes either of the following values:
      #
      #   * HOST\_COUNT: The value parameter represents the minimum number of
      #     healthy instances as an absolute value.
      #   * FLEET\_PERCENT: The value parameter represents the minimum number of
      #     healthy instances as a percentage of the total number of instances
      #     in the deployment. If you specify FLEET\_PERCENT, at the start of
      #     the deployment, AWS CodeDeploy converts the percentage to the
      #     equivalent number of instance and rounds up fractional instances.
      #
      #   The value parameter takes an integer.
      #
      #   For example, to set a minimum of 95% healthy instance, specify a type
      #   of FLEET\_PERCENT and a value of 95.
      # @return [Types::CreateDeploymentConfigOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateDeploymentConfigOutput#deployment_config_id #deploymentConfigId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_deployment_config({
      #     deployment_config_name: "DeploymentConfigName", # required
      #     minimum_healthy_hosts: {
      #       value: 1,
      #       type: "HOST_COUNT", # accepts HOST_COUNT, FLEET_PERCENT
      #     },
      #   })
      #
      # @example Response structure
      #   resp.deployment_config_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_deployment_config(params = {}, options = {})
        req = build_request(:create_deployment_config, params)
        req.send_request(options)
      end

      # Creates a deployment group to which application revisions will be
      # deployed.
      # @option params [required, String] :application_name
      #   The name of an AWS CodeDeploy application associated with the
      #   applicable IAM user or AWS account.
      # @option params [required, String] :deployment_group_name
      #   The name of a new deployment group for the specified application.
      # @option params [String] :deployment_config_name
      #   If specified, the deployment configuration name can be either one of
      #   the predefined configurations provided with AWS CodeDeploy or a custom
      #   deployment configuration that you create by calling the create
      #   deployment configuration operation.
      #
      #   <note markdown="1"> CodeDeployDefault.OneAtATime is the default deployment configuration.
      #   It is used if a configuration isn\'t specified for the deployment or
      #   the deployment group.
      #
      #    </note>
      #
      #   The predefined deployment configurations include the following:
      #
      #   * **CodeDeployDefault.AllAtOnce** attempts to deploy an application
      #     revision to as many instance as possible at once. The status of the
      #     overall deployment will be displayed as **Succeeded** if the
      #     application revision is deployed to one or more of the instances.
      #     The status of the overall deployment will be displayed as **Failed**
      #     if the application revision is not deployed to any of the instances.
      #     Using an example of nine instance, CodeDeployDefault.AllAtOnce will
      #     attempt to deploy to all nine instance at once. The overall
      #     deployment will succeed if deployment to even a single instance is
      #     successful; it will fail only if deployments to all nine instance
      #     fail.
      #
      #   * **CodeDeployDefault.HalfAtATime** deploys to up to half of the
      #     instances at a time (with fractions rounded down). The overall
      #     deployment succeeds if the application revision is deployed to at
      #     least half of the instances (with fractions rounded up); otherwise,
      #     the deployment fails. In the example of nine instances, it will
      #     deploy to up to four instance at a time. The overall deployment
      #     succeeds if deployment to five or more instances succeed; otherwise,
      #     the deployment fails. The deployment may be successfully deployed to
      #     some instances even if the overall deployment fails.
      #
      #   * **CodeDeployDefault.OneAtATime** deploys the application revision to
      #     only one instance at a time.
      #
      #     For deployment groups that contain more than one instance:
      #
      #     * The overall deployment succeeds if the application revision is
      #       deployed to all of the instances. The exception to this rule is if
      #       deployment to the last instance fails, the overall deployment
      #       still succeeds. This is because AWS CodeDeploy allows only one
      #       instance at a time to be taken offline with the
      #       CodeDeployDefault.OneAtATime configuration.
      #
      #     * The overall deployment fails as soon as the application revision
      #       fails to be deployed to any but the last instance. The deployment
      #       may be successfully deployed to some instances even if the overall
      #       deployment fails.
      #
      #     * In an example using nine instance, it will deploy to one instance
      #       at a time. The overall deployment succeeds if deployment to the
      #       first eight instance is successful; the overall deployment fails
      #       if deployment to any of the first eight instance fails.
      #
      #     For deployment groups that contain only one instance, the overall
      #     deployment is successful only if deployment to the single instance
      #     is successful
      # @option params [Array<Types::EC2TagFilter>] :ec2_tag_filters
      #   The Amazon EC2 tags on which to filter.
      # @option params [Array<Types::TagFilter>] :on_premises_instance_tag_filters
      #   The on-premises instance tags on which to filter.
      # @option params [Array<String>] :auto_scaling_groups
      #   A list of associated Auto Scaling groups.
      # @option params [required, String] :service_role_arn
      #   A service role ARN that allows AWS CodeDeploy to act on the user\'s
      #   behalf when interacting with AWS services.
      # @option params [Array<Types::TriggerConfig>] :trigger_configurations
      #   Information about triggers to create when the deployment group is
      #   created.
      # @return [Types::CreateDeploymentGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateDeploymentGroupOutput#deployment_group_id #deploymentGroupId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_deployment_group({
      #     application_name: "ApplicationName", # required
      #     deployment_group_name: "DeploymentGroupName", # required
      #     deployment_config_name: "DeploymentConfigName",
      #     ec2_tag_filters: [
      #       {
      #         key: "Key",
      #         value: "Value",
      #         type: "KEY_ONLY", # accepts KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE
      #       },
      #     ],
      #     on_premises_instance_tag_filters: [
      #       {
      #         key: "Key",
      #         value: "Value",
      #         type: "KEY_ONLY", # accepts KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE
      #       },
      #     ],
      #     auto_scaling_groups: ["AutoScalingGroupName"],
      #     service_role_arn: "Role", # required
      #     trigger_configurations: [
      #       {
      #         trigger_name: "TriggerName",
      #         trigger_target_arn: "TriggerTargetArn",
      #         trigger_events: ["DeploymentStart"], # accepts DeploymentStart, DeploymentSuccess, DeploymentFailure, DeploymentStop, InstanceStart, InstanceSuccess, InstanceFailure
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.deployment_group_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_deployment_group(params = {}, options = {})
        req = build_request(:create_deployment_group, params)
        req.send_request(options)
      end

      # Deletes an application.
      # @option params [required, String] :application_name
      #   The name of an AWS CodeDeploy application associated with the
      #   applicable IAM user or AWS account.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_application({
      #     application_name: "ApplicationName", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_application(params = {}, options = {})
        req = build_request(:delete_application, params)
        req.send_request(options)
      end

      # Deletes a deployment configuration.
      #
      # <note>A deployment configuration cannot be deleted if it is currently in use. Predefined configurations cannot be deleted.</note>
      # @option params [required, String] :deployment_config_name
      #   The name of a deployment configuration associated with the applicable
      #   IAM user or AWS account.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_deployment_config({
      #     deployment_config_name: "DeploymentConfigName", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_deployment_config(params = {}, options = {})
        req = build_request(:delete_deployment_config, params)
        req.send_request(options)
      end

      # Deletes a deployment group.
      # @option params [required, String] :application_name
      #   The name of an AWS CodeDeploy application associated with the
      #   applicable IAM user or AWS account.
      # @option params [required, String] :deployment_group_name
      #   The name of an existing deployment group for the specified
      #   application.
      # @return [Types::DeleteDeploymentGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DeleteDeploymentGroupOutput#hooks_not_cleaned_up #hooksNotCleanedUp} => Array&lt;Types::AutoScalingGroup&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_deployment_group({
      #     application_name: "ApplicationName", # required
      #     deployment_group_name: "DeploymentGroupName", # required
      #   })
      #
      # @example Response structure
      #   resp.hooks_not_cleaned_up #=> Array
      #   resp.hooks_not_cleaned_up[0].name #=> String
      #   resp.hooks_not_cleaned_up[0].hook #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_deployment_group(params = {}, options = {})
        req = build_request(:delete_deployment_group, params)
        req.send_request(options)
      end

      # Deregisters an on-premises instance.
      # @option params [required, String] :instance_name
      #   The name of the on-premises instance to deregister.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.deregister_on_premises_instance({
      #     instance_name: "InstanceName", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def deregister_on_premises_instance(params = {}, options = {})
        req = build_request(:deregister_on_premises_instance, params)
        req.send_request(options)
      end

      # Gets information about an application.
      # @option params [required, String] :application_name
      #   The name of an AWS CodeDeploy application associated with the
      #   applicable IAM user or AWS account.
      # @return [Types::GetApplicationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetApplicationOutput#application #application} => Types::ApplicationInfo
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_application({
      #     application_name: "ApplicationName", # required
      #   })
      #
      # @example Response structure
      #   resp.application.application_id #=> String
      #   resp.application.application_name #=> String
      #   resp.application.create_time #=> Time
      #   resp.application.linked_to_git_hub #=> Boolean
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_application(params = {}, options = {})
        req = build_request(:get_application, params)
        req.send_request(options)
      end

      # Gets information about an application revision.
      # @option params [required, String] :application_name
      #   The name of the application that corresponds to the revision.
      # @option params [required, Types::RevisionLocation] :revision
      #   Information about the application revision to get, including type and
      #   location.
      # @return [Types::GetApplicationRevisionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetApplicationRevisionOutput#application_name #applicationName} => String
      #   * {Types::GetApplicationRevisionOutput#revision #revision} => Types::RevisionLocation
      #   * {Types::GetApplicationRevisionOutput#revision_info #revisionInfo} => Types::GenericRevisionInfo
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_application_revision({
      #     application_name: "ApplicationName", # required
      #     revision: { # required
      #       revision_type: "S3", # accepts S3, GitHub
      #       s3_location: {
      #         bucket: "S3Bucket",
      #         key: "S3Key",
      #         bundle_type: "tar", # accepts tar, tgz, zip
      #         version: "VersionId",
      #         e_tag: "ETag",
      #       },
      #       git_hub_location: {
      #         repository: "Repository",
      #         commit_id: "CommitId",
      #       },
      #     },
      #   })
      #
      # @example Response structure
      #   resp.application_name #=> String
      #   resp.revision.revision_type #=> String, one of "S3", "GitHub"
      #   resp.revision.s3_location.bucket #=> String
      #   resp.revision.s3_location.key #=> String
      #   resp.revision.s3_location.bundle_type #=> String, one of "tar", "tgz", "zip"
      #   resp.revision.s3_location.version #=> String
      #   resp.revision.s3_location.e_tag #=> String
      #   resp.revision.git_hub_location.repository #=> String
      #   resp.revision.git_hub_location.commit_id #=> String
      #   resp.revision_info.description #=> String
      #   resp.revision_info.deployment_groups #=> Array
      #   resp.revision_info.deployment_groups[0] #=> String
      #   resp.revision_info.first_used_time #=> Time
      #   resp.revision_info.last_used_time #=> Time
      #   resp.revision_info.register_time #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_application_revision(params = {}, options = {})
        req = build_request(:get_application_revision, params)
        req.send_request(options)
      end

      # Gets information about a deployment.
      # @option params [required, String] :deployment_id
      #   A deployment ID associated with the applicable IAM user or AWS
      #   account.
      # @return [Types::GetDeploymentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetDeploymentOutput#deployment_info #deploymentInfo} => Types::DeploymentInfo
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_deployment({
      #     deployment_id: "DeploymentId", # required
      #   })
      #
      # @example Response structure
      #   resp.deployment_info.application_name #=> String
      #   resp.deployment_info.deployment_group_name #=> String
      #   resp.deployment_info.deployment_config_name #=> String
      #   resp.deployment_info.deployment_id #=> String
      #   resp.deployment_info.revision.revision_type #=> String, one of "S3", "GitHub"
      #   resp.deployment_info.revision.s3_location.bucket #=> String
      #   resp.deployment_info.revision.s3_location.key #=> String
      #   resp.deployment_info.revision.s3_location.bundle_type #=> String, one of "tar", "tgz", "zip"
      #   resp.deployment_info.revision.s3_location.version #=> String
      #   resp.deployment_info.revision.s3_location.e_tag #=> String
      #   resp.deployment_info.revision.git_hub_location.repository #=> String
      #   resp.deployment_info.revision.git_hub_location.commit_id #=> String
      #   resp.deployment_info.status #=> String, one of "Created", "Queued", "InProgress", "Succeeded", "Failed", "Stopped"
      #   resp.deployment_info.error_information.code #=> String, one of "DEPLOYMENT_GROUP_MISSING", "APPLICATION_MISSING", "REVISION_MISSING", "IAM_ROLE_MISSING", "IAM_ROLE_PERMISSIONS", "NO_EC2_SUBSCRIPTION", "OVER_MAX_INSTANCES", "NO_INSTANCES", "TIMEOUT", "HEALTH_CONSTRAINTS_INVALID", "HEALTH_CONSTRAINTS", "INTERNAL_ERROR", "THROTTLED"
      #   resp.deployment_info.error_information.message #=> String
      #   resp.deployment_info.create_time #=> Time
      #   resp.deployment_info.start_time #=> Time
      #   resp.deployment_info.complete_time #=> Time
      #   resp.deployment_info.deployment_overview.pending #=> Integer
      #   resp.deployment_info.deployment_overview.in_progress #=> Integer
      #   resp.deployment_info.deployment_overview.succeeded #=> Integer
      #   resp.deployment_info.deployment_overview.failed #=> Integer
      #   resp.deployment_info.deployment_overview.skipped #=> Integer
      #   resp.deployment_info.description #=> String
      #   resp.deployment_info.creator #=> String, one of "user", "autoscaling"
      #   resp.deployment_info.ignore_application_stop_failures #=> Boolean
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_deployment(params = {}, options = {})
        req = build_request(:get_deployment, params)
        req.send_request(options)
      end

      # Gets information about a deployment configuration.
      # @option params [required, String] :deployment_config_name
      #   The name of a deployment configuration associated with the applicable
      #   IAM user or AWS account.
      # @return [Types::GetDeploymentConfigOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetDeploymentConfigOutput#deployment_config_info #deploymentConfigInfo} => Types::DeploymentConfigInfo
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_deployment_config({
      #     deployment_config_name: "DeploymentConfigName", # required
      #   })
      #
      # @example Response structure
      #   resp.deployment_config_info.deployment_config_id #=> String
      #   resp.deployment_config_info.deployment_config_name #=> String
      #   resp.deployment_config_info.minimum_healthy_hosts.value #=> Integer
      #   resp.deployment_config_info.minimum_healthy_hosts.type #=> String, one of "HOST_COUNT", "FLEET_PERCENT"
      #   resp.deployment_config_info.create_time #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_deployment_config(params = {}, options = {})
        req = build_request(:get_deployment_config, params)
        req.send_request(options)
      end

      # Gets information about a deployment group.
      # @option params [required, String] :application_name
      #   The name of an AWS CodeDeploy application associated with the
      #   applicable IAM user or AWS account.
      # @option params [required, String] :deployment_group_name
      #   The name of an existing deployment group for the specified
      #   application.
      # @return [Types::GetDeploymentGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetDeploymentGroupOutput#deployment_group_info #deploymentGroupInfo} => Types::DeploymentGroupInfo
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_deployment_group({
      #     application_name: "ApplicationName", # required
      #     deployment_group_name: "DeploymentGroupName", # required
      #   })
      #
      # @example Response structure
      #   resp.deployment_group_info.application_name #=> String
      #   resp.deployment_group_info.deployment_group_id #=> String
      #   resp.deployment_group_info.deployment_group_name #=> String
      #   resp.deployment_group_info.deployment_config_name #=> String
      #   resp.deployment_group_info.ec2_tag_filters #=> Array
      #   resp.deployment_group_info.ec2_tag_filters[0].key #=> String
      #   resp.deployment_group_info.ec2_tag_filters[0].value #=> String
      #   resp.deployment_group_info.ec2_tag_filters[0].type #=> String, one of "KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"
      #   resp.deployment_group_info.on_premises_instance_tag_filters #=> Array
      #   resp.deployment_group_info.on_premises_instance_tag_filters[0].key #=> String
      #   resp.deployment_group_info.on_premises_instance_tag_filters[0].value #=> String
      #   resp.deployment_group_info.on_premises_instance_tag_filters[0].type #=> String, one of "KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"
      #   resp.deployment_group_info.auto_scaling_groups #=> Array
      #   resp.deployment_group_info.auto_scaling_groups[0].name #=> String
      #   resp.deployment_group_info.auto_scaling_groups[0].hook #=> String
      #   resp.deployment_group_info.service_role_arn #=> String
      #   resp.deployment_group_info.target_revision.revision_type #=> String, one of "S3", "GitHub"
      #   resp.deployment_group_info.target_revision.s3_location.bucket #=> String
      #   resp.deployment_group_info.target_revision.s3_location.key #=> String
      #   resp.deployment_group_info.target_revision.s3_location.bundle_type #=> String, one of "tar", "tgz", "zip"
      #   resp.deployment_group_info.target_revision.s3_location.version #=> String
      #   resp.deployment_group_info.target_revision.s3_location.e_tag #=> String
      #   resp.deployment_group_info.target_revision.git_hub_location.repository #=> String
      #   resp.deployment_group_info.target_revision.git_hub_location.commit_id #=> String
      #   resp.deployment_group_info.trigger_configurations #=> Array
      #   resp.deployment_group_info.trigger_configurations[0].trigger_name #=> String
      #   resp.deployment_group_info.trigger_configurations[0].trigger_target_arn #=> String
      #   resp.deployment_group_info.trigger_configurations[0].trigger_events #=> Array
      #   resp.deployment_group_info.trigger_configurations[0].trigger_events[0] #=> String, one of "DeploymentStart", "DeploymentSuccess", "DeploymentFailure", "DeploymentStop", "InstanceStart", "InstanceSuccess", "InstanceFailure"
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_deployment_group(params = {}, options = {})
        req = build_request(:get_deployment_group, params)
        req.send_request(options)
      end

      # Gets information about an instance as part of a deployment.
      # @option params [required, String] :deployment_id
      #   The unique ID of a deployment.
      # @option params [required, String] :instance_id
      #   The unique ID of an instance in the deployment group.
      # @return [Types::GetDeploymentInstanceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetDeploymentInstanceOutput#instance_summary #instanceSummary} => Types::InstanceSummary
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_deployment_instance({
      #     deployment_id: "DeploymentId", # required
      #     instance_id: "InstanceId", # required
      #   })
      #
      # @example Response structure
      #   resp.instance_summary.deployment_id #=> String
      #   resp.instance_summary.instance_id #=> String
      #   resp.instance_summary.status #=> String, one of "Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown"
      #   resp.instance_summary.last_updated_at #=> Time
      #   resp.instance_summary.lifecycle_events #=> Array
      #   resp.instance_summary.lifecycle_events[0].lifecycle_event_name #=> String
      #   resp.instance_summary.lifecycle_events[0].diagnostics.error_code #=> String, one of "Success", "ScriptMissing", "ScriptNotExecutable", "ScriptTimedOut", "ScriptFailed", "UnknownError"
      #   resp.instance_summary.lifecycle_events[0].diagnostics.script_name #=> String
      #   resp.instance_summary.lifecycle_events[0].diagnostics.message #=> String
      #   resp.instance_summary.lifecycle_events[0].diagnostics.log_tail #=> String
      #   resp.instance_summary.lifecycle_events[0].start_time #=> Time
      #   resp.instance_summary.lifecycle_events[0].end_time #=> Time
      #   resp.instance_summary.lifecycle_events[0].status #=> String, one of "Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown"
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_deployment_instance(params = {}, options = {})
        req = build_request(:get_deployment_instance, params)
        req.send_request(options)
      end

      # Gets information about an on-premises instance.
      # @option params [required, String] :instance_name
      #   The name of the on-premises instance about which to get information.
      # @return [Types::GetOnPremisesInstanceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetOnPremisesInstanceOutput#instance_info #instanceInfo} => Types::InstanceInfo
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_on_premises_instance({
      #     instance_name: "InstanceName", # required
      #   })
      #
      # @example Response structure
      #   resp.instance_info.instance_name #=> String
      #   resp.instance_info.iam_user_arn #=> String
      #   resp.instance_info.instance_arn #=> String
      #   resp.instance_info.register_time #=> Time
      #   resp.instance_info.deregister_time #=> Time
      #   resp.instance_info.tags #=> Array
      #   resp.instance_info.tags[0].key #=> String
      #   resp.instance_info.tags[0].value #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_on_premises_instance(params = {}, options = {})
        req = build_request(:get_on_premises_instance, params)
        req.send_request(options)
      end

      # Lists information about revisions for an application.
      # @option params [required, String] :application_name
      #   The name of an AWS CodeDeploy application associated with the
      #   applicable IAM user or AWS account.
      # @option params [String] :sort_by
      #   The column name to use to sort the list results:
      #
      #   * registerTime: Sort by the time the revisions were registered with
      #     AWS CodeDeploy.
      #   * firstUsedTime: Sort by the time the revisions were first used in a
      #     deployment.
      #   * lastUsedTime: Sort by the time the revisions were last used in a
      #     deployment.
      #
      #   If not specified or set to null, the results will be returned in an
      #   arbitrary order.
      # @option params [String] :sort_order
      #   The order in which to sort the list results:
      #
      #   * ascending: ascending order.
      #   * descending: descending order.
      #
      #   If not specified, the results will be sorted in ascending order.
      #
      #   If set to null, the results will be sorted in an arbitrary order.
      # @option params [String] :s3_bucket
      #   An Amazon S3 bucket name to limit the search for revisions.
      #
      #   If set to null, all of the user\'s buckets will be searched.
      # @option params [String] :s3_key_prefix
      #   A key prefix for the set of Amazon S3 objects to limit the search for
      #   revisions.
      # @option params [String] :deployed
      #   Whether to list revisions based on whether the revision is the target
      #   revision of an deployment group:
      #
      #   * include: List revisions that are target revisions of a deployment
      #     group.
      #   * exclude: Do not list revisions that are target revisions of a
      #     deployment group.
      #   * ignore: List all revisions.
      # @option params [String] :next_token
      #   An identifier returned from the previous list application revisions
      #   call. It can be used to return the next set of applications in the
      #   list.
      # @return [Types::ListApplicationRevisionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListApplicationRevisionsOutput#revisions #revisions} => Array&lt;Types::RevisionLocation&gt;
      #   * {Types::ListApplicationRevisionsOutput#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_application_revisions({
      #     application_name: "ApplicationName", # required
      #     sort_by: "registerTime", # accepts registerTime, firstUsedTime, lastUsedTime
      #     sort_order: "ascending", # accepts ascending, descending
      #     s3_bucket: "S3Bucket",
      #     s3_key_prefix: "S3Key",
      #     deployed: "include", # accepts include, exclude, ignore
      #     next_token: "NextToken",
      #   })
      #
      # @example Response structure
      #   resp.revisions #=> Array
      #   resp.revisions[0].revision_type #=> String, one of "S3", "GitHub"
      #   resp.revisions[0].s3_location.bucket #=> String
      #   resp.revisions[0].s3_location.key #=> String
      #   resp.revisions[0].s3_location.bundle_type #=> String, one of "tar", "tgz", "zip"
      #   resp.revisions[0].s3_location.version #=> String
      #   resp.revisions[0].s3_location.e_tag #=> String
      #   resp.revisions[0].git_hub_location.repository #=> String
      #   resp.revisions[0].git_hub_location.commit_id #=> String
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_application_revisions(params = {}, options = {})
        req = build_request(:list_application_revisions, params)
        req.send_request(options)
      end

      # Lists the applications registered with the applicable IAM user or AWS
      # account.
      # @option params [String] :next_token
      #   An identifier returned from the previous list applications call. It
      #   can be used to return the next set of applications in the list.
      # @return [Types::ListApplicationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListApplicationsOutput#applications #applications} => Array&lt;String&gt;
      #   * {Types::ListApplicationsOutput#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_applications({
      #     next_token: "NextToken",
      #   })
      #
      # @example Response structure
      #   resp.applications #=> Array
      #   resp.applications[0] #=> String
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_applications(params = {}, options = {})
        req = build_request(:list_applications, params)
        req.send_request(options)
      end

      # Lists the deployment configurations with the applicable IAM user or
      # AWS account.
      # @option params [String] :next_token
      #   An identifier returned from the previous list deployment
      #   configurations call. It can be used to return the next set of
      #   deployment configurations in the list.
      # @return [Types::ListDeploymentConfigsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListDeploymentConfigsOutput#deployment_configs_list #deploymentConfigsList} => Array&lt;String&gt;
      #   * {Types::ListDeploymentConfigsOutput#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_deployment_configs({
      #     next_token: "NextToken",
      #   })
      #
      # @example Response structure
      #   resp.deployment_configs_list #=> Array
      #   resp.deployment_configs_list[0] #=> String
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_deployment_configs(params = {}, options = {})
        req = build_request(:list_deployment_configs, params)
        req.send_request(options)
      end

      # Lists the deployment groups for an application registered with the
      # applicable IAM user or AWS account.
      # @option params [required, String] :application_name
      #   The name of an AWS CodeDeploy application associated with the
      #   applicable IAM user or AWS account.
      # @option params [String] :next_token
      #   An identifier returned from the previous list deployment groups call.
      #   It can be used to return the next set of deployment groups in the
      #   list.
      # @return [Types::ListDeploymentGroupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListDeploymentGroupsOutput#application_name #applicationName} => String
      #   * {Types::ListDeploymentGroupsOutput#deployment_groups #deploymentGroups} => Array&lt;String&gt;
      #   * {Types::ListDeploymentGroupsOutput#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_deployment_groups({
      #     application_name: "ApplicationName", # required
      #     next_token: "NextToken",
      #   })
      #
      # @example Response structure
      #   resp.application_name #=> String
      #   resp.deployment_groups #=> Array
      #   resp.deployment_groups[0] #=> String
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_deployment_groups(params = {}, options = {})
        req = build_request(:list_deployment_groups, params)
        req.send_request(options)
      end

      # Lists the instance for a deployment associated with the applicable IAM
      # user or AWS account.
      # @option params [required, String] :deployment_id
      #   The unique ID of a deployment.
      # @option params [String] :next_token
      #   An identifier returned from the previous list deployment instances
      #   call. It can be used to return the next set of deployment instances in
      #   the list.
      # @option params [Array<String>] :instance_status_filter
      #   A subset of instances to list by status:
      #
      #   * Pending: Include those instance with pending deployments.
      #   * InProgress: Include those instance where deployments are still in
      #     progress.
      #   * Succeeded: Include those instances with successful deployments.
      #   * Failed: Include those instance with failed deployments.
      #   * Skipped: Include those instance with skipped deployments.
      #   * Unknown: Include those instance with deployments in an unknown
      #     state.
      # @return [Types::ListDeploymentInstancesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListDeploymentInstancesOutput#instances_list #instancesList} => Array&lt;String&gt;
      #   * {Types::ListDeploymentInstancesOutput#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_deployment_instances({
      #     deployment_id: "DeploymentId", # required
      #     next_token: "NextToken",
      #     instance_status_filter: ["Pending"], # accepts Pending, InProgress, Succeeded, Failed, Skipped, Unknown
      #   })
      #
      # @example Response structure
      #   resp.instances_list #=> Array
      #   resp.instances_list[0] #=> String
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_deployment_instances(params = {}, options = {})
        req = build_request(:list_deployment_instances, params)
        req.send_request(options)
      end

      # Lists the deployments in a deployment group for an application
      # registered with the applicable IAM user or AWS account.
      # @option params [String] :application_name
      #   The name of an AWS CodeDeploy application associated with the
      #   applicable IAM user or AWS account.
      # @option params [String] :deployment_group_name
      #   The name of an existing deployment group for the specified
      #   application.
      # @option params [Array<String>] :include_only_statuses
      #   A subset of deployments to list by status:
      #
      #   * Created: Include created deployments in the resulting list.
      #   * Queued: Include queued deployments in the resulting list.
      #   * In Progress: Include in-progress deployments in the resulting list.
      #   * Succeeded: Include successful deployments in the resulting list.
      #   * Failed: Include failed deployments in the resulting list.
      #   * Stopped: Include stopped deployments in the resulting list.
      # @option params [Types::TimeRange] :create_time_range
      #   A time range (start and end) for returning a subset of the list of
      #   deployments.
      # @option params [String] :next_token
      #   An identifier returned from the previous list deployments call. It can
      #   be used to return the next set of deployments in the list.
      # @return [Types::ListDeploymentsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListDeploymentsOutput#deployments #deployments} => Array&lt;String&gt;
      #   * {Types::ListDeploymentsOutput#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_deployments({
      #     application_name: "ApplicationName",
      #     deployment_group_name: "DeploymentGroupName",
      #     include_only_statuses: ["Created"], # accepts Created, Queued, InProgress, Succeeded, Failed, Stopped
      #     create_time_range: {
      #       start: Time.now,
      #       end: Time.now,
      #     },
      #     next_token: "NextToken",
      #   })
      #
      # @example Response structure
      #   resp.deployments #=> Array
      #   resp.deployments[0] #=> String
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_deployments(params = {}, options = {})
        req = build_request(:list_deployments, params)
        req.send_request(options)
      end

      # Gets a list of names for one or more on-premises instances.
      #
      # Unless otherwise specified, both registered and deregistered
      # on-premises instance names will be listed. To list only registered or
      # deregistered on-premises instance names, use the registration status
      # parameter.
      # @option params [String] :registration_status
      #   The registration status of the on-premises instances:
      #
      #   * Deregistered: Include deregistered on-premises instances in the
      #     resulting list.
      #   * Registered: Include registered on-premises instances in the
      #     resulting list.
      # @option params [Array<Types::TagFilter>] :tag_filters
      #   The on-premises instance tags that will be used to restrict the
      #   corresponding on-premises instance names returned.
      # @option params [String] :next_token
      #   An identifier returned from the previous list on-premises instances
      #   call. It can be used to return the next set of on-premises instances
      #   in the list.
      # @return [Types::ListOnPremisesInstancesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListOnPremisesInstancesOutput#instance_names #instanceNames} => Array&lt;String&gt;
      #   * {Types::ListOnPremisesInstancesOutput#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_on_premises_instances({
      #     registration_status: "Registered", # accepts Registered, Deregistered
      #     tag_filters: [
      #       {
      #         key: "Key",
      #         value: "Value",
      #         type: "KEY_ONLY", # accepts KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE
      #       },
      #     ],
      #     next_token: "NextToken",
      #   })
      #
      # @example Response structure
      #   resp.instance_names #=> Array
      #   resp.instance_names[0] #=> String
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_on_premises_instances(params = {}, options = {})
        req = build_request(:list_on_premises_instances, params)
        req.send_request(options)
      end

      # Registers with AWS CodeDeploy a revision for the specified
      # application.
      # @option params [required, String] :application_name
      #   The name of an AWS CodeDeploy application associated with the
      #   applicable IAM user or AWS account.
      # @option params [String] :description
      #   A comment about the revision.
      # @option params [required, Types::RevisionLocation] :revision
      #   Information about the application revision to register, including type
      #   and location.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.register_application_revision({
      #     application_name: "ApplicationName", # required
      #     description: "Description",
      #     revision: { # required
      #       revision_type: "S3", # accepts S3, GitHub
      #       s3_location: {
      #         bucket: "S3Bucket",
      #         key: "S3Key",
      #         bundle_type: "tar", # accepts tar, tgz, zip
      #         version: "VersionId",
      #         e_tag: "ETag",
      #       },
      #       git_hub_location: {
      #         repository: "Repository",
      #         commit_id: "CommitId",
      #       },
      #     },
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def register_application_revision(params = {}, options = {})
        req = build_request(:register_application_revision, params)
        req.send_request(options)
      end

      # Registers an on-premises instance.
      # @option params [required, String] :instance_name
      #   The name of the on-premises instance to register.
      # @option params [required, String] :iam_user_arn
      #   The ARN of the IAM user to associate with the on-premises instance.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.register_on_premises_instance({
      #     instance_name: "InstanceName", # required
      #     iam_user_arn: "IamUserArn", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def register_on_premises_instance(params = {}, options = {})
        req = build_request(:register_on_premises_instance, params)
        req.send_request(options)
      end

      # Removes one or more tags from one or more on-premises instances.
      # @option params [required, Array<Types::Tag>] :tags
      #   The tag key-value pairs to remove from the on-premises instances.
      # @option params [required, Array<String>] :instance_names
      #   The names of the on-premises instances from which to remove tags.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.remove_tags_from_on_premises_instances({
      #     tags: [ # required
      #       {
      #         key: "Key",
      #         value: "Value",
      #       },
      #     ],
      #     instance_names: ["InstanceName"], # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def remove_tags_from_on_premises_instances(params = {}, options = {})
        req = build_request(:remove_tags_from_on_premises_instances, params)
        req.send_request(options)
      end

      # Attempts to stop an ongoing deployment.
      # @option params [required, String] :deployment_id
      #   The unique ID of a deployment.
      # @return [Types::StopDeploymentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::StopDeploymentOutput#status #status} => String
      #   * {Types::StopDeploymentOutput#status_message #statusMessage} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.stop_deployment({
      #     deployment_id: "DeploymentId", # required
      #   })
      #
      # @example Response structure
      #   resp.status #=> String, one of "Pending", "Succeeded"
      #   resp.status_message #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def stop_deployment(params = {}, options = {})
        req = build_request(:stop_deployment, params)
        req.send_request(options)
      end

      # Changes the name of an application.
      # @option params [String] :application_name
      #   The current name of the application you want to change.
      # @option params [String] :new_application_name
      #   The new name to give the application.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_application({
      #     application_name: "ApplicationName",
      #     new_application_name: "ApplicationName",
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_application(params = {}, options = {})
        req = build_request(:update_application, params)
        req.send_request(options)
      end

      # Changes information about a deployment group.
      # @option params [required, String] :application_name
      #   The application name corresponding to the deployment group to update.
      # @option params [required, String] :current_deployment_group_name
      #   The current name of the deployment group.
      # @option params [String] :new_deployment_group_name
      #   The new name of the deployment group, if you want to change it.
      # @option params [String] :deployment_config_name
      #   The replacement deployment configuration name to use, if you want to
      #   change it.
      # @option params [Array<Types::EC2TagFilter>] :ec2_tag_filters
      #   The replacement set of Amazon EC2 tags on which to filter, if you want
      #   to change them. To keep the existing tags, enter their names. To
      #   remove tags, do not enter any tag names.
      # @option params [Array<Types::TagFilter>] :on_premises_instance_tag_filters
      #   The replacement set of on-premises instance tags on which to filter,
      #   if you want to change them. To keep the existing tags, enter their
      #   names. To remove tags, do not enter any tag names.
      # @option params [Array<String>] :auto_scaling_groups
      #   The replacement list of Auto Scaling groups to be included in the
      #   deployment group, if you want to change them. To keep the Auto Scaling
      #   groups, enter their names. To remove Auto Scaling groups, do not enter
      #   any Auto Scaling group names.
      # @option params [String] :service_role_arn
      #   A replacement ARN for the service role, if you want to change it.
      # @option params [Array<Types::TriggerConfig>] :trigger_configurations
      #   Information about triggers to change when the deployment group is
      #   updated.
      # @return [Types::UpdateDeploymentGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::UpdateDeploymentGroupOutput#hooks_not_cleaned_up #hooksNotCleanedUp} => Array&lt;Types::AutoScalingGroup&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_deployment_group({
      #     application_name: "ApplicationName", # required
      #     current_deployment_group_name: "DeploymentGroupName", # required
      #     new_deployment_group_name: "DeploymentGroupName",
      #     deployment_config_name: "DeploymentConfigName",
      #     ec2_tag_filters: [
      #       {
      #         key: "Key",
      #         value: "Value",
      #         type: "KEY_ONLY", # accepts KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE
      #       },
      #     ],
      #     on_premises_instance_tag_filters: [
      #       {
      #         key: "Key",
      #         value: "Value",
      #         type: "KEY_ONLY", # accepts KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE
      #       },
      #     ],
      #     auto_scaling_groups: ["AutoScalingGroupName"],
      #     service_role_arn: "Role",
      #     trigger_configurations: [
      #       {
      #         trigger_name: "TriggerName",
      #         trigger_target_arn: "TriggerTargetArn",
      #         trigger_events: ["DeploymentStart"], # accepts DeploymentStart, DeploymentSuccess, DeploymentFailure, DeploymentStop, InstanceStart, InstanceSuccess, InstanceFailure
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.hooks_not_cleaned_up #=> Array
      #   resp.hooks_not_cleaned_up[0].name #=> String
      #   resp.hooks_not_cleaned_up[0].hook #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_deployment_group(params = {}, options = {})
        req = build_request(:update_deployment_group, params)
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
        {}
      end

      # @api private
      class << self

        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end