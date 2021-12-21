import 'package:flutter/cupertino.dart';
import 'package:giogym/pages/informacion.dart';
import './pages/login_screen.dart';
import './pages/register_screen.dart';
import './pages/welcome_screen.dart';
import './pages/costos.dart';
import './pages/informacion.dart';
import './pages/productos.dart';
import './pages/rutinas.dart';

import './pages/pecho.dart';
import './pages/brazo.dart';
import './pages/pierna.dart';
import './pages/hombro.dart';
import './pages/espalda.dart';
import './pages/IMC.dart';
import './pages/redes.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.id: (context) => LoginScreen(),
  RegistrationScreen.id: (context) => RegistrationScreen(),
  WelcomeScreen.id: (context) => const WelcomeScreen(),
  informacion.id: (_) => informacion(),
  costos.id: (_) => costos(),
  productos.id: (_) => productos(),
  rutinas.id: (_) => rutinas(),
  pecho.id: (_) => pecho(),
  brazo.id: (_) => brazo(),
  pierna.id: (_) => pierna(),
  hombro.id: (_) => hombro(),
  espalda.id: (_) => espalda(),
  'IMC': (_) => conversion(),
  redes.id: (_) => redes(),
};
