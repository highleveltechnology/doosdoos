enum Routes {
  splash(path: '/splash', name: 'Splash'),
  getStartOneScreen(path: '/getstartone', name: 'GetStartOne'),
  getStartTwoScreen(path: '/getstarttwo', name: 'GetStartTwo');

  final String path;
  final String name;
  const Routes({required this.path, required this.name});
}
