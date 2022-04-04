import 'package:flutter/material.dart';
import 'package:ourcarmyplus/data/models/inbox-data.dart';
import 'package:ourcarmyplus/widgets/a-text.dart';
import 'package:ourcarmyplus/widgets/effects/remove-scroll-effect.dart';

class InboxPage extends StatelessWidget {
  final List<InboxData> _inboxes = [
    InboxData(
      "JBCC Promotions",
      "lorem ipsum dolor asdsajkdhkjsadq wenqwb qwkjeqwbasjdgqjd",
      "26 Jul",
      false,
    ),
    InboxData(
      "Announcement",
      "lorem ipsum dolor asdsajkdhkjsadq wenqwb qwkjeqwbasjdgqjd",
      "26 Jul",
      false,
    ),
    InboxData(
      "No More Service Charge",
      "lorem ipsum dolor asdsajkdhkjsadq wenqwb qwkjeqwbasjdgqjd",
      "26 Jul",
      true,
    ),
    InboxData(
      "New PKP 2.0 SOP",
      "lorem ipsum dolor asdsajkdhkjsadq wenqwb qwkjeqwbasjdgqjd",
      "26 Jul",
      true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inbox'),
      ),
      body: ScrollConfiguration(
        behavior: RemoveScrollEffect(),
        child: ListView.builder(
          itemCount: _inboxes.length,
          itemBuilder: (_, index) => itemInbox(_, _inboxes[index]),
        ),
      ),
    );
  }

  Widget itemInbox(BuildContext context, InboxData inboxData) {
    return ListTile(
      leading: inboxData.isRead
          ? SizedBox()
          : Icon(
              Icons.star,
              color: Theme.of(context).primaryColor,
            ),
      title: Text(inboxData.title),
      subtitle: AText(
        inboxData.subtitle,
        textAlign: TextAlign.left,
        color: Colors.grey.shade500,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: AText(inboxData.date, size: 12),
    );
  }
}
