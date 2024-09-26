class ImageAssets {
  ImageAssets._();

  static String _imageAssets(String namefile) {
    return "assets/images/$namefile";
  }

  static String logo = _imageAssets("logo.png");
}
