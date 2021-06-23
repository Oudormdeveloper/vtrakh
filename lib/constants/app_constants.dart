import 'package:vtrakh/core.dart';

class VericalSpacing extends StatelessWidget {
  const VericalSpacing({
    Key? key,
    this.of = 20,
  }) : super(key: key);
  final double? of;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: of,
    );
  }
}
