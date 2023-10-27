import 'package:flutter/material.dart';
import 'package:music_listener/screens/add_newsong.dart';
import 'package:music_listener/widget/custom_button.dart';
import 'package:music_listener/widget/custom_textfield.dart';

class CreatePlaylistScreen extends StatefulWidget {
  const CreatePlaylistScreen({Key? key}) : super(key: key);

  @override
  State<CreatePlaylistScreen> createState() => _CreatePlaylistScreenState();
}

class _CreatePlaylistScreenState extends State<CreatePlaylistScreen> {
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
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 20,
            vertical: MediaQuery.of(context).size.height / 20),

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
            CustomButton(text: "Add Song To the Playlist", onPressed: (){})

          ],
        ),
      ),
    );
  }
}
