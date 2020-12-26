import 'package:flutter/material.dart';
import 'package:my_goosebumps/more_game_book.dart';
import 'package:my_goosebumps/more_story_book.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:epub_viewer/epub_viewer.dart';

void main() async => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: screen0(),
    );
  }
}

class screen0 extends StatelessWidget {


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
        EpubViewer.openAsset('$book_url',
          // first page will open up if the value is null
        );

      },
      padding: EdgeInsets.only(left: 12),
      child: ClipRRect(borderRadius: BorderRadius.circular(10.0),child: Image.asset(image_name,width: 140,height: 200,),),
    );
  }
  FlatButton create_title(String book_category,bool put_arrow,BuildContext context)
  {
    return FlatButton(
      onPressed: () {
        if(book_category=='Game Book')
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => more_game()),
          );
        if(book_category=='Story\'s Books')
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => more_story()),
          );

      },
      padding: EdgeInsets.only(left: 12),
      child: Container(
        height: 48,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FittedBox(fit:BoxFit.fitWidth,child: Text(book_category,style: TextStyle(fontSize: 100,color: Colors.black,fontWeight:FontWeight.bold),)),
              if(put_arrow)
                FittedBox(fit:BoxFit.fitWidth,child: Icon(Icons.arrow_forward,size: 100,color: Colors.blue,))
            ],
          ),
        ),
      ),
    );
  }

  FlatButton create_book_tile(String img_url,String book_name,String book_type,String book_desc,String book_url,BuildContext context)
  {
    return  FlatButton(

      onPressed: () async {
        EpubViewer.setConfig(
          themeColor: Theme.of(context).primaryColor,
          identifier: "iosBook",
          scrollDirection: EpubScrollDirection.VERTICAL,
          allowSharing: true,
          enableTts: true,
        );
        EpubViewer.openAsset('$book_url',
          // first page will open up if the value is null
        );

      },

      child: Card(
          child: Row(
            children:  <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(borderRadius: BorderRadius.circular(10.0),child: Image.asset(img_url,width: 140,height: 200,),),
              ),
              Container(
                child: Expanded( // Constrains AutoSizeText to the width of the Row
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: AutoSizeText.rich(
                            TextSpan(
                              text: book_name,
                              style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black),
                            ),
                            maxLines: 2,
                            minFontSize: 0,
                            stepGranularity: 0.1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: AutoSizeText.rich(
                            TextSpan(
                              text: book_type,
                              style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.blue),
                            ),
                            maxLines: 2,
                            minFontSize: 0,
                            stepGranularity: 0.1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: AutoSizeText.rich(
                            TextSpan(
                              text: book_desc,
                              style: TextStyle(fontSize: 40,color: Colors.grey),
                            ),
                            maxLines: 6,
                            minFontSize: 0,
                            stepGranularity: 0.1,
                          ),
                        ),
                      ],
                    )
                ),
              ),
            ],
          )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('goosebumps'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            create_title('Game Book',true,context),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    children: <Widget>[
                      create_book_icon(context,'assets/game/Welcome to the Wicked Wax Museum.jpg','assets/game/Welcome to the Wicked Wax Museum.epub'),
                      create_book_icon(context,'assets/game/Under the Magician\'s Spell.jpg','assets/game/Under the Magician\'s Spell.epub'),
                      create_book_icon(context,'assets/game/Twisted Tale of Tiki Island.jpg','assets/game/Twisted Tale of Tiki Island, The.epub'),
                      create_book_icon(context,'assets/game/Trapped in Bat Wing Hall.jpg','assets/game/Trapped in Bat Wing Hall.epub'),
                      create_book_icon(context,'assets/game/Toy Terror_ Batteries Included.jpg','assets/game/Toy Terror_ Batteries Included.epub'),
                      create_book_icon(context,'assets/game/Knight in Screaming Armor.jpg','assets/game/Knight in Screaming Armor.epub'),
                      create_book_icon(context,'assets/game/Escape from the Carnival of Horrors.jpg','assets/game/Escape from the Carnival of Horrors.epub'),
                      create_book_icon(context,'assets/game/Escape from Camp Run-For-Your-Life.jpg','assets/game/Escape from Camp Run-For-Your-Life.epub'),
                      create_book_icon(context,'assets/game/Diary of a Mad Mummy.jpg','assets/game/Diary of a Mad Mummy.epub'),
                      create_book_icon(context,'assets/game/Deep in the Jungle of Doom.jpg','assets/game/Deep in the Jungle of Doom.epub'),
                      create_book_icon(context,'assets/game/Deadly Experiments of Dr. Eeek.jpg','assets/game/Deadly Experiments of Dr. Eeek.epub'),
                      create_book_icon(context,'assets/game/Curse of the Creeping Coffin.jpg','assets/game/Curse of the Creeping Coffin.epub'),

                    ]
                ),
              ),
            ),
            create_title('Story\'s Books',true,context),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    children: <Widget>[
                      create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 24] - Phantom of the Auditorium (v3.0).jpg','assets/story/R.L. Stine - Goosebumps 24.epub'),
                      create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 23] - Return of the Mummy (v3.0).jpg','assets/story/R.L. Stine - Goosebumps 23.epub'),
                      create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 22] - Ghost Beach (v3.0).jpg','assets/story/R.L. Stine - Goosebumps 22.epub'),
                      create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 21] - Go Eat Worms! (v3.0).jpg','assets/story/R.L. Stine - Goosebumps 21.epub'),
                      create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 20] - The Scarecrow Walks at Midnight (v3.0).jpg','assets/story/R.L. Stine - Goosebumps 20.epub'),
                      create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 19] - Deep Trouble (v3.0).jpg','assets/story/R.L. Stine - Goosebumps 19.epub'),
                      create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 18] - Monster Blood II (v3.0).jpg','assets/story/R.L. Stine - Goosebumps 18.epub'),
                      create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 17] - Why Im Afraid of Bees (v3.0).jpg','assets/story/R.L. Stine - Goosebumps 17.epub'),
                      create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 16] - One Day at Horrorland (v3.0).jpg','assets/story/R.L. Stine - Goosebumps 16.epub'),
                      create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 15] - You Can\'t Scare Me! (v3.0).jpg','assets/story/R.L. Stine - Goosebumps 15.epub'),
                      create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 56] - Goosebumps_ The Curse of Camp _ake (v3.0).jpg','assets/story/R.L. Stine - Goosebumps 56.epub'),
                      create_book_icon(context,'assets/story/R. L. Stine - [GOOSEBUMPS 55] - Goosebumps_ The Blob That Ate _one (v3.0).jpg','assets/story/R.L. Stine - Goosebumps 55.epub'),

                    ]
                ),
              ),
            ),
            create_title('My Favourite',false,context),
            create_book_tile('assets/story/R. L. Stine - [GOOSEBUMPS 07] - Night of the Living Dummy (v3.0).jpg','Night of the Living Dummy', 'Story Book', 'Discover the original bone-chilling adventures that made Goosebumps one of the best-selling children\'s book series of all time!Something scary is happening in Goosebumps HorrorLand. Just how scary? You\'ll never know unless you crack open this classic prequel!', 'assets/story/R.L. Stine - Goosebumps 7.epub',context),
            create_book_tile('assets/game/Escape from the Carnival of Horrors.jpg','Escape from the Carnival of Horrors', 'Game Book', 'Reader beware--you choose the scare! GIVE YOURSELF GOOSEBUMPS! Late one night you and your friends visit the old fairgrounds. They\'re putting up rides and booths for the annual carnival. But this year things look really different. Really odd. Really scary. The place is lit up by a hundred fiery torches', 'assets/game/Escape from the Carnival of Horrors.epub',context),
            create_book_tile('assets/game/Knight in Screaming Armor.jpg','The Knight in Screaming Armor', 'Game Book', 'Reader beware--you choose the scare! GIVE YOURSELF GOOSEBUMPS! Your cousins, Kip and Abbey, have come to visit you from jolly old England -- and guess what they brought with them? Two huge crates, each containing a suit of armor and a curse. But it doesn’t matter, \'cause you\'re \"\"dying\"\" to see what\'s inside', 'assets/game/Knight in Screaming Armor.epub',context),
            create_book_tile('assets/story/R. L. Stine - [GOOSEBUMPS 16] - One Day at Horrorland (v3.0).jpg','One Day at HorrorLand', 'Story Book', 'One Day at HorrorLand is the sixteenth book in the original Goosebumps, the series of children\'s horror fiction novels created and authored by R. L. Stine. It was adapted into a two-part episode for the television series, which was later released on VHS and DVD.', 'assets/story/R.L. Stine - Goosebumps 16.epub',context),
            create_book_tile('assets/story/R. L. Stine - [GOOSEBUMPS 56] - Goosebumps_ The Curse of Camp _ake (v3.0).jpg','The Curse of Camp Cold Lake', 'Story Book', 'Camp is supposed to be fun, but Sarah hates Camp Cold Lake. The lake is gross and slimy. And she\'s having a little trouble with her bunkmates. They hate her.So Sarah comes up with a plan. She\'ll pretend to drown -- then everyone will feel sorry for her.But things don\'t go exactly the way Sarah planned.', 'assets/story/R.L. Stine - Goosebumps 56.epub',context),
            create_book_tile('assets/story/R. L. Stine - [GOOSEBUMPS 27] - A Night in Terror Tower (v3.0).jpg','A Night in Terror Tower', 'Story Book', 'A Night in Terror Tower is the twenty-seventh book in the original Goosebumps, the series of children\'s horror fiction novels created and authored by R. L. Stine. It was adapted into a two-part episode, an audiobook, and a board game. The plot is loosely based on the historical Princes in the Tower.', 'assets/story/R.L. Stine - Goosebumps 27.epub',context),

          ],
        ),
      ),
    );
  }
}

