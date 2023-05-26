class ProjectUtils {
  final String banners;
  final String icons;
  final String titles;
  final String description;
  final String links;
  ProjectUtils({
    required this.banners,
    required this.icons,
    required this.titles,
    required this.description,
    required this.links,
  });
}

List<ProjectUtils> projectUtils = [
  ProjectUtils(
    banners: 'https://i.ibb.co/JvwJHYj/5.png',
    icons: 'https://i.ibb.co/ccPYXrc/flutter.png',
    titles: 'Saheem',
    description:
        'Saheem application and site seeks to establish charitable campaigns, to be digital gateway for charitable campaigns',
    links: 'https://lavander-footprint.web.app',
  ),
  ProjectUtils(
    banners: 'https://i.ibb.co/zVC3Pf1/4.png',
    icons: 'https://i.ibb.co/ccPYXrc/flutter.png',
    titles: 'My Portfolio',
    description: 'Modern Portfolio with Responsive Design',
    links: 'https://github.com/FaisalFaraj/My-Portfolio',
  ),
  ProjectUtils(
    banners: 'https://i.ibb.co/Nx7XJvC/1.png',
    icons: 'https://i.ibb.co/ccPYXrc/flutter.png',
    titles: 'Movie App',
    description:
        'Amazing modren movie App developed using flutter, source code is also available, check below.',
    links: 'https://github.com/FaisalFaraj/MovieAppFlutter',
  ),
  //<a target="_blank" href="https://icons8.com/icon/13441/python">Python</a> icon by <a target="_blank" href="https://icons8.com">Icons8</a>
  ProjectUtils(
    banners: 'https://i.ibb.co/BNPHvCd/2.png',
    icons: 'https://i.ibb.co/k3ctxg1/python.png',
    titles: 'Advanced POS(Face Recognition & QRcode system)',
    description:
        'Point-Of-Sales system using Python, creating a GUI using Tkinter that allowed to manage inventory & staff,enhanced security & accessibility features with QRCode Menu & face recognition systems.  (To purchase contact)',
    links: '',
  ),
  ProjectUtils(
    banners: 'https://i.ibb.co/w07JFVr/3.png',
    icons: 'https://i.ibb.co/k3ctxg1/python.png',
    titles: 'Launcher - School Exam System,Screen Share,Telegram Bot',
    description:
        "An application to take exams, share the teacher's screen, and record attendance all without the Internet, using flask (localhost) with Telegram Bot for messaging  and Screen Recorder using ffmpeg. (To purchase contact)",
    links: '',
  ),
];
