import 'package:flutter/material.dart';
import 'package:roompal_ojt/pages/room_details.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';

//Button that needs an icon and label (used in edit/delete buttons)
class ActionButtons extends StatelessWidget {
  const ActionButtons(
    this.color,
    this.icon,
    this.label,
    this.onPressed, {
    super.key,
  });
  final Color color;
  final IconData icon;
  final String label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 70,
      child: FloatingActionButton.extended(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: color,
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        backgroundColor: Colors.white,
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: color,
          size: 20,
        ),
        label: Text(
          label,
          style: TextStyle(
            color: color,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}

//Card layout used in displaying property count details
class PropertyCount extends StatelessWidget {
  PropertyCount(
    this.title,
    this.count, {
    super.key,
  });
  final String title;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Colors.white,
      shape: border,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ksizedBoxTextFieldCol,
          Text(
            title,
            style: const TextStyle(
              fontSize: 10,
              fontFamily: 'ProximaNovaAltBold',
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            count,
            style: const TextStyle(
              fontSize: 40,
              color: Color(0xFF1C39BB),
              fontFamily: 'ProximaNovaAltBold',
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

//Style for segmented control (text)
class BuildSegment extends StatelessWidget {
  const BuildSegment(
    this.text, {
    super.key,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    );
  }
}

//Style for segmented control (icons)
class BuildSegment1 extends StatelessWidget {
  const BuildSegment1(
    this.icon, {
    super.key,
  });
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      child: Icon(
        icon,
        size: 24,
      ),
    );
  }
}

//review card

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      surfaceTintColor: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Colors.grey,
                  backgroundImage: null,
                ),
                ksizedBoxTextFieldRow,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Text>[
                    Text(
                      'Cardo on Ahking Room',
                      style: kReviewTitle,
                    ),
                    Text(
                      'July 5, 2023 | 10:23 AM',
                      style: kReviewSmallSubtitle,
                    ),
                  ],
                ),
                ksizedBoxTextFieldRow,
                Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.star, size: 10, color: Colors.orangeAccent),
                      Icon(Icons.star, size: 10, color: Colors.orangeAccent),
                      Icon(Icons.star, size: 10, color: Colors.orangeAccent),
                      Icon(Icons.star, size: 10, color: Colors.orangeAccent),
                      Icon(Icons.star, size: 10, color: Colors.orangeAccent),
                      Text('Excellent', style: TextStyle(color: Colors.green, fontSize: 8.0)),
                      Icon(Icons.check_circle_outline, color: Colors.green, size: 8.0),
                    ],
                  ),
                ),
              ],
            ),
            ksizedBoxTextFieldCol,
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
              style: kReviewText,
              textAlign: TextAlign.justify,
            ),
            ksizedBoxTextFieldCol,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Icon(Icons.favorite_border_outlined, size: 15, color: Colors.grey),
                ksizedBoxTextFieldRow,
                IconWithTextDisplay(Icons.reply, 'Reply', Colors.grey),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
