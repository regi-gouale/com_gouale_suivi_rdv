import 'package:flutter/material.dart';
import 'package:iger/models/talk_model.dart';
import 'package:iger/screens/edit_talk_screen.dart';

class TalkResumeWidget extends StatelessWidget {
  final TalkModel talk;
  const TalkResumeWidget({
    super.key,
    required this.talk,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => EditTalkScreen(
                talk: talk,
              ),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: SizedBox(
          height: 120,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      talk.title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      talk.description,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    Text(
                      talk.dateTime.toLocal().toString().split(" ")[0],
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
