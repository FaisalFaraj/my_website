class ServicesUtils {
  final String name;
  final String icon;
  final List<String> tool;
  final String description;

  ServicesUtils(
      {required this.name,
      required this.icon,
      required this.description,
      required this.tool});
}

List<ServicesUtils> servicesUtils = [
  ServicesUtils(
    name: 'Android App Development',
    icon: 'https://i.ibb.co/BG0Ps7x/android.png',
    description:
        "Are you interested in the great Mobile app? Let's make it a reality.",
    tool: ['Flutter', 'java', 'kotlin'], //'Android (Kotlin or Java)'
  ),
  ServicesUtils(
    name: 'iOS App Development',
    icon: 'https://i.ibb.co/4fp8hrh/apple.png',
    description:
        "Are you interested in the great Mobile app? Let's make it a reality.",
    tool: ['Flutter'],
  ),

  ServicesUtils(
    name: 'Desktop App Development',
    icon: 'https://i.ibb.co/TwFRBCK/windows.png',
    description:
        "Are you interested in the great Desktop app? Let's make it a reality.",
    tool: ['Python', 'Flutter'],
  ),

  ServicesUtils(
    name: 'Automation scripts (web scrapping,etc)',
    icon: 'https://i.ibb.co/NLn3hQq/automation.png',
    description:
        "Are you interested in the great automation technology? Let's make it a reality.",
    tool: ['Python'],
  ),
  ServicesUtils(
    name: 'UI/UX Designing',
    icon: 'https://i.ibb.co/SQtmf55/graphic.png',
    description:
        "I'm creating elegant designs suited to your needs following core design theory. ",
    tool: ['Figma'],
  ),
  // ServicesUtils(
  //   name: 'Web Development',
  //   icon: 'assets/icons/website.svg',
  //   description:
  //       "Do you have an idea for your next great website? Let's make it a reality.",
  //   tool: ['Flutter', 'Html,css,js', 'Android (Kotlin or Java)'],
  // ),
];
