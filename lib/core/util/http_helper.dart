class HttpHelper {
  const HttpHelper._();
  static String clean_drive_link(String link) {
    String id = link.substring(link.indexOf('/d/') + 3, link.indexOf('/view'));

    String new_link = 'https://drive.google.com/uc?export=view&id=$id';

//https://drive.google.com/uc?export=download&id=
    return new_link;
  }
}
