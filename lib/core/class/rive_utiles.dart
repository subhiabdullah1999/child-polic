import 'package:rive/rive.dart' as rive;

class RiveAssets {
  final String artboard, stateMachine, title, src;
  late rive.SMIBool? input;

  RiveAssets(this.src,
      {required this.artboard,
      required this.stateMachine,
      required this.title,
      this.input});
  set setInput(rive.SMIBool status) {
    input = status;
  }
}
