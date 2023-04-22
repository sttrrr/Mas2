import 'package:flutter/material.dart';

class MediaStack extends StatelessWidget {
  final String image;
  final Color color;
  final String media;
  final String items;
  final String privacy;
  const MediaStack(
      {Key? key,
      required this.image,
      required this.color,
      required this.media,
      required this.items,
      required this.privacy,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.8,
      child: Container(
        height: 150,
        width: 165,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(32.0),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
          child: Column(
            children: [
              Positioned(
                child: Container(
                  child: Opacity(
                    opacity: 0.6,
                    child: Image.asset(
                      image,
                      height: 100,
                    ),
                  ),
                ),
              ),
              Positioned(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 15,),
                    Text(
                      media,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[800],
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text(
                      items,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[700],
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(height: 15,),
                  ],
                ),
              ),
              Positioned(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 4),

                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
