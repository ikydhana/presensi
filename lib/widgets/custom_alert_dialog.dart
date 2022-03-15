part of 'widgets.dart';

class CustomAlertDialog extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  CustomAlertDialog({required this.title, required this.description, required this.imagePath});
  
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 25,
      ),
      content: Container(
        height: 290,
        child: Column(
          children: [
            Container(
              height: 120,
              margin: EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                ),
              ),
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Spacer(
              flex: 1,
            ),
            Container(
              width: 222,
              height: 40,
              child: FlatButton(
                color: Color.fromARGB(10, 15, 22, 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  "Baiklah",
                  style: TextStyle(fontWeight: FontWeight.bold)
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}