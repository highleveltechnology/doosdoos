enum Routes {
  splash(path: '/splash', name: 'Splash'),
  getStartOneScreen(path: '/getstartone', name: 'GetStartOne'),
  getStartTwoScreen(path: '/getstarttwo', name: 'GetStartTwo'),
  signUpScreen(path: "/SignUpScreen", name: "SignUpScreen"),
  signInScreen(path: "/SignInScreen", name: "SignInScreen"),
  forgetPassword(path: "/forgetPassword", name: "/ForgetPassword"),
  OtpScreen(path: "/OtpScreen", name: "OtpScreen"),
  createNewPassword(path: "/CreateNewPassword", name: "/CreateNewPassword");

  final String path;
  final String name;
  const Routes({required this.path, required this.name});
}
