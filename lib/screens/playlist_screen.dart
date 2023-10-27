import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_listener/screens/create_playlistscreen.dart';
import 'package:music_listener/screens/playlist_details.dart';

class PlaylistScreen extends StatefulWidget {
  const PlaylistScreen({Key? key}) : super(key: key);

  @override
  State<PlaylistScreen> createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffFF7950),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CreatePlaylistScreen()
            ), // Navigate to NextPage
          );
        },
        child: Center(
          child: Text(
            '+',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
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
                'Playlists',
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
              SizedBox(
                height: MediaQuery.of(context).size.height -
                    AppBar().preferredSize.height -
                    40,
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PlaylistDetails()), // Navigate to NextPage
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
                                      'PLAYLIST ${index + 1}',
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
                                Icon(Icons.arrow_forward_ios_rounded, color: Color(0xffFF7950),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
