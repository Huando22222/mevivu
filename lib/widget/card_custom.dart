import 'package:flutter/material.dart';
import 'package:mevivu/card_detail_screen.dart';

class CardCustom extends StatelessWidget {
  final String url;
  final VoidCallback? onTap;
  const CardCustom({
    super.key,
    required this.url,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ??
          () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CardDetailScreen(),
            ));
          },
      child: SizedBox(
        width: 200,
        height: 300,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: AspectRatio(
            aspectRatio: 3 / 4,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Stack(
                children: [
                  Image.network(
                    url,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.transparent.withOpacity(0.2),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Icon(Icons.location_on_outlined),
                            Text("18km"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 10,
                    bottom: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dreamsville House",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "JL. Sultan Isakandar Muda ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
