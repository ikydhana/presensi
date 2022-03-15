part of 'widgets.dart';

class CustomFilePicker extends StatelessWidget {
  final String hintText;
  final Color hintColor;
  final Function onTap;

  CustomFilePicker({required this.hintText, required this.hintColor, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Lampirkan File",
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
              // onTap: onTap,
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
                  children: [
                    FaIcon(
                      FontAwesomeIcons.solidFile,
                      color: (hintText == "Pilih File") ? Color(0xFFC6C6C6) : Colors.grey,
                      size: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      hintText,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    FaIcon(
                      (hintText == "Pilih File") ? FontAwesomeIcons.plusCircle : FontAwesomeIcons.solidWindowClose,
                      color: (hintText == "Pilih File") ? Color(0xFFC6C6C6) : Colors.grey,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          "Jenis File Yang Dibolehkan: pdf, png, jpg, docs",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}