import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/task-create.dart';
import 'package:todo_list/tesk-list.dart';
import 'package:firebase_core/firebase_core.dart';

const firebaseConfig = FirebaseOptions(
    apiKey: "AIzaSyAE-cW1SY517NdH4QlKbdf_dju-mydJMbQ",
    authDomain: "tasklist-8c16a.firebaseapp.com",
    projectId: "tasklist-8c16a",
    storageBucket: "tasklist-8c16a.appspot.com",
    messagingSenderId: "715901362114",
    appId: "1:715901362114:web:9bb4ad54001f475893805b");

void main() {
  WidgetsFlutterBinding
      .ensureInitialized(); // garante q a aplicação inicializou. Aguarda carregar os dados
  Firebase.initializeApp(
      options:
          firebaseConfig); // manda uma solicitação para usar os dados. sem o pacote de cima ele quebrar.
  runApp(const MyApp());
}

//stl  tab
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/list": (context) => TaskListPage(),
        "/create": (context) => TaskCreatePage(),
      },
      initialRoute: '/list',
    );
  }
}
