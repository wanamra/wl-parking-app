import 'package:flutter/material.dart';
import 'package:ourcarmyplus/data/models/quick-box.dart';
import 'package:ourcarmyplus/widgets/a-text.dart';
import 'package:ourcarmyplus/widgets/effects/remove-scroll-effect.dart';

class HomePage extends StatelessWidget {
  final List<String> _images = [
    "assets/imgs/bg.png",
    "assets/imgs/bg2.png",
    "assets/imgs/bg3.png",
    "assets/imgs/bg.png",
    "assets/imgs/bg2.png",
    "assets/imgs/bg3.png",
  ];

  final List<String> _banners = [
    "assets/imgs/banner.png",
    "assets/imgs/banner2.png",
  ];

  final List<String> _promotions = [
    "assets/imgs/bg3.png",
    "assets/imgs/bg.png",
    "assets/imgs/bg2.png",
    "assets/imgs/bg3.png",
    "assets/imgs/bg.png",
    "assets/imgs/bg2.png",
  ];

  final List<QuickBox> _quickBox = [
    QuickBox(Icons.local_parking, "/parking"),
    QuickBox(Icons.payment, "/season-register"),
    QuickBox(Icons.history, "/payment/history"),
    QuickBox(Icons.settings, "/setting"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            header(context),
            quickLinks(context),
            moreFromUs(context),
            promotions(context),
          ],
        ),
      ),
    );
  }

  Widget header(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Theme.of(context).primaryColor,
            Colors.indigo.shade800,
          ],
        ),
      ),
      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AText("Parking Location", size: 12, color: Colors.white70),
                AText(
                  "Kluang Mall",
                  size: 18,
                  weight: FontWeight.w600,
                  color: Colors.white,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          Container(
            constraints: BoxConstraints(
              maxWidth: 40,
              maxHeight: 40,
            ),
            child: RawMaterialButton(
              elevation: 2,
              fillColor: Colors.transparent,
              child: Icon(Icons.search, size: 18, color: Colors.white),
              padding: EdgeInsets.all(10),
              shape: CircleBorder(),
              onPressed: () {},
            ),
          ),
          SizedBox(width: 10),
          Container(
            constraints: BoxConstraints(
              maxWidth: 40,
              maxHeight: 40,
            ),
            child: RawMaterialButton(
              elevation: 2,
              fillColor: Colors.transparent,
              child: Icon(Icons.person, size: 18, color: Colors.white),
              padding: EdgeInsets.all(10),
              shape: CircleBorder(),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  Widget quickLinks(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Theme.of(context).primaryColor,
            Colors.indigo.shade800,
          ],
        ),
      ),
      padding: EdgeInsets.fromLTRB(20, 10, 0, 20),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: 50),
        child: ScrollConfiguration(
          behavior: RemoveScrollEffect(),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: _quickBox.length,
            separatorBuilder: (_, index) => SizedBox(width: 10),
            itemBuilder: (_, index) {
              return SizedBox(
                width: 50,
                child: RawMaterialButton(
                  fillColor: Colors.white,
                  child: Icon(
                    _quickBox[index].icon,
                    size: 20,
                    color: Colors.indigo.shade800,
                  ),
                  padding: EdgeInsets.all(10),
                  onPressed: () =>
                      Navigator.of(context).pushNamed(_quickBox[index].route),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget dummyBox(double width, Color color) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  Widget moreFromUs(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AText(
            "More from us",
            size: 12,
            weight: FontWeight.w600,
            color: Colors.grey.shade800,
          ),
          SizedBox(height: 10),
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 140),
            child: ScrollConfiguration(
              behavior: RemoveScrollEffect(),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: _images.length,
                separatorBuilder: (_, index) => SizedBox(width: 10),
                itemBuilder: (_, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(_images[index]),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 20),
          AText(
            "Made for you",
            size: 12,
            weight: FontWeight.w600,
            color: Colors.grey.shade800,
          ),
          SizedBox(height: 10),
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 140),
            child: ScrollConfiguration(
              behavior: RemoveScrollEffect(),
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _banners.length,
                itemBuilder: (_, index) {
                  return Image.asset(
                    _banners[index],
                    width: MediaQuery.of(context).size.width - 40,
                    height: 100,
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget promotions(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme.of(context).primaryColor,
              Colors.indigo.shade800,
            ]),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AText(
            "Amazing promotions",
            size: 12,
            weight: FontWeight.w600,
            color: Colors.white,
          ),
          SizedBox(height: 10),
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 140),
            child: ScrollConfiguration(
              behavior: RemoveScrollEffect(),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: _promotions.length,
                separatorBuilder: (_, index) => SizedBox(width: 10),
                itemBuilder: (_, index) => ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(_promotions[index]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
