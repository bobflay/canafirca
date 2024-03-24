import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';

void showSuccessDialog(BuildContext context,title,body,Function? callback) {
{
    // iOS-specific code
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(body),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
                if(callback!=null)
                  {
                    callback();
                  }
              },
            ),
          ],
        );
      },
    );
  }
}
