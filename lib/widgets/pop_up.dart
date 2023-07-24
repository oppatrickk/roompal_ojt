import 'package:flutter/material.dart';

class PopUpTemporary extends StatelessWidget {
  const PopUpTemporary({super.key});
  static const String id = 'PopUpTemporary';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            DialogSample(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Container(
                        padding: EdgeInsets.all(16),
                        height: 90,
                        decoration: BoxDecoration(
                          color: Color(0xFF1C39BB),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: const Row(
                          children: <Widget>[
                            SizedBox(
                              width: 48,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Text>[
                                  Text(
                                    'Success!',
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Your Listing has been added!',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ),
                  );
                },
                child: const Text('trial'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DialogSample extends StatelessWidget {
  const DialogSample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          backgroundColor: Color(0xFF1C39BB),
          elevation: 0,
          icon: Icon(
            Icons.check_circle_rounded,
            size: 120,
            color: Colors.greenAccent,
          ),
          title: Container(
            padding: EdgeInsets.all(16),
            height: 90,
            color: Colors.white,
            child: const Text(
              'Your Listing has been Added!',
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      child: const Text(
        'Success',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
