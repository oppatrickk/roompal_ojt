import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';

class PopUpTemporary extends StatelessWidget {
  const PopUpTemporary({super.key});
  static const String id = 'PopUpTemporary';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return DialogButton();
                  },
                );
              },
              child: Text('Sample 1'),
            ),
            ksizedBoxTextFieldCol,
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return CustomDialogButton();
                  },
                );
              },
              child: Text('Sample 2'),
            ),
          ],
        ),
      ),
    );
  }
}

class DialogButton extends StatelessWidget {
  const DialogButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Alert'),
      content: Text('something something'),
      actions: <Widget>[
        TextButton(onPressed: () {}, child: Text('Okay')),
        TextButton(onPressed: () {}, child: Text('Cancel')),
      ],
    );
  }
}

class CustomDialogButton extends StatelessWidget {
  const CustomDialogButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Container(
        height: 200,
        child: Column(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(4),
                  topLeft: Radius.circular(4),
                ),
                color: Color(0xFF1C39BB),
              ),
              padding: const EdgeInsets.all(12),
              height: 50,
              child: const SizedBox.expand(
                child: const Text(
                  'Property Listing',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ksizedBoxTextFieldCol,
            Container(
              padding: EdgeInsets.all(20),
              child: const Text(
                'Submit your Listing?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
            ksizedBoxTextFieldCol,
            const Divider(
              indent: 20,
              endIndent: 20,
              thickness: 1,
              color: Color(0xFFF1F1F1),
            ),
          ],
        ),
      ),
    );
  }
}