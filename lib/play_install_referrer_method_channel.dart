import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'play_install_referrer_platform_interface.dart';

/// An implementation of [PlayInstallReferrerPlatform] that uses method channels.
class MethodChannelPlayInstallReferrer extends PlayInstallReferrerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('play_install_referrer');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
