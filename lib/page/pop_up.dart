import 'package:cupertino_datepicker_example/utils.dart';
import 'package:cupertino_datepicker_example/widget/button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class popUpSurface extends StatelessWidget {
  const popUpSurface({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPopupSurface(
      child: Center(
        child: Wrap(
          children: <Widget>[
            Center(child: Text("This is Cupertino Surface !")),
            Center(
              child: CupertinoActivityIndicator(
                radius: 10,
                animating: true,
              ),
            ),
            CupertinoDialogAction(
              child: Text("Dismiss"),
              isDefaultAction: true,
              onPressed: () =>
                  Navigator.pop(context), //To dismiss or to close the pop up
            ),
          ],
        ),
      ),
      isSurfacePainted: true,
    ).build(context);
  }
}
