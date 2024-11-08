import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:mevivu/widget/button_custom.dart';
import 'package:mevivu/widget/expandable_text.dart';
import 'package:mevivu/widget/map_custom.dart';
import 'package:mevivu/widget/navigation_drawer.dart';

class CardDetailScreen extends StatefulWidget {
  const CardDetailScreen({super.key});

  @override
  _CardDetailScreenState createState() => _CardDetailScreenState();
}

class _CardDetailScreenState extends State<CardDetailScreen> {
  bool _showAllImages = false;

  final List<String> imageUrls = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_v3vI3YrdxbTqlST2n7eeX-qm_oYx1uaDPQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnyB8LDxMFXNF30wUvnTWeJ4k-ykvI9XYbcGA1DTxMPK-0wBlD1rtSRWdIODFyWqV2NTE&usqp=CAU",
    "https://easyrenovation.ca/wp-content/uploads/2023/10/hotel16.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZ3IQycLFMJ1wJ6-JWgSdfdAdUQUjo8PNofQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_v3vI3YrdxbTqlST2n7eeX-qm_oYx1uaDPQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_v3vI3YrdxbTqlST2n7eeX-qm_oYx1uaDPQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_v3vI3YrdxbTqlST2n7eeX-qm_oYx1uaDPQ&s",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                  bottom: 30,
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Image.network(
                          "https://archipro.com.au/images/s1/article/building/Form-Apartments-Port-Coogee-by-Stiebel-Eltron-.jpg/eyJlZGl0cyI6W3sidHlwZSI6InpwY2YiLCJvcHRpb25zIjp7ImJveFdpZHRoIjoxOTIwLCJib3hIZWlnaHQiOjE1NTgsImNvdmVyIjp0cnVlLCJ6b29tV2lkdGgiOjIzMTcsInNjcm9sbFBvc1giOjU2LCJzY3JvbGxQb3NZIjozMywiYmFja2dyb3VuZCI6InJnYigxMTUsMTQwLDE5NCkiLCJmaWx0ZXIiOjZ9fSx7InR5cGUiOiJmbGF0dGVuIiwib3B0aW9ucyI6eyJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiJ9fV0sInF1YWxpdHkiOjg3LCJ0b0Zvcm1hdCI6ImpwZyJ9"),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.arrow_back),
                          color: Colors.white,
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.bookmark_border),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dreamsville House",
                            style: TextStyle(
                              fontSize: 26,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "JL. Sutlan Iskandar Muda, Jakarta selatan",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  shape: BoxShape.rectangle,
                                  color: Colors.black.withOpacity(0.3),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Icon(
                                    Icons.bed_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Text(
                                "6 Bedroom",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 20),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  shape: BoxShape.rectangle,
                                  color: Colors.black.withOpacity(0.3),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Icon(
                                    Icons.bathtub_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Text(
                                "4 Bathroom",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Description",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              ExpandableText(
                text:
                    "The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars...",
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: 50,
                      minWidth: 50,
                      maxHeight: 80,
                      maxWidth: 80,
                    ),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                        "https://www.mnp.ca/-/media/foundation/integrations/personnel/2020/12/16/13/57/personnel-image-4483.jpg?h=800&w=600&hash=9D5E5FCBEE00EB562DCD8AC8FDA8433D",
                      ),
                      backgroundColor: Colors.grey[200],
                    ),
                  ),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Garry Allen",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "Owner",
                        style: TextStyle(
                            fontSize: 14, color: Colors.grey.shade500),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF82c4ea),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF82c4ea),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(
                        Icons.message_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Gallery",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 1.0,
                ),
                itemCount: _showAllImages
                    ? imageUrls.length
                    : (imageUrls.length > 4 ? 4 : imageUrls.length),
                itemBuilder: (BuildContext context, int index) {
                  if (!_showAllImages && index == 3) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _showAllImages = true;
                        });
                      },
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          buildImage(url: imageUrls[index]),
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            child: Container(
                              color: Colors.black.withOpacity(0.4),
                            ),
                          ),
                          Text(
                            '+${imageUrls.length - 3}',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 24),
                          ),
                        ],
                      ),
                    );
                  }
                  return buildImage(url: imageUrls[index]);
                },
              ),
              SizedBox(height: 15),
              MapCustom(),
              SizedBox(height: 5),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Price"),
                      Text(
                        "Rp. 2.500.000 /Year",
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                  Spacer(),
                  ButtonCustom(
                    selected: true,
                    text: "Rent Now",
                  ),
                  Container(
                    height: 50,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildImage({required String url}) {
  return ConstrainedBox(
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
  );
}
