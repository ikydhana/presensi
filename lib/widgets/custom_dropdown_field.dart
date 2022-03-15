part of 'widgets.dart';

// ignore: must_be_immutable
class CustomDropdownField extends StatelessWidget {
  final String errorValidation;
  final Function(String) onChanged;

  CustomDropdownField({required this.errorValidation, required this.onChanged});

  List<String> permits = ["Sakit", "Izin", "Alfa"];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Jenis Izin",
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
        DropdownButtonFormField(
          hint: Text(
            "Pilih Jenis Izin",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey,
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
          ),
          items: permits.map((String permit) {
            return DropdownMenuItem(
              child: Text(
                permit,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              value: permit,
            );
          }).toList(),
          onChanged: null,
        ),
      ],
    );
  }
}