import 'dart:io';

String getPlatform() {
  if (Platform.isAndroid) return 'Android';
  if (Platform.isIOS) return 'iOS';
  return 'Other'; // Fallback for other platforms
}
