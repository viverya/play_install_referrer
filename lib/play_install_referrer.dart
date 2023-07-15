
import 'play_install_referrer_platform_interface.dart';

class PlayInstallReferrer {
  Future<String?> getPlatformVersion() {
    return PlayInstallReferrerPlatform.instance.getPlatformVersion();
  }
}
