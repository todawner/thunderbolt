import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'theme.dart' as style; //ThemeData 모은 파일
import 'package:flutter/src/material/icon_button.dart';

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
        displayMode: PaneDisplayMode.top, //auto 바꿔보기
        items: <NavigationPaneItem>[
          PaneItem(icon: const Icon(FluentIcons.home),
          title:const Text("Home")),
        ]
      ),
      content: NavigationBody(
        index: _currentPage,
        transitionBuilder: (child,animation)=>EntrancePageTransition(child: child,animation: animation),
        children: const <Widget>[
          HomePage(),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.center  ,
        child : Container(
          child: Row(
            children: [
              IconButton(
                icon: Icon(FluentIcons.add),
                onPressed: () {
                  print('pressed icon button');
                },
              ),
              IconButton(
                icon: Icon(FluentIcons.add),
                onPressed: () {
                  print('pressed icon button');
                },
              ),
              IconButton(
                icon: Icon(FluentIcons.add),
                onPressed: () {
                  print('pressed icon button');
                },
              ),
            ],
          ),
    ););
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
    return Container();
  }
}