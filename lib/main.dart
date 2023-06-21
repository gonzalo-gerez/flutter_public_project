import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_public_repository/app.dart';
import 'package:flutter_public_repository/injectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: "assets/environment/config.env");

  configureDependencies();

  runApp(const App());
}