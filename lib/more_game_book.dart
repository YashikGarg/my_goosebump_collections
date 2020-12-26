import 'package:flutter/material.dart';

import 'package:epub_viewer/epub_viewer.dart';

class more_game extends StatelessWidget {

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
      padding: EdgeInsets.symmetric(horizontal: 6),
      child: ClipRRect(borderRadius: BorderRadius.circular(10.0),child: Image.asset(image_name,width: 120,height: 180,),),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("More Game Books"),
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
                  create_book_icon(context,'assets/game/Welcome to the Wicked Wax Museum.jpg','assets/game/Welcome to the Wicked Wax Museum.epub'),
                  create_book_icon(context,'assets/game/Under the Magician\'s Spell.jpg','assets/game/Under the Magician\'s Spell.epub'),
                  create_book_icon(context,'assets/game/Twisted Tale of Tiki Island.jpg','assets/game/Twisted Tale of Tiki Island, The.epub'),
                  create_book_icon(context,'assets/game/Trapped in Bat Wing Hall.jpg','assets/game/Trapped in Bat Wing Hall.epub'),
                  create_book_icon(context,'assets/game/Toy Terror_ Batteries Included.jpg','assets/game/Toy Terror_ Batteries Included.epub'),
                  create_book_icon(context,'assets/game/Tick Tock, You\'re Dead!.jpg','assets/game/Tick Tock, You\'re Dead!.epub'),
                  create_book_icon(context,'assets/game/Secret Agent Grandma.jpg','assets/game/Secret Agent Grandma.epub'),
                  create_book_icon(context,'assets/game/Scream of the Evil Genie.jpg','assets/game/Scream of the Evil Genie.epub'),
                  create_book_icon(context,'assets/game/Return to the Carnival of Horrors.jpg','assets/game/Return to the Carnival of Horrors.epub'),
                  create_book_icon(context,'assets/game/Please Don\'t Feed the Vampire!.jpg','assets/game/Please Don\'t Feed the Vampire!.epub'),
                  create_book_icon(context,'assets/game/Night In Werewolf Woods.jpg','assets/game/Night In Werewolf Woods.epub'),
                  create_book_icon(context,'assets/game/Little Comic Shop of Horrors.jpg','assets/game/Little Comic Shop of Horrors.epub'),
                  create_book_icon(context,'assets/game/Knight in Screaming Armor.jpg','assets/game/Knight in Screaming Armor.epub'),
                  create_book_icon(context,'assets/game/Escape from the Carnival of Horrors.jpg','assets/game/Escape from the Carnival of Horrors.epub'),
                  create_book_icon(context,'assets/game/Escape from Camp Run-For-Your-Life.jpg','assets/game/Escape from Camp Run-For-Your-Life.epub'),
                  create_book_icon(context,'assets/game/Diary of a Mad Mummy.jpg','assets/game/Diary of a Mad Mummy.epub'),
                  create_book_icon(context,'assets/game/Deep in the Jungle of Doom.jpg','assets/game/Deep in the Jungle of Doom.epub'),
                  create_book_icon(context,'assets/game/Deadly Experiments of Dr. Eeek.jpg','assets/game/Deadly Experiments of Dr. Eeek.epub'),
                  create_book_icon(context,'assets/game/Curse of the Creeping Coffin.jpg','assets/game/Curse of the Creeping Coffin.epub'),
                  create_book_icon(context,'assets/game/Creepy Creations of Professor Shock.jpg','assets/game/Creepy Creations of Professor Shock.epub'),
                  create_book_icon(context,'assets/game/Beware of the Purple Peanut Butter.jpg','assets/game/Beware of the Purple Peanut Butter.epub'),
                  create_book_icon(context,'assets/game/Attack of the Beastly Babysitter.jpg','assets/game/Attack of the Beastly Babysitter.epub'),

                ],
              ),
            ),
          ),
        )
    );
  }
}