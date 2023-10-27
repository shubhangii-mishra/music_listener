import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_listener/screens/song_details.dart';
import 'package:music_listener/screens/update_song.dart';

import 'add_newsong.dart';
 
class PlaylistDetails extends StatefulWidget {
  const PlaylistDetails({Key? key}) : super(key: key);

  @override
  State<PlaylistDetails> createState() => _PlaylistDetailsState();
}

class _PlaylistDetailsState extends State<PlaylistDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70), // Adjust the height as needed
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: AppBar(
            backgroundColor: Color(0xffFF7950),
            title: Text(
              'Music Lister',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 20,
              vertical: MediaQuery.of(context).size.height / 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Playlist Details',
                style: TextStyle(
                  color: Color(0xFF78746D),
                  fontSize: 24,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w500,
                  height: 0.03,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UpdateSong()), // Navigate to NextPage
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 30),
                  width: 363,
                  height: 104,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFE6E6E6)),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  // Add your item content here
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 27),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset('images/disc.svg',),

                          Column(
                            children: [
                              Text(
                                'PLAYLIST ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontFamily: 'Rajdhani',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Total Songs : ',
                                      style: TextStyle(
                                        color: Color(0xFF78746D),
                                        fontSize: 15,
                                        fontFamily: 'Rajdhani',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '6',
                                      style: TextStyle(
                                        color: Color(0xFF78746D),
                                        fontSize: 15,
                                        fontFamily: 'Rajdhani',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 20,
                          ),
                          Icon(Icons.delete_outline, color: Color(0xffFF7950),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Songs',
                    style: TextStyle(
                      color: Color(0xFF78746D),
                      fontSize: 24,
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddNewSong()), // Navigate to NextPage
                      );
                    },
                    child: Text(
                      '+ Add a New Song',
                      style: TextStyle(
                        color: Color(0xFFFF794F),
                        fontSize: 14,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w500,
                        height: 0.11,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height -
                    AppBar().preferredSize.height -
                    40,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SongDetails()), // Navigate to NextPage
                    );
                  },
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 20),
                        width: 363,
                        height: 104,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(0xFFE6E6E6)),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        // Add your item content here
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 27),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.asset('images/disc.svg',),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Song name ${index + 1}',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 24,
                                        fontFamily: 'Rajdhani',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      'Artist Name',
                                      style: TextStyle(
                                        color: Color(0xFF78746D),
                                        fontSize: 15,
                                        fontFamily: 'Rajdhani',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 20,
                                ),
                                Icon(Icons.play_arrow_outlined, color: Color(0xffFF7950),)
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
