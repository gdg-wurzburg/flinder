import 'package:flinder/res/dimensions.dart';
import 'package:flinder/res/style.dart';
import 'package:flinder/res/styled_widgets.dart';
import 'package:flutter/material.dart';

class AddNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context)
          .copyWith(appBarTheme: FullscreenDialogAppBarTheme()),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.close),
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: () {},
              child: Text(
                "SAVE",
                style: Theme.of(context).textTheme.button,
              ),
            )
          ],
          centerTitle: true,
          title: Text("Add new entry"),
          elevation: 0.0,
        ),
        body: Padding(
          padding: EdgeInsets.all(Dimensions.linePadding),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                InputText(
                  labelText: "Title",
                ),
                SizedBox(
                  height: Dimensions.linePadding,
                ),
                InputText.multiLine(
                  labelText: "Description",
                ),
                SizedBox(
                  height: Dimensions.linePadding,
                ),
                InputText(
                  labelText: "Location name",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
