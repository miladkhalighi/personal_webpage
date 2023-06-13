// ignore_for_file: public_member_api_docs, sort_constructors_first
class Service {
  final String imgPath;
  final String name;
  final String content;
  Service({
    required this.imgPath,
    required this.name,
    required this.content,
  });
}

List<Service> myServices = [
  Service(
    imgPath: 'assets/images/github.svg',
    name: 'iOS development',
    content:
        'strive to create visually impact designs that effectively communicate ,messages & meet their unique needs.',
  ),
    Service(
    imgPath: 'assets/images/instagram.svg',
    name: 'Android development',
    content:
        'strive to create visually impact designs that effectively communicate ,messages & meet their unique needs.',
  ),
    Service(
    imgPath: 'assets/images/linkedin.svg',
    name: 'Flutter development',
    content:
        'strive to create visually impact designs that effectively communicate ,messages & meet their unique needs.',
  ),
    Service(
    imgPath: 'assets/images/github.svg',
    name: 'web development',
    content:
        'strive to create visually impact designs that effectively communicate ,messages & meet their unique needs.',
  ),
];
