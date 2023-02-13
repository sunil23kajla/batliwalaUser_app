import 'package:batlivalauser/Login_page.dart';
import 'package:flutter/material.dart';

showLogoutDialog(BuildContext context) {
  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          content: Container(
            height: 200,
            child: Column(
              children: <Widget>[
                const Text('Are you sure you want to logout?',
                    style: TextStyle(fontSize: 20)),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RaisedButton(
                        color: Colors.black,
                        child: const Text(
                          'Logout',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () async {
                          // await sp!.clearImportantKeys();
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Loginfile())),
                              (route) => false);
                          // logoutApi();
                        }),
                    RaisedButton(
                      child: const Text('Cancel'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        );
      });
}