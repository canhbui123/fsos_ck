
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../favouriteIcon.dart';

class Detail extends StatelessWidget {
  const Detail({
    required this.image,
    super.key,
    required this.size,
  });

  final Size size;
 final ImageProvider<Object> image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       Column(
      children: [
        Image(
    image: image,
    fit: BoxFit.cover,
        ),
        Container(
    padding: EdgeInsets.symmetric(horizontal: 10),
    margin: EdgeInsets.only(top: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('ta nang',
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w500)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.arrow_drop_up, size: 30),
                        Text('Cách đây ' + '122km',
                            style: GoogleFonts.poppins(
                              color: Color(0xff739088),
                              fontSize: 12,
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.star_rate,
                          color: Colors.amber.shade300,
                          size: 20,
                        ),
                        Text('4.9 (1.1k)',
                            style: GoogleFonts.poppins(
                              color: Color(0xff739088),
                              fontSize: 12,
                            ))
                      ],
                    ),
                    SizedBox(
                      width: size.width / 7,
                    ),
                    FavouriteIcon()
                  ],
                ),
                Text(
                  'Miêu tả',
                  style: GoogleFonts.poppins(
                      fontSize: 14, fontWeight: FontWeight.w500),
                ),
                Container(
                  height: 1.5,
                  width: size.width / 8.8,
                  color: Colors.amber,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: size.width * 0.9,
                  child: Text(
                    'Lorem ipsum dolor sit amet consectetur. Sit adipiscing maecenas malesuada lacus ultrices ac habitant. Enim tristique in integer euismod mauris aenean in. Odio sed gravida nunc non duis. Suspendisse ac lectus lobortis auctor aliquam nunc. Facilisis aliquet aliquam in mattis sapien pretium ornare. Read More...',
                    style: GoogleFonts.poppins(
                      color: Color(0xff739088),
                      fontSize: 14,
                    ),
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: size.height /
                      6, // Set the desired height for the list
                  width: size.width -
                      20, // Set an explicit width for the list
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 30,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.all(5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image(
                            image: image,
                            fit: BoxFit
                                .cover, // Keep the aspect ratio while covering the space
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: size.width * 0.9,
                  child: Text(
                    'Lorem ipsum dolor siuctor al mattis sapien pretium ornare. Read More...',
                    style: GoogleFonts.poppins(
                      color: Color(0xff739088),
                      fontSize: 14,
                    ),
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            )
          ],
        )
      ],
    ),
        ),
      ],
    ),
      
        
      ],
    );
  }
}
