
class SizeConfig {
  static const double desktop = 1068;
  static const double tablet = 768;

  // static late double width,height;             |
  //                                              |
  //  static init(BuildContext context){       //?|   //? If you will build ui for web don't use this
  //   width = MediaQuery.sizeOf(context).width;  |
  //   height = MediaQuery.sizeOf(context).height;|
  // }
}