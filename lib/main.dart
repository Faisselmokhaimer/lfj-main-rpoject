import 'package:flutter/material.dart';
import 'package:lfj/Services.dart';
import 'package:lfj/Start.dart';
import 'package:lfj/Buy.dart';
import 'package:lfj/LearnHandCrafts.dart';
import 'package:lfj/handCraft.dart';
import 'package:lfj/Online courses.dart';
import 'package:lfj/Hire%20a%20Servant.dart';
import 'package:firebase_core/firebase_core.dart';

Future main()async{

WidgetsFlutterBinding.ensureInitialized();

await Firebase.initializeApp();

runApp(LFJ());
}

class LFJ extends StatelessWidget {
  const LFJ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:StartS() ,

      debugShowCheckedModeBanner:false ,








    );
  }
}
