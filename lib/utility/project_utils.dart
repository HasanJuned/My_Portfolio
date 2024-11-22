class ProjectDetails {
  final String image;
  final String title;
  final String subtitle;
  final String? gitLink;

  ProjectDetails({
    required this.image,
    required this.title,
    required this.subtitle,
    this.gitLink,
  });
}


List<ProjectDetails> projects = [
  ProjectDetails(
    image: 'assets/projects/project 1.jpeg',
    title: 'My Campus',
    subtitle: "A management app for students and faculty built with Flutter and Node.js, includes Authentication, Course updates sharing, andAdmin functionalities.",
    gitLink: 'https://github.com/HasanJuned/My_Campus',
  ),
  ProjectDetails(
    image: 'assets/projects/project 2.jpeg',
    title: 'Crafty Bay',
    subtitle: 'This is an E-Commerce app',
  ),
  ProjectDetails(
    image: 'assets/projects/project 1.jpeg',
    title: 'My Campus (Backend)',
    subtitle: "A management app for students and faculty built with Flutter and Node.js, includes Authentication, Course updates sharing, andAdmin functionalities.",
    gitLink: 'https://github.com/HasanJuned/MyCampus-Backend',
  ),
];