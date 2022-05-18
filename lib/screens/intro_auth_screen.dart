import 'package:denning_meeet/authentication/navigate_auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroAuthScreen extends StatefulWidget {
  const IntroAuthScreen({Key? key}) : super(key: key);

  @override
  State<IntroAuthScreen> createState() => _IntroAuthScreenState();
}

class _IntroAuthScreenState extends State<IntroAuthScreen> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Welcome",
          body: "Welcome to Denning Meet,the Corporate video Conferencing App",
          image: Center(child: Image.asset("assets/images/welcome.png",height: 175,),),
          decoration: PageDecoration(
            bodyTextStyle: TextStyle(color: Colors.black),
            titleTextStyle: TextStyle(color: Colors.black),
          )
        ),
        PageViewModel(
            title: "Welcome",
            body: "Welcome to Denning Meet,the Corporate video Conferencing App",
            image: Center(child: Image.asset("assets/images/conference.png",height: 175,),),
            decoration: PageDecoration(
              bodyTextStyle: TextStyle(color: Colors.black),
              titleTextStyle: TextStyle(color: Colors.black),
            )
        ),
        PageViewModel(
            title: "Welcome",
            body: "Welcome to Denning Meet,the Corporate video Conferencing App",
            image: Center(child: Image.asset("assets/images/secure.jpg",height: 175,),),
            decoration: PageDecoration(
              bodyTextStyle: TextStyle(color: Colors.black),
              titleTextStyle: TextStyle(color: Colors.black),
            )
        )
      ],

      onDone: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> NavigateAuthScreen()));
      },
      onSkip: (){
        print("Skipped");
      },
      skip: Icon(Icons.skip_next),
      showSkipButton: true,
      next:Icon(Icons.navigate_next_outlined) ,
      done: Text("Done",style: TextStyle(color: Colors.black),),
    );
  }
}
