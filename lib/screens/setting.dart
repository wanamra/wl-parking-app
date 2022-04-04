import 'package:flutter/material.dart';
import 'package:ourcarmyplus/data/models/route-setting.dart';
import 'package:ourcarmyplus/widgets/effects/remove-scroll-effect.dart';

class SettingPage extends StatelessWidget {
  final List<RouteSetting> _menu = [
    RouteSetting("Parking Availability", Icons.local_parking, "/"),
    RouteSetting("Payment History", Icons.card_travel_outlined, "/"),
    RouteSetting("Inbox", Icons.mail_outline, "/"),
    RouteSetting("About Us", Icons.info_outline, "/"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ScrollConfiguration(
        behavior: RemoveScrollEffect(),
        child: ListView.separated(
          itemCount: _menu.length,
          separatorBuilder: (_, index) => SizedBox(height: 10),
          itemBuilder: (_, index) => itemSetting(_, _menu[index]),
        ),
      ),
    );
  }

  Widget itemSetting(BuildContext context, RouteSetting routeSetting) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey.shade200,
        child:
            Icon(routeSetting.iconData, color: Theme.of(context).primaryColor),
      ),
      title: Text(routeSetting.label),
      trailing: Icon(Icons.chevron_right),
    );
  }
}
