import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'play_install_referrer_method_channel.dart';

abstract class PlayInstallReferrerPlatform extends PlatformInterface {
  /// Constructs a PlayInstallReferrerPlatform.
  PlayInstallReferrerPlatform() : super(token: _token);

  static final Object _token = Object();

  static PlayInstallReferrerPlatform _instance = MethodChannelPlayInstallReferrer();

  /// The default instance of [PlayInstallReferrerPlatform] to use.
  ///
  /// Defaults to [MethodChannelPlayInstallReferrer].
  static PlayInstallReferrerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PlayInstallReferrerPlatform] when
  /// they register themselves.
  static set instance(PlayInstallReferrerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
