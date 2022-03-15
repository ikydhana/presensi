part of 'widgets.dart';

class CustomDatePicker extends StatelessWidget {
  final String labelText;
  final String hintText;
  final String errorValidation;
  final Color hintColor;
  final Color iconColor;
  final Function onTap;

  CustomDatePicker({required this.labelText, required this.hintText, required this.errorValidation, required this.hintColor, required this.iconColor, required this.onTap});

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
              style: TextStyle(fontWeight: FontWeight.bold),
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
        Material(
          borderRadius: BorderRadius.circular(8),
          child: Ink(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(8),
            ),
            child: InkWell(
              child: Container(
                width: 10,
                padding: EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 12.5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      hintText,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    FaIcon(
                      FontAwesomeIcons.solidCalendar,
                      color: iconColor,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}