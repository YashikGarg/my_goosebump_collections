import 'package:flutter/material.dart';
import 'package:epub_viewer/epub_viewer.dart';

class more_story extends StatelessWidget {

  FlatButton create_book_icon(BuildContext context,String image_name,String book_url)
  {
    return FlatButton(
      onPressed: () async {
        EpubViewer.setConfig(
          themeColor: Theme.of(context).primaryColor,
          identifier: "iosBook",
          scrollDirection: EpubScrollDirection.VERTICAL,
          allowSharing: true,
          enableTts: true,
        );
        EpubViewer.openAsset('assets/story/$book_url',
          // first page will open up if the value is null
        );

      },
      padding: EdgeInsets.symmetric(horizontal: 6),
      child: ClipRRect(borderRadius: BorderRadius.circular(10.0),child: Image.asset(image_name,width: 120,height: 180,),),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("More Story\'s Books"),
        ),
        body:
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.only(top: 20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Wrap(
                runSpacing: 10.0,


                children: [
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 62] - Monster Blood IV (v3.0).jpg','R.L. Stine - Goosebumps 62.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 61] - I Live in Your Basement (v3.0).jpg','R.L. Stine - Goosebumps 61.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 60] - Werewolf Skin (v3.0).jpg','R.L. Stine - Goosebumps 60.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 59]- Dudes, the School Is Haunted! (v3.0).jpg','R.L. Stine - Goosebumps 59.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 58] - Deep Trouble II (v3.0).jpg','R.L. Stine - Goosebumps 58.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 57] - My Best Friend Is Invisible (v3.0).jpg','R.L. Stine - Goosebumps 57.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 56] - Goosebumps_ The Curse of Camp _ake (v3.0).jpg','R.L. Stine - Goosebumps 56.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 55] - Goosebumps_ The Blob That Ate _one (v3.0).jpg','R.L. Stine - Goosebumps 55.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 54] - Houghton Mifflin Reading the L_l C (v3.0).jpg','R.L. Stine - Goosebumps 54.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 53] - Chicken Chicken (v3.0).jpg','R.L. Stine - Goosebumps 53.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 52] - How I Learned to Fly (v3.0).jpg','R.L. Stine - Goosebumps 52.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 51] - Beware, the Snowman (v3.0).jpg','R.L. Stine - Goosebumps 51.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 50] - Calling All Creeps! (v3.0).jpg','R.L. Stine - Goosebumps 50.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 49] - Vampire Breath (v3.0).jpg','R.L. Stine - Goosebumps 49.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 48] - Goosebumps_ Attack of the Jack_rns (v3.0).jpg','R.L. Stine - Goosebumps 48.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 47] - Legend of the Lost Legend (v3.0).jpg','R.L. Stine - Goosebumps 47.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 46] - How to Kill a Monster (v3.0).jpg','R.L. Stine - Goosebumps 46.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 45] - Ghost Camp (v3.0).jpg','R.L. Stine - Goosebumps 45.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 44] - Say Cheese - and Die Screaming! (v3.0).jpg','R.L. Stine - Goosebumps 44.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 43] - The Beast From the East (v3.0).jpg','R.L. Stine - Goosebumps 43.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 42] - Egg Monsters From Mars (v3.0).jpg','R.L. Stine - Goosebumps 42.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 41] - Bad Hare Day (v3.0).jpg','R.L. Stine - Goosebumps 41.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 40] - Night of the Living Dummy III (v3.0).jpg','R.L. Stine - Goosebumps 40.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 39] - How I Got My Shrunken Head (v3.0).jpg','R.L. Stine - Goosebumps 39.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 38] - The Abominable Snowman of Pasadena (v3.0).jpg','R.L. Stine - Goosebumps 38.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 37] - The Headless Ghost (v3.0).jpg','R.L. Stine - Goosebumps 37.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 36] - The Haunted Mask II (v3.0).jpg','R.L. Stine - Goosebumps 36.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 35] - R.L. Stine\'s Ghosts of Fear Street (v3.0).jpg','R.L. Stine - Goosebumps 35.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 34] - Revenge of the Lawn Gnomes (v3.0).jpg','R.L. Stine - Goosebumps 34.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 33] - The Horror at Camp Jellyjam (v3.0).jpg','R.L. Stine - Goosebumps 33.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 32] - The Barking Ghost (v3.0).jpg','R.L. Stine - Goosebumps 32.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 31] - Night of the Living Dummy II (v3.0).jpg','R.L. Stine - Goosebumps 31.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 30 Boxed Set, Books 29_ost (v3.0).jpg','R.L. Stine - Goosebumps 30.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 29] - Monster Blood for Breakfast! (v3.0).jpg','R.L. Stine - Goosebumps 29.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 28] - The Cuckoo Clock of Doom (v3.0).jpg','R.L. Stine - Goosebumps 28.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 27] - A Night in Terror Tower (v3.0).jpg','R.L. Stine - Goosebumps 27.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 26] - My Hairiest Adventure (v3.0).jpg','R.L. Stine - Goosebumps 26.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 25] - Goosebumps Attack of the Mutan_ide (v3.0).jpg','R.L. Stine - Goosebumps 25.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 24] - Phantom of the Auditorium (v3.0).jpg','R.L. Stine - Goosebumps 24.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 23] - Return of the Mummy (v3.0).jpg','R.L. Stine - Goosebumps 23.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 22] - Ghost Beach (v3.0).jpg','R.L. Stine - Goosebumps 22.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 21] - Go Eat Worms! (v3.0).jpg','R.L. Stine - Goosebumps 21.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 20] - The Scarecrow Walks at Midnight (v3.0).jpg','R.L. Stine - Goosebumps 20.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 19] - Deep Trouble (v3.0).jpg','R.L. Stine - Goosebumps 19.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 18] - Monster Blood II (v3.0).jpg','R.L. Stine - Goosebumps 18.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 17] - Why Im Afraid of Bees (v3.0).jpg','R.L. Stine - Goosebumps 17.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 16] - One Day at Horrorland (v3.0).jpg','R.L. Stine - Goosebumps 16.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 15] - You Can\'t Scare Me! (v3.0).jpg','R.L. Stine - Goosebumps 15.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 14] - Werewolf of Fever Swamp (v3.0).jpg','R.L. Stine - Goosebumps 14.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 13] - Piano Lessons Can Be Murder (v3.0).jpg','R.L. Stine - Goosebumps 13.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 12] - Be Careful What You Wish For (v3.0).jpg','R.L. Stine - Goosebumps 12.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 11] - Haunted Mask (v3.0).jpg','R.L. Stine - Goosebumps 11.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 10] - Ghost Next Door (v3.0).jpg','R.L. Stine - Goosebumps 10.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 09] - Welcome to Camp Nightmare (v3.0).jpg','R.L. Stine - Goosebumps 9.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 08] - The Girl Who Cried Monster (v3.0).jpg','R.L. Stine - Goosebumps 8.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 07] - Night of the Living Dummy (v3.0).jpg','R.L. Stine - Goosebumps 7.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 06] - Let\'s Get Invisible (v3.0).jpg','R.L. Stine - Goosebumps 6.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 05] - The Curse of the Mummy\'s Tomb (v3.0).jpg','R.L. Stine - Goosebumps 5.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 04] - Say Cheese and Die! (v3.0).jpg','R.L. Stine - Goosebumps 4.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 03] - Monster Blood (v3.0).jpg','R.L. Stine - Goosebumps 3.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 02] - Stay Out of the Basement (v3.0).jpg','R.L. Stine - Goosebumps 2.epub'),
                  create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 01] - Welcome to Dead House (v3.0).jpg','R.L. Stine - Goosebumps 1.epub'),


                ],
              ),
            ),
          ),
        )
    );
  }
}