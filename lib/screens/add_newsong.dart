import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widget/custom_button.dart';
import '../widget/custom_textfield.dart';
class AddNewSong extends StatefulWidget {
  const AddNewSong({Key? key}) : super(key: key);

  @override
  State<AddNewSong> createState() => _AddNewSongState();
}

class _AddNewSongState extends State<AddNewSong> {
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
              vertical: MediaQuery.of(context).size.height / 30),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create Playlist',
                style: TextStyle(
                  color: Color(0xFF78746D),
                  fontSize: 24,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              CustomTextField(hintText: 'Playlist Name'),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
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
                    onTap: (){},
                    child: Text(
                      '+ Add a New Song',
                      style: TextStyle(
                        color: Color(0xFFFF794F),
                        fontSize: 12,
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
            Container(
              margin: EdgeInsets.only(bottom: 30),
              width: 363,
              height: 84,
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
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 17),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset('images/disc.svg',),
                      Column(
                        children: [
                          Text(
                            'Song 1',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontFamily: 'Rajdhani',
                              fontWeight: FontWeight.w700,
                              height: 0,
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
                      Icon(Icons.delete_outline, color: Color(0xffFF7950),)
                    ],
                  ),
                ),
              ),
            ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 60,
              ),
              Container(
                decoration: ShapeDecoration(
                  color: Color(0xFFF2F2F2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CustomTextField(hintText: 'Song Name'),

                      SizedBox(
                        height: MediaQuery.of(context).size.height / 40,
                      ),
                      CustomTextField(hintText: 'Song Artists'),

                      SizedBox(
                        height: MediaQuery.of(context).size.height / 40,
                      ),
                      CustomTextField(hintText: 'Song Link'),

                      SizedBox(
                        height: MediaQuery.of(context).size.height / 40,
                      ),
                      CustomButton(text: "Add Song To the Playlist", onPressed: (){}),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              CustomButton(text: "Create Playlist", onPressed: (){})

            ],
          ),
        ),
      ),
    );
  }
}
