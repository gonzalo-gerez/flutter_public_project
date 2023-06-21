import 'package:flutter_public_repository/injectable.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';


final GetIt getIt = GetIt.instance;

@injectableInit
void configureDependencies() => getIt.init();