class HttpHelper {
  const HttpHelper._();
  static String clean_drive_link(String link) {
    String fileId =
        link.substring(link.indexOf('/d/') + 3, link.indexOf('/view'));

    String new_link = 'https://drive.google.com/uc?export=download&id=$fileId';

//https://drive.google.com/file/d/$fileId/view
//https://drive.google.com/uc?export=view&id=
//https://drive.google.com/uc?export=download&id=
    return new_link;
  }
}
