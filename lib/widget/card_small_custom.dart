import 'package:flutter/material.dart';
import 'package:mevivu/card_detail_screen.dart';

class CardSmallCustom extends StatelessWidget {
  final String url;
  final String room;
  final String price;
  final int bedroom;
  final int bathroom;
  final VoidCallback? onTap;
  const CardSmallCustom({
    super.key,
    required this.url,
    required this.price,
    required this.bedroom,
    required this.bathroom,
    required this.room,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap ??
            () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CardDetailScreen(),
              ));
            },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 50,
                maxWidth: 100,
                minHeight: 50,
                maxHeight: 100,
              ),
              child: AspectRatio(
                aspectRatio: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  child: Image.network(
                    url,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(room),
                Text("Rp. $price/Year"),
                Row(
                  children: [
                    Icon(
                      Icons.bed_outlined,
                    ),
                    Text("$bedroom Bedroom"),
                    SizedBox(width: 20),
                    Icon(
                      Icons.bathtub_outlined,
                    ),
                    Text("$bathroom Bathroom"),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
