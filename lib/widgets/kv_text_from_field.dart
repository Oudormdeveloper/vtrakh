import 'package:vtrakh/core.dart';

class KVTextFormField extends StatelessWidget {
  const KVTextFormField({
    Key? key,
    this.hitText,
    this.label,
  }) : super(key: key);
  final String? hitText;
  final String? label;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        KVLabel(
          text: '$label',
        ),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: '$hitText',
          ),
        ),
        VericalSpacing(),
      ],
    );
  }
}
