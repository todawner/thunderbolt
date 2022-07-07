import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'theme.dart' as style; //ThemeData 모은 파일

void main(){
  runApp(
    const FluentApp(
          home: MyApp(),
    )

          
  );}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      pane: NavigationPane(
        selected:_currentPage,
        onChanged: (i) => setState(()=>_currentPage=i),
        displayMode: PaneDisplayMode.minimal, //auto 바꿔보기
        items: <NavigationPaneItem>[
          PaneItem(icon: const Icon(FluentIcons.home),
          title:const Text("Home")),
          PaneItem(icon: const Icon(FluentIcons.new_folder),
              title:const Text("new")),
          PaneItem(icon: const Icon(FluentIcons.store_logo16),
              title:const Text("store")),
          PaneItem(icon: const Icon(FluentIcons.goto_today),
              title:const Text("today"))
        ]
      ),
      content: NavigationBody(
        index: _currentPage,
        transitionBuilder: (child,animation)=>EntrancePageTransition(child: child,animation: animation),
        children: const <Widget>[
          HomePage(),
          NewPage(),
          StorePage(),
          TodayPage()
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class NewPage extends StatelessWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class TodayPage extends StatelessWidget {
  const TodayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(padding: 20,);
  }
}


master page