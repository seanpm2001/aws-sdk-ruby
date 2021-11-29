# frozen_string_literal: true

require 'aws-sdk-core'

# Aws module documentation.
module Aws
  # service gems
  autoload :ACM, 'aws-sdk-acm'
  autoload :ACMPCA, 'aws-sdk-acmpca'
  autoload :APIGateway, 'aws-sdk-apigateway'
  autoload :AccessAnalyzer, 'aws-sdk-accessanalyzer'
  autoload :Account, 'aws-sdk-account'
  autoload :AlexaForBusiness, 'aws-sdk-alexaforbusiness'
  autoload :Amplify, 'aws-sdk-amplify'
  autoload :AmplifyBackend, 'aws-sdk-amplifybackend'
  autoload :ApiGatewayManagementApi, 'aws-sdk-apigatewaymanagementapi'
  autoload :ApiGatewayV2, 'aws-sdk-apigatewayv2'
  autoload :AppConfig, 'aws-sdk-appconfig'
  autoload :AppConfigData, 'aws-sdk-appconfigdata'
  autoload :AppIntegrationsService, 'aws-sdk-appintegrationsservice'
  autoload :AppMesh, 'aws-sdk-appmesh'
  autoload :AppRegistry, 'aws-sdk-appregistry'
  autoload :AppRunner, 'aws-sdk-apprunner'
  autoload :AppStream, 'aws-sdk-appstream'
  autoload :AppSync, 'aws-sdk-appsync'
  autoload :Appflow, 'aws-sdk-appflow'
  autoload :ApplicationAutoScaling, 'aws-sdk-applicationautoscaling'
  autoload :ApplicationCostProfiler, 'aws-sdk-applicationcostprofiler'
  autoload :ApplicationDiscoveryService, 'aws-sdk-applicationdiscoveryservice'
  autoload :ApplicationInsights, 'aws-sdk-applicationinsights'
  autoload :Athena, 'aws-sdk-athena'
  autoload :AuditManager, 'aws-sdk-auditmanager'
  autoload :AugmentedAIRuntime, 'aws-sdk-augmentedairuntime'
  autoload :AutoScaling, 'aws-sdk-autoscaling'
  autoload :AutoScalingPlans, 'aws-sdk-autoscalingplans'
  autoload :Backup, 'aws-sdk-backup'
  autoload :Batch, 'aws-sdk-batch'
  autoload :Braket, 'aws-sdk-braket'
  autoload :Budgets, 'aws-sdk-budgets'
  autoload :Chime, 'aws-sdk-chime'
  autoload :ChimeSDKIdentity, 'aws-sdk-chimesdkidentity'
  autoload :ChimeSDKMeetings, 'aws-sdk-chimesdkmeetings'
  autoload :ChimeSDKMessaging, 'aws-sdk-chimesdkmessaging'
  autoload :Cloud9, 'aws-sdk-cloud9'
  autoload :CloudControlApi, 'aws-sdk-cloudcontrolapi'
  autoload :CloudDirectory, 'aws-sdk-clouddirectory'
  autoload :CloudFormation, 'aws-sdk-cloudformation'
  autoload :CloudFront, 'aws-sdk-cloudfront'
  autoload :CloudHSM, 'aws-sdk-cloudhsm'
  autoload :CloudHSMV2, 'aws-sdk-cloudhsmv2'
  autoload :CloudSearch, 'aws-sdk-cloudsearch'
  autoload :CloudSearchDomain, 'aws-sdk-cloudsearchdomain'
  autoload :CloudTrail, 'aws-sdk-cloudtrail'
  autoload :CloudWatch, 'aws-sdk-cloudwatch'
  autoload :CloudWatchEvents, 'aws-sdk-cloudwatchevents'
  autoload :CloudWatchEvidently, 'aws-sdk-cloudwatchevidently'
  autoload :CloudWatchLogs, 'aws-sdk-cloudwatchlogs'
  autoload :CloudWatchRUM, 'aws-sdk-cloudwatchrum'
  autoload :CodeArtifact, 'aws-sdk-codeartifact'
  autoload :CodeBuild, 'aws-sdk-codebuild'
  autoload :CodeCommit, 'aws-sdk-codecommit'
  autoload :CodeDeploy, 'aws-sdk-codedeploy'
  autoload :CodeGuruProfiler, 'aws-sdk-codeguruprofiler'
  autoload :CodeGuruReviewer, 'aws-sdk-codegurureviewer'
  autoload :CodePipeline, 'aws-sdk-codepipeline'
  autoload :CodeStar, 'aws-sdk-codestar'
  autoload :CodeStarNotifications, 'aws-sdk-codestarnotifications'
  autoload :CodeStarconnections, 'aws-sdk-codestarconnections'
  autoload :CognitoIdentity, 'aws-sdk-cognitoidentity'
  autoload :CognitoIdentityProvider, 'aws-sdk-cognitoidentityprovider'
  autoload :CognitoSync, 'aws-sdk-cognitosync'
  autoload :Comprehend, 'aws-sdk-comprehend'
  autoload :ComprehendMedical, 'aws-sdk-comprehendmedical'
  autoload :ComputeOptimizer, 'aws-sdk-computeoptimizer'
  autoload :ConfigService, 'aws-sdk-configservice'
  autoload :Connect, 'aws-sdk-connect'
  autoload :ConnectContactLens, 'aws-sdk-connectcontactlens'
  autoload :ConnectParticipant, 'aws-sdk-connectparticipant'
  autoload :ConnectWisdomService, 'aws-sdk-connectwisdomservice'
  autoload :CostExplorer, 'aws-sdk-costexplorer'
  autoload :CostandUsageReportService, 'aws-sdk-costandusagereportservice'
  autoload :CustomerProfiles, 'aws-sdk-customerprofiles'
  autoload :DAX, 'aws-sdk-dax'
  autoload :DLM, 'aws-sdk-dlm'
  autoload :DataExchange, 'aws-sdk-dataexchange'
  autoload :DataPipeline, 'aws-sdk-datapipeline'
  autoload :DataSync, 'aws-sdk-datasync'
  autoload :DatabaseMigrationService, 'aws-sdk-databasemigrationservice'
  autoload :Detective, 'aws-sdk-detective'
  autoload :DevOpsGuru, 'aws-sdk-devopsguru'
  autoload :DeviceFarm, 'aws-sdk-devicefarm'
  autoload :DirectConnect, 'aws-sdk-directconnect'
  autoload :DirectoryService, 'aws-sdk-directoryservice'
  autoload :DocDB, 'aws-sdk-docdb'
  autoload :Drs, 'aws-sdk-drs'
  autoload :DynamoDB, 'aws-sdk-dynamodb'
  autoload :DynamoDBStreams, 'aws-sdk-dynamodbstreams'
  autoload :EBS, 'aws-sdk-ebs'
  autoload :EC2, 'aws-sdk-ec2'
  autoload :EC2InstanceConnect, 'aws-sdk-ec2instanceconnect'
  autoload :ECR, 'aws-sdk-ecr'
  autoload :ECRPublic, 'aws-sdk-ecrpublic'
  autoload :ECS, 'aws-sdk-ecs'
  autoload :EFS, 'aws-sdk-efs'
  autoload :EKS, 'aws-sdk-eks'
  autoload :EMR, 'aws-sdk-emr'
  autoload :EMRContainers, 'aws-sdk-emrcontainers'
  autoload :ElastiCache, 'aws-sdk-elasticache'
  autoload :ElasticBeanstalk, 'aws-sdk-elasticbeanstalk'
  autoload :ElasticInference, 'aws-sdk-elasticinference'
  autoload :ElasticLoadBalancing, 'aws-sdk-elasticloadbalancing'
  autoload :ElasticLoadBalancingV2, 'aws-sdk-elasticloadbalancingv2'
  autoload :ElasticTranscoder, 'aws-sdk-elastictranscoder'
  autoload :ElasticsearchService, 'aws-sdk-elasticsearchservice'
  autoload :EventBridge, 'aws-sdk-eventbridge'
  autoload :FIS, 'aws-sdk-fis'
  autoload :FMS, 'aws-sdk-fms'
  autoload :FSx, 'aws-sdk-fsx'
  autoload :FinSpaceData, 'aws-sdk-finspacedata'
  autoload :Finspace, 'aws-sdk-finspace'
  autoload :Firehose, 'aws-sdk-firehose'
  autoload :ForecastQueryService, 'aws-sdk-forecastqueryservice'
  autoload :ForecastService, 'aws-sdk-forecastservice'
  autoload :FraudDetector, 'aws-sdk-frauddetector'
  autoload :GameLift, 'aws-sdk-gamelift'
  autoload :Glacier, 'aws-sdk-glacier'
  autoload :GlobalAccelerator, 'aws-sdk-globalaccelerator'
  autoload :Glue, 'aws-sdk-glue'
  autoload :GlueDataBrew, 'aws-sdk-gluedatabrew'
  autoload :Greengrass, 'aws-sdk-greengrass'
  autoload :GreengrassV2, 'aws-sdk-greengrassv2'
  autoload :GroundStation, 'aws-sdk-groundstation'
  autoload :GuardDuty, 'aws-sdk-guardduty'
  autoload :Health, 'aws-sdk-health'
  autoload :HealthLake, 'aws-sdk-healthlake'
  autoload :Honeycode, 'aws-sdk-honeycode'
  autoload :IAM, 'aws-sdk-iam'
  autoload :IVS, 'aws-sdk-ivs'
  autoload :IdentityStore, 'aws-sdk-identitystore'
  autoload :Imagebuilder, 'aws-sdk-imagebuilder'
  autoload :ImportExport, 'aws-sdk-importexport'
  autoload :Inspector, 'aws-sdk-inspector'
  autoload :Inspector2, 'aws-sdk-inspector2'
  autoload :IoT, 'aws-sdk-iot'
  autoload :IoT1ClickDevicesService, 'aws-sdk-iot1clickdevicesservice'
  autoload :IoT1ClickProjects, 'aws-sdk-iot1clickprojects'
  autoload :IoTAnalytics, 'aws-sdk-iotanalytics'
  autoload :IoTDataPlane, 'aws-sdk-iotdataplane'
  autoload :IoTDeviceAdvisor, 'aws-sdk-iotdeviceadvisor'
  autoload :IoTEvents, 'aws-sdk-iotevents'
  autoload :IoTEventsData, 'aws-sdk-ioteventsdata'
  autoload :IoTFleetHub, 'aws-sdk-iotfleethub'
  autoload :IoTJobsDataPlane, 'aws-sdk-iotjobsdataplane'
  autoload :IoTSecureTunneling, 'aws-sdk-iotsecuretunneling'
  autoload :IoTSiteWise, 'aws-sdk-iotsitewise'
  autoload :IoTThingsGraph, 'aws-sdk-iotthingsgraph'
  autoload :IoTWireless, 'aws-sdk-iotwireless'
  autoload :KMS, 'aws-sdk-kms'
  autoload :Kafka, 'aws-sdk-kafka'
  autoload :KafkaConnect, 'aws-sdk-kafkaconnect'
  autoload :Kendra, 'aws-sdk-kendra'
  autoload :Kinesis, 'aws-sdk-kinesis'
  autoload :KinesisAnalytics, 'aws-sdk-kinesisanalytics'
  autoload :KinesisAnalyticsV2, 'aws-sdk-kinesisanalyticsv2'
  autoload :KinesisVideo, 'aws-sdk-kinesisvideo'
  autoload :KinesisVideoArchivedMedia, 'aws-sdk-kinesisvideoarchivedmedia'
  autoload :KinesisVideoMedia, 'aws-sdk-kinesisvideomedia'
  autoload :KinesisVideoSignalingChannels, 'aws-sdk-kinesisvideosignalingchannels'
  autoload :LakeFormation, 'aws-sdk-lakeformation'
  autoload :Lambda, 'aws-sdk-lambda'
  autoload :LambdaPreview, 'aws-sdk-lambdapreview'
  autoload :Lex, 'aws-sdk-lex'
  autoload :LexModelBuildingService, 'aws-sdk-lexmodelbuildingservice'
  autoload :LexModelsV2, 'aws-sdk-lexmodelsv2'
  autoload :LexRuntimeV2, 'aws-sdk-lexruntimev2'
  autoload :LicenseManager, 'aws-sdk-licensemanager'
  autoload :Lightsail, 'aws-sdk-lightsail'
  autoload :LocationService, 'aws-sdk-locationservice'
  autoload :LookoutEquipment, 'aws-sdk-lookoutequipment'
  autoload :LookoutMetrics, 'aws-sdk-lookoutmetrics'
  autoload :LookoutforVision, 'aws-sdk-lookoutforvision'
  autoload :MQ, 'aws-sdk-mq'
  autoload :MTurk, 'aws-sdk-mturk'
  autoload :MWAA, 'aws-sdk-mwaa'
  autoload :MachineLearning, 'aws-sdk-machinelearning'
  autoload :Macie, 'aws-sdk-macie'
  autoload :Macie2, 'aws-sdk-macie2'
  autoload :ManagedBlockchain, 'aws-sdk-managedblockchain'
  autoload :ManagedGrafana, 'aws-sdk-managedgrafana'
  autoload :MarketplaceCatalog, 'aws-sdk-marketplacecatalog'
  autoload :MarketplaceCommerceAnalytics, 'aws-sdk-marketplacecommerceanalytics'
  autoload :MarketplaceEntitlementService, 'aws-sdk-marketplaceentitlementservice'
  autoload :MarketplaceMetering, 'aws-sdk-marketplacemetering'
  autoload :MediaConnect, 'aws-sdk-mediaconnect'
  autoload :MediaConvert, 'aws-sdk-mediaconvert'
  autoload :MediaLive, 'aws-sdk-medialive'
  autoload :MediaPackage, 'aws-sdk-mediapackage'
  autoload :MediaPackageVod, 'aws-sdk-mediapackagevod'
  autoload :MediaStore, 'aws-sdk-mediastore'
  autoload :MediaStoreData, 'aws-sdk-mediastoredata'
  autoload :MediaTailor, 'aws-sdk-mediatailor'
  autoload :MemoryDB, 'aws-sdk-memorydb'
  autoload :Mgn, 'aws-sdk-mgn'
  autoload :MigrationHub, 'aws-sdk-migrationhub'
  autoload :MigrationHubConfig, 'aws-sdk-migrationhubconfig'
  autoload :MigrationHubRefactorSpaces, 'aws-sdk-migrationhubrefactorspaces'
  autoload :MigrationHubStrategyRecommendations, 'aws-sdk-migrationhubstrategyrecommendations'
  autoload :Mobile, 'aws-sdk-mobile'
  autoload :Neptune, 'aws-sdk-neptune'
  autoload :NetworkFirewall, 'aws-sdk-networkfirewall'
  autoload :NetworkManager, 'aws-sdk-networkmanager'
  autoload :NimbleStudio, 'aws-sdk-nimblestudio'
  autoload :OpenSearchService, 'aws-sdk-opensearchservice'
  autoload :OpsWorks, 'aws-sdk-opsworks'
  autoload :OpsWorksCM, 'aws-sdk-opsworkscm'
  autoload :Organizations, 'aws-sdk-organizations'
  autoload :Outposts, 'aws-sdk-outposts'
  autoload :PI, 'aws-sdk-pi'
  autoload :Panorama, 'aws-sdk-panorama'
  autoload :Personalize, 'aws-sdk-personalize'
  autoload :PersonalizeEvents, 'aws-sdk-personalizeevents'
  autoload :PersonalizeRuntime, 'aws-sdk-personalizeruntime'
  autoload :Pinpoint, 'aws-sdk-pinpoint'
  autoload :PinpointEmail, 'aws-sdk-pinpointemail'
  autoload :PinpointSMSVoice, 'aws-sdk-pinpointsmsvoice'
  autoload :Polly, 'aws-sdk-polly'
  autoload :Pricing, 'aws-sdk-pricing'
  autoload :PrometheusService, 'aws-sdk-prometheusservice'
  autoload :Proton, 'aws-sdk-proton'
  autoload :QLDB, 'aws-sdk-qldb'
  autoload :QLDBSession, 'aws-sdk-qldbsession'
  autoload :QuickSight, 'aws-sdk-quicksight'
  autoload :RAM, 'aws-sdk-ram'
  autoload :RDS, 'aws-sdk-rds'
  autoload :RDSDataService, 'aws-sdk-rdsdataservice'
  autoload :RecycleBin, 'aws-sdk-recyclebin'
  autoload :Redshift, 'aws-sdk-redshift'
  autoload :RedshiftDataAPIService, 'aws-sdk-redshiftdataapiservice'
  autoload :Rekognition, 'aws-sdk-rekognition'
  autoload :ResilienceHub, 'aws-sdk-resiliencehub'
  autoload :ResourceGroups, 'aws-sdk-resourcegroups'
  autoload :ResourceGroupsTaggingAPI, 'aws-sdk-resourcegroupstaggingapi'
  autoload :RoboMaker, 'aws-sdk-robomaker'
  autoload :Route53, 'aws-sdk-route53'
  autoload :Route53Domains, 'aws-sdk-route53domains'
  autoload :Route53RecoveryCluster, 'aws-sdk-route53recoverycluster'
  autoload :Route53RecoveryControlConfig, 'aws-sdk-route53recoverycontrolconfig'
  autoload :Route53RecoveryReadiness, 'aws-sdk-route53recoveryreadiness'
  autoload :Route53Resolver, 'aws-sdk-route53resolver'
  autoload :S3, 'aws-sdk-s3'
  autoload :S3Control, 'aws-sdk-s3control'
  autoload :S3Outposts, 'aws-sdk-s3outposts'
  autoload :SES, 'aws-sdk-ses'
  autoload :SESV2, 'aws-sdk-sesv2'
  autoload :SMS, 'aws-sdk-sms'
  autoload :SNS, 'aws-sdk-sns'
  autoload :SQS, 'aws-sdk-sqs'
  autoload :SSM, 'aws-sdk-ssm'
  autoload :SSMContacts, 'aws-sdk-ssmcontacts'
  autoload :SSMIncidents, 'aws-sdk-ssmincidents'
  autoload :SSO, 'aws-sdk-core'
  autoload :SSOAdmin, 'aws-sdk-ssoadmin'
  autoload :SSOOIDC, 'aws-sdk-ssooidc'
  autoload :STS, 'aws-sdk-core'
  autoload :SWF, 'aws-sdk-swf'
  autoload :SageMaker, 'aws-sdk-sagemaker'
  autoload :SageMakerFeatureStoreRuntime, 'aws-sdk-sagemakerfeaturestoreruntime'
  autoload :SageMakerRuntime, 'aws-sdk-sagemakerruntime'
  autoload :SagemakerEdgeManager, 'aws-sdk-sagemakeredgemanager'
  autoload :SavingsPlans, 'aws-sdk-savingsplans'
  autoload :Schemas, 'aws-sdk-schemas'
  autoload :SecretsManager, 'aws-sdk-secretsmanager'
  autoload :SecurityHub, 'aws-sdk-securityhub'
  autoload :ServerlessApplicationRepository, 'aws-sdk-serverlessapplicationrepository'
  autoload :ServiceCatalog, 'aws-sdk-servicecatalog'
  autoload :ServiceDiscovery, 'aws-sdk-servicediscovery'
  autoload :ServiceQuotas, 'aws-sdk-servicequotas'
  autoload :Shield, 'aws-sdk-shield'
  autoload :Signer, 'aws-sdk-signer'
  autoload :SimpleDB, 'aws-sdk-simpledb'
  autoload :SnowDeviceManagement, 'aws-sdk-snowdevicemanagement'
  autoload :Snowball, 'aws-sdk-snowball'
  autoload :States, 'aws-sdk-states'
  autoload :StorageGateway, 'aws-sdk-storagegateway'
  autoload :Support, 'aws-sdk-support'
  autoload :Synthetics, 'aws-sdk-synthetics'
  autoload :Textract, 'aws-sdk-textract'
  autoload :TimestreamQuery, 'aws-sdk-timestreamquery'
  autoload :TimestreamWrite, 'aws-sdk-timestreamwrite'
  autoload :TranscribeService, 'aws-sdk-transcribeservice'
  autoload :TranscribeStreamingService, 'aws-sdk-transcribestreamingservice'
  autoload :Transfer, 'aws-sdk-transfer'
  autoload :Translate, 'aws-sdk-translate'
  autoload :VoiceID, 'aws-sdk-voiceid'
  autoload :WAF, 'aws-sdk-waf'
  autoload :WAFRegional, 'aws-sdk-wafregional'
  autoload :WAFV2, 'aws-sdk-wafv2'
  autoload :WellArchitected, 'aws-sdk-wellarchitected'
  autoload :WorkDocs, 'aws-sdk-workdocs'
  autoload :WorkLink, 'aws-sdk-worklink'
  autoload :WorkMail, 'aws-sdk-workmail'
  autoload :WorkMailMessageFlow, 'aws-sdk-workmailmessageflow'
  autoload :WorkSpaces, 'aws-sdk-workspaces'
  autoload :XRay, 'aws-sdk-xray'
  # end service gems
end
