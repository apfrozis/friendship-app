import 'package:flutter/material.dart';
import 'package:friendship_app/pages/chat.dart';
import 'package:friendship_app/pages/group-chat.dart';
import 'package:friendship_app/pages/group-info.dart';
import 'package:friendship_app/pages/loading.dart';
import 'package:friendship_app/pages/match.dart';
import 'package:friendship_app/pages/profile.dart';

void main() => runApp(MaterialApp(
        // para efeitos de teste, podemos alterar este valor do initialRoute para o
        // caminho da página em que estás a trabalhar. Assim quando entras na aplicação,
        // entras diretamente para a página em que estás a trabalhar (e.g. '/home')
        initialRoute: '/',
        routes: {
          '/': (context) => Loading(),
          '/profile': (context) => Profile(),
          '/match': (context) => Match(),
          '/group-chat': (context) => GroupChat(),
          '/group-info': (context) => GroupInfo(),
          '/chat': (context) => Chat(),
        }));
