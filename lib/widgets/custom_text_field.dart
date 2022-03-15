part of 'widgets.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final Function onChanged;
  final TextInputType keyboardType;
  final bool obscureText;
  final Widget suffixIcon;
  final String errorValidation;
  final int maxLines;

  CustomTextField({
    required this.labelText,
    required this.hintText,
    required this.controller,
    required this.onChanged,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    required this.suffixIcon,
    required this.errorValidation,
    required this.maxLines,
  });

  get semiBlackFont => null;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              labelText,
              style: semiBlackFont.copyWith(fontSize: 16),
            ),
            if (errorValidation != null) Text(
              errorValidation,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        TextField(
          obscureText: obscureText,
          controller: controller,
          keyboardType: keyboardType,
          style: TextStyle(fontWeight: FontWeight.bold),
          maxLines: (maxLines != null) ? maxLines : 1,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey,
            hintText: hintText,
            hintStyle: TextStyle(fontWeight: FontWeight.bold),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 12.5,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                style: BorderStyle.none,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                style: BorderStyle.none,
              ),
            ),
            suffixIcon: suffixIcon,
          ),
        ),
      ],
    );
  }
}