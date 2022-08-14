import 'package:flutter/material.dart';
import '../src/pages/join_room_page.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.indigo,
        textTheme: GoogleFonts.poppinsTextTheme(
          ThemeData(
            brightness: Brightness.dark,
          ).textTheme,
        ),
        colorScheme: const ColorScheme.dark(),
      ),
      home: const JoinRoomPage()
    );
  }
}
