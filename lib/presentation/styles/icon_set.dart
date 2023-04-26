part of 'theme.dart';

class IconSet {
  final String logo;
  final String appleLogo;
  final String facebookLogo;
  final String googleLogo;
  final String camera;
  final String twitter;


  IconSet._(  {
    required this.twitter,
    required this.logo,
    required this.appleLogo, required this.facebookLogo, required this.googleLogo,
    required this.camera
  });

  static IconSet get create {
    return IconSet._(
      twitter: 'assets/svgs/twitter.svg',
      logo: 'assets/svgs/logo.svg',
      appleLogo: 'assets/svgs/apple_logo.svg',
      facebookLogo:  'assets/svgs/facebook.svg',
      googleLogo:  'assets/svgs/google.svg',
      camera: 'assets/svgs/camera.svg'
    );
  }
}
