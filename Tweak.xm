%hook WPScanRequest
-(void) setUpdateTime:(double)arg1 {
	return;
}

-(void) setActiveScanning:(bool)arg1 {
	arg1 = NO;
}

-(bool) activeScanning {
	return NO;
}
%end

%hook WPDeviceScanner
-(void) setActiveScans:(id)arg1 {
	return;
}
%end

%hook WPScanRequest
-(void) setScanWhenLocked:(bool)arg1 {
	arg1 = NO;
}
%end

%hook WPZoneTrackingRequest
-(void) setScanWhenScreenOff:(bool)arg1 {
	arg1 = NO;
}
%end

%hook WPHeySiri
-(void) startScanning {
	return;
}

-(void) setIsScanning:(bool)arg1 {
	return;
}
%end

%hook UAUserActivity
+(bool) userActivityContinuationSupported {
	return NO;
}
%end

%hook WPZoneTracker
-(void) getCurrentTrackedZones {
	return;
}
%end

%hook WPAdvertisingRequest
-(void) setUpdateTime:(double)arg1 {
	return;
}
%end

%hook WFClient
-(bool) isDiagnosticsModeEnabled {
	return NO;
}
%end

%hook WFSettingsController
-(void) setRecommendations:(id)arg1 {
	return;
}
%end

%hook WebGeolocation
-(void) setIsAllowed:(bool)arg1 {
	arg1 = NO;
}
%end

%hook UAUserActivity
-(void) scheduleSendUserActivityInfoToLSUserActivity {
	return;
}

-(void) tellDaemonAboutNewLSUserActivity {
	return;
}
%end

%hook UAUserActivityManager
-(bool) activityContinuationIsEnabled {
	return NO;
}
%end

%hook VMUTaskMemoryScanner
-(void) setExactScanningEnabled:(bool)arg1 {
	arg1 = NO;
}

-(bool) exactScanningEnabled {
	return NO;
}
%end

%hook SLGLogXPCClient
-(bool) isServerEnabled {
	return NO;
}
%end

%hook SUSoftwareUpdateAssetMatcher
-(bool) _isDeviceEligibleForUpdate:(id)arg1 {
	return NO;
}

-(bool) _isPossibleSoftwareUpdate:(id)arg1 {
	return NO;
}
%end

%hook SUScanOptions
-(bool) findsAnyUpdate {
	return NO;
}
%end

%hook SUManagerClient
-(void) installUpdate:(id)arg1 {
	return;
}

-(void) enableAutomaticUpdateV2:(bool)arg1 {
	arg1 = NO;
}

-(bool) isAutomaticUpdateV2Enabled {
	return NO;
}

-(void) isAutoUpdateEnabled:(id)arg1 {
	return;
}

-(void) resumeDownload:(id)arg1 {
	return;
}
%end

%hook SUPreferences
-(void) enableAutomaticUpdateV2:(bool)arg1 {
	arg1 = NO;
}

-(bool) isAutomaticUpdateV2Enabled {
	return NO;
}

-(bool) isAutoDownloadDisabled {
	return YES;
}

-(bool) isAutoSUDisabled {
	return YES;
}

-(bool) autoUpdateForceOff {
	return YES;
}

-(bool) autoUpdateForceOn {
	return NO;
}
%end

%hook SUBManager
-(void) startDownload:(id)arg1 {
	return;
}

-(void) setServerConnection:(id)arg1 {
	return;
}

-(void) scanForUpdates {
	return;
}
%end

%hook TSUPerformanceTest
-(void) run {
	return;
}
%end

%hook SiriCoreSiriBackgroundConnection
-(void) setSendPings:(bool)arg1 {
	arg1 = NO;
}

// -(bool) _usingNetwork {
// 	return NO;
// }
// %end

// %hook SXImageView
// -(void) loadHighQualityImage {
// 	return;
// }

// -(bool) prefersHighQuality {
// 	return NO;
// }

// -(void) setHighQualityImage:(id)arg1 {
// 	return;
// }
// %end

// %hook FxImage
// -(void) setIsPremultiplied:(bool)arg1 {
// 	arg1 = NO;
// }
// %end

// %hook PHPhotoLibrary
// -(bool) isFaceProcessingFinished {
// 	return YES;
// }
// %end

%hook ADLocationManager
-(bool) isLocationBasedAdsEnabled {
	return NO;
}

-(void) setIsLocationUpdating:(bool)arg1 {
	arg1 = NO;
}

-(bool) isLocationUpdating {
	return NO;
}
%end

%hook REDailyRoutineRelevanceProviderManager
-(void) _updateRoutines {
	return;
}

-(void) _prepareForUpdate {
	return;
}
%end

%hook RESharedLocationRelevanceProviderManager
-(void) _queue_loadLocation:(id)arg1 {
	return;
}
%end

%hook REAppUsagePredictor
-(void) update {
	return;
}
%end

%hook REPeriodOfDayPredictor
-(void) update {
	return;
}
%end

%hook REElementAction
-(void) setForceExecution:(bool)arg1 {
	arg1 = NO;
}
%end

%hook PMMAppsSettingsMonitor
-(void) setMagicalMomentsEnabled:(bool)arg1 {
	arg1 = NO;
}

-(bool) magicalMomentsEnabled {
	return NO;
}
%end

%hook PETEventTracker
-(void) enableTestingMode {
	return;
}

-(void) _checkInTestingMode {
	return;
}
%end

%hook PVThermalMonitor
-(bool) _disabledThermalTracking {
	return YES;
}
%end

%hook PVDeviceCharacteristics
+(bool) isLowMemDevice {
	return NO;
}
%end

%hook PLDetectedFace
-(void) awakeFromInsert {
	return;
}
%end

%hook PHAMonitoring
-(void) startMonitoringWithUpdateRate:(double)arg1 {
	return;
}
%end

%hook PHAManager
-(void) backgroundActivityDidBegin {
	return;
}
%end

%hook PBBProtoDiagnosticsEnabled
-(void) setEnabled:(bool)arg1 {
	arg1 = NO;
}
%end

%hook PPDiscoveryManager
-(void) setBluetoothIsScanning:(bool)arg1 {
	arg1 = NO;
}
%end

%hook FTCServiceContainer
-(void) setMonitor:(id)arg1 {
	return;
}
%end

%hook FBSSceneSnapshotAction
-(bool) snapshotRequestAllowSnapshot:(id)arg1 {
	return NO;
}
%end

%hook ADSession
-(void) setApplicationCanRecieveAds:(bool)arg1 {
	arg1 = NO;
}

-(bool) applicationCanRecieveAds {
	return NO;
}
%end

%hook ADPolicyEngine
-(void) setEnabled:(bool)arg1 {
	arg1 = NO;
}

-(void) setCanAutoEnable:(bool)arg1 {
	arg1 = NO;
}

-(void) enablePolicyEngine {
	return;
}
%end

%hook HTPrefs
-(bool) signpostMonitoringEnabled {
	return NO;
}

-(bool) fenceTrackingEnabled {
	return NO;
}

-(bool) hangtracerEnabled {
	return NO;
}
%end

%hook NSISEngine
+(void) setEnableEngineTrace:(bool)arg1 {
	arg1 = NO;
}

+(bool) enableEngineTrace {
	return NO;
}

-(bool) _UIKitEngineTrackingOn {
	return NO;
}

-(void) _setUIKitEngineTrackingOn:(bool)arg1 {
	arg1 = NO;
}
%end

// %hook EspressoFDOverfeatNetwork
// -(void) setUseGPUScaler:(bool)arg1 {
// 	arg1 = NO;
// }

// -(bool) useGPUScaler {
// 	return NO;
// }
// %end

%hook DSTestAutomation
-(void) setTestAutomationEnabled:(bool)arg1 {
	arg1 = NO;
}

-(bool) testAutomationEnabled {
	return NO;
}
%end

%hook AppleErrorReport
-(bool) isActionable {
	return NO;
}
%end

%hook CMMotionManager
-(void) setUseAccelerometer:(bool)arg1 {
	arg1 = NO;
}

-(void) startAmbientPressureUpdates {
	return;
}

-(void) startGyroUpdates {
	return;
}

-(void) startMagnetometerUpdates {
	return;
}

-(void) startDeviceMotionUpdates {
	return;
}
%end

%hook BKSAccelerometer
-(void) setAccelerometerEventsEnabled:(bool)arg1 {
	arg1 = NO;
}

-(void) setPassiveOrientationEvents:(bool)arg1 {
	arg1 = NO;
}
%end

// %hook ASIdentifierManager
// -(bool) isAdvertisingTrackingEnabled {
// 	return NO;
// }
// %end

// %hook LSApplicationRestrictionsManager
// -(bool) isAdTrackingEnabled {
// 	return NO;
// }
// %end

%hook CTCarrier
-(void) setAllowsVOIP:(bool)arg1 {
	arg1 = NO;
}

-(bool) allowsVOIP {
	return NO;
}
%end

%hook UAUserActivity
-(bool) isEligibleForPrediction {
	return NO;
}

-(bool) forceImmediateSendToServer {
	return NO;
}

-(void) setForceImmediateSendToServer:(bool)arg1 {
	arg1 = NO;
}

-(void) sendUserActivityInfoToLSUserActivity:(bool)arg1 onAsyncQueue:(bool)arg2 {
	arg1 = NO;
}
%end

// %hook SBClockApplicationIconImageView
// -(bool) isAnimationAllowed {
// 	return NO;
// }

// -(void) _setAnimating:(bool)arg1 {
// 	arg1 = NO;
// }

// -(void) updateAnimatingState {
// 	return;
// }

// -(void) updateUnanimated {
// 	return;
// }
// %end

%hook SBTelephonyManager
-(void) _updateNetworkLocale {
	return;
}

-(bool) updateLocale {
	return NO;
}
%end

%hook SBFolderBackgroundView
-(bool) _hasLowQualityBackground {
	return YES;
}
%end

%hook SBApplication
-(void) setUsesBackgroundNetwork:(bool)arg1 {
	arg1 = NO;
}

-(bool) usesBackgroundNetwork {
	return NO;
}

-(void) setWantsAutoLaunchForVOIP:(bool)arg1 {
	arg1 = NO;
}

-(void) _setLegacyVOIPPeriodicWakeScheduler:(id)arg1 {
	return;
}
%end

%hook SBApplicationInfo
-(bool) supportsLegacyVOIPBackgroundMode {
	return NO;
}
%end

%hook NDAnalyticsUploadScheduler
-(void) setBackgroundSession:(id)arg1 {
	return;
}

-(void) setUploadQueue:(id)arg1 {
	return;
}

-(void) setBackgroundSessionQueue:(id)arg1 {
	return;
}

-(void) setSchedulingAndForegroundUploadThrottler:(id)arg1 {
	return;
}
%end

%hook NDAnalyticsPayloadUploader
-(void) setUploadQueue:(id)arg1 {
	return;
}

-(void) setEnvelopeTracker:(id)arg1 {
	return;
}
%end

// %hook SBFWallpaperSettings
// -(void) setReplaceBlurs:(bool)arg1 {
// 	arg1 = NO;
// }
// %end

%hook WebAnimationDelegate
-(void) animationDidStart:(id)arg1 {
	return;
}
%end

%hook WebBackgroundTaskController
-(void) setBackgroundTaskStartBlock:(id)arg1 {
	return;
}
%end

// %hook NCNotificationOptions
// -(bool) prefersDarkAppearance {
// 	return YES;
// }
// %end

// %hook NCMutableNotificationOptions
// -(void) setPrefersDarkAppearance:(bool)arg1 {
// 	arg1 = YES;
// }
// %end

%hook STScrollView
-(bool) isBouncing {
	return NO;
}
%end

%hook ADLocationManager
-(void) setLocationManager:(id)arg1 {
	return;
}
%end

%hook ADAdTrackingSchedulingManager
-(bool) isAdEnabledLocality {
	return NO;
}
%end

%hook BGProcessingTaskRequest
-(void) setRequiresNetworkConnectivity:(bool)arg1 {
	arg1 = NO;
}
%end

%hook BGTaskScheduler
-(void) _setQueuedLaunchActivities:(id)arg1 {
	return;
}
%end

%hook UserTransparencyViewController
-(void) setUserTransparencyDetails:(id)arg1 {
	return;
}
%end

%hook TASettings
-(void) setTrackingAvoidanceEnabled:(bool)arg1 {
	arg1 = NO;
}
%end

// SCREEN FPS Speed ( Button ADD)
%hook UIScreen
-(double)_refreshRate {
	return 45;
}

-(long long)maximumFramesPerSecond {
	return 45;
}
%end

%hook UIApplicationSceneTransitionContext
-(void) setAllowCPUThrottling:(bool)arg1 {
	arg1 = YES;
}

-(bool) allowCPUThrottling {
	return YES;
}
%end

%hook BCBatteryDevice
-(bool) isBatterySaverModeActive {
	return YES;
}

-(void) setBatterySaverModeActive:(bool)arg1 {
	arg1 = YES;
}
%end

%hook UIDevice
-(void) setBatteryMonitoringEnabled:(bool)arg1 {
	arg1 = NO;
}
%end

%hook ADBackgroundTaskRequest
-(bool) taskCanContinueForTime:(id)arg1 {
	return NO;
}

-(void) setRequiresNetworkConnectivity:(bool)arg1 {
	arg1 = NO;
}

-(void) setIsCPUIntensive:(bool)arg1 {
	arg1 = NO;
}

-(bool) taskIsContinuing {
	return NO;
}

-(bool) isCPUIntensive {
	return NO;
}

-(bool) requiresNetworkConnectivity {
	return NO;
}
-(void) setActivity:(id)arg1 {
	return;
}
%end

%hook ADNetworkController
-(void) _checkForNetworkAndNotify {
	return;
}

-(void) setIsUpdating:(bool)arg1 {
	arg1 = NO;
}
%end

%hook DSIDRecord
-(bool) accountLimitAdTrackingEnabled {
	return NO;
}

-(bool) isRestrictedByApple {
	return YES;
}

-(bool) limitAdTrackingEnabled {
	return NO;
}
%end

%hook ADCoreSettings
-(void) setIsLATEnabled:(bool)arg1 {
	arg1 = YES;
}

-(bool) deviceLimitsAdTracking {
	return NO;
}

-(bool) isLATEnabled {
	return YES;
}

-(bool) isLATRestrictedByProfile {
	return NO;
}
%end

%hook WPDScanManager
-(void) setScanning:(bool)arg1 {
	arg1 = NO;
}

-(void) setScanningDisabled:(bool)arg1 {
	arg1 = YES;
}

-(void) setSpyScanClients:(id)arg1 {
	return;
}
%end

%hook WPDConnection
-(void) sendDataToCentral {
	return;
}
%end

%hook _UITableViewShadowUpdatesController
-(bool) hasShadowUpdates {
	return NO;
}
%end

%hook _UIShadowView
-(void) setUseLowerIntensity:(bool)arg1 {
	arg1 = NO;
}

-(bool) useLowerIntensity {
	return NO;
}
%end

%hook _ANEDaemonConnection
-(void) beginRealTimeTaskWithReply:(id)arg1 {
	return;
}
%end

%hook _ANEDeviceController
-(void) start {
	return;
}
%end

%hook BKSBacklightFeatures
-(bool) disableFeatures {
	return YES;
}

-(void) setDisableFeatures:(bool)arg1 {
	arg1 = YES;
}
%end

%hook BGTaskScheduler
-(void) _setScheduler:(id)arg1 {
	return;
}
%end

%hook BGTask
-(void) _setActivity:(id)arg1 {
	return;
}
%end

%hook CLLocationManager
+(bool) regionMonitoringAvailable {
	return NO;
}

+(bool) regionMonitoringEnabled {
	return NO;
}

+(bool) isRangingAvailable {
	return NO;
}

+(bool) mapCorrectionAvailable {
	return NO;
}

+(bool) deferredLocationUpdatesAvailable {
	return NO;
}
+(bool) isPeerRangingAvailable {
	return NO;
}

// +(bool) shutdownDaemon {
// 	return YES;
// }

-(void) setAllowsBackgroundLocationUpdates:(bool)arg1 {
	arg1 = NO;
}

-(void) startMonitoringForRegion:(id)arg1 {
	return;
}

-(void) startUpdatingHeading {
	return;
}

-(void) pauseLocationUpdates:(bool)arg1 {
	arg1 = YES;
}

-(void) resumeLocationUpdates {
	return;
}

-(void) startUpdatingLocationWithPrompt {
	return;
}

-(bool) isDynamicAccuracyReductionEnabled {
	return YES;
}
%end

%hook CLLocationManagerInternal
-(void) setAllowsBackgroundLocationUpdates:(bool)arg1 {
	arg1 = NO;
}

-(bool) allowsBackgroundLocationUpdates {
	return NO;
}
%end

%hook UIStatusBar
-(void) _setDisablesRasterization:(bool)arg1 {
	arg1 = YES;
}

-(bool) disablesRasterization {
	return YES;
}
%end

%hook UIStatusBar_Base
-(bool) disablesRasterization {
	return YES;
}

-(void) _setDisablesRasterization:(bool)arg1 {
	arg1 = YES;
}
%end

%hook _UIMotionAttitudeAnalyzer
-(void) _showIdleUI:(bool)arg1 {
	arg1 = NO;
}
%end

%hook _UIMotionEffectEngine
-(bool) _shouldGenerateUpdates {
	return NO;
}

-(bool) _hasMotionEffectsForView:(id)arg1 {
	return NO;
}
%end

%hook UIDevice
+(bool) _isLowEnd {
	return YES;
}
%end

%hook CBSUtilities
+(bool) isCheckerBoardActive {
	return NO;
}
%end

%hook FBSSceneTransitionContext
-(void) setAllowCPUThrottling:(bool)arg1 {
	arg1 = YES;
}

-(bool) allowCPUThrottling {
	return YES;
}
%end

%hook FBSDisplayMode
-(double)refreshRate {
	return 45;
}
%end

%hook WFClient
-(void) _updateDiagnosticsEnabled {
	return;
}
%end

%hook WFDiagnosticsTableViewController
-(void) _refresh {
	return;
}
%end

%hook WFInterface
-(void) setMonitoringEvents:(bool)arg1 {
	arg1 = NO;
}
%end

%hook WFScanManager
-(void) setScanInterval:(double)arg1 {
	arg1 = 86400;
}
%end

%hook FBSProcessExecutionProvision
-(bool) isMonitoring {
	return NO;
}
%end

%hook MTLToolsDevice
-(bool) isQuadDataSharingSupported {
	return NO;
}

-(bool) isPlacementHeapSupported {
	return NO;
}

-(bool) supportPriorityBand {
	return NO;
}

-(bool) metalAssertionsEnabled {
	return NO;
}

-(bool) areGPUAssertionsEnabled {
	return NO;
}

-(bool) supportsSparseTextures {
	return NO;
}

-(bool) supportsLayeredRendering {
	return NO;
}

-(bool) supportsVariableRateRasterization {
	return NO;
}

-(bool) supportsQuadReduction {
	return YES;
}

-(bool) isLowPower {
	return YES;
}

-(bool) hasUnifiedMemory {
	return YES;
}
%end

%hook TPSCellularNetworkController
-(bool) isNetworkSelectionEnabled {
	return YES;
}
%end

%hook SBSHomeScreenService
-(bool) isLowDensityIconLayoutEnabled {
	return YES;
}
%end

%hook NUPlatform
-(bool) hasHeadlessGPU {
	return YES;
}

-(bool) defaultSupportsLiveVideoRendering {
	return NO;
}

-(bool) supportsLiveVideoRendering {
	return NO;
}

-(bool) supportsAutomaticGraphicsSwitching {
	return YES;
}
%end

%hook NUDevice
-(bool) hasMetalSupport {
	return NO;
}
%end

%hook NURenderClient
-(bool) shouldCoalesceUpdates {
	return NO;
}
%end

%hook FBUIApplicationClientSettings
-(bool) allowCPUThrottlingWhenResuming {
	return YES;
}

-(void) setAllowCPUThrottlingWhenResuming:(bool)arg1 {
	arg1 = YES;
}
%end

%hook SpringBoard
-(bool) underMemoryPressure {
	return YES;
}
%end

%hook SBAssistantController
-(bool) supportedAndEnabled {
	return NO;
}
%end

%hook SBAnimationFactorySettings
-(void) setSlowAnimations:(bool)arg1 {
	arg1 = NO;
}
%end

%hook SBLowPowerAlertItem
-(void) _enableLowPowerMode {
	return;
}
%end

%hook SBTelephonyManager
-(bool) isUsingSlowDataConnection {
	return YES;
}
%end

%hook SBFolderBackgroundiew
-(bool) _hasLowQualityBackground {
	return YES;
}
%end

%hook SBLiquidDetectionManager
-(bool) isDetectionEnabled {
	return NO;
}

-(bool) isLiquidDetected {
	return YES;
}
%end

%hook SBPlatformConstroller
-(bool) isDeveloperDevice {
	return YES;
}
%end

%hook SBLockDownManager
+(bool) _isDeveloperDevice {
	return YES;
}
%end

%hook FBSApplicationInfo
-(bool) requiresPersistentWiFi {
	return NO;
}
%end
