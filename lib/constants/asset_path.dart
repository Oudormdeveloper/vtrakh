String getIconPath(String fileName) {
  return iconAssetRoot + fileName;
}

String getImagePath(String fileName) {
  return imageAssetRoot + fileName;
}

final String imageAssetRoot = 'assets/images/';
final String iconAssetRoot = 'assets/icons/';

final String logo = getIconPath('logo.svg');
final String onBoard_1 = getImagePath('onBorad1.svg');
final String onBoard_2 = getImagePath('onBorad2.svg');
final String onBoard_3 = getImagePath('onBorad3.svg');
