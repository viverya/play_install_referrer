import 'package:flutter_test/flutter_test.dart';
import 'package:play_install_referrer/play_install_referrer.dart';
import 'package:play_install_referrer/play_install_referrer_platform_interface.dart';
import 'package:play_install_referrer/play_install_referrer_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPlayInstallReferrerPlatform
    with MockPlatformInterfaceMixin
    implements PlayInstallReferrerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PlayInstallReferrerPlatform initialPlatform = PlayInstallReferrerPlatform.instance;

  test('$MethodChannelPlayInstallReferrer is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPlayInstallReferrer>());
  });

  test('getPlatformVersion', () async {
    PlayInstallReferrer playInstallReferrerPlugin = PlayInstallReferrer();
    MockPlayInstallReferrerPlatform fakePlatform = MockPlayInstallReferrerPlatform();
    PlayInstallReferrerPlatform.instance = fakePlatform;

    expect(await playInstallReferrerPlugin.getPlatformVersion(), '42');
  });
}
