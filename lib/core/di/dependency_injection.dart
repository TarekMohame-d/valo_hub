import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:valo_hub/core/di/agents_service_locator.dart';
import 'package:valo_hub/core/di/maps_service_locator.dart';
import 'package:valo_hub/core/di/player_cards_service_locator.dart';
import 'package:valo_hub/core/di/sprays_service_locator.dart';
import 'package:valo_hub/core/di/weapons_service_locator.dart';

import '../networking/api_services.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;
void setupGetIt() {
  // Dio and ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Agents Services
  agentsServiceLocator();

  // Weapons Services
  weaponsServiceLocator();

  // Maps Services
  mapsServiceLocator();

  // Player Cards services
  playerCardsServiceLocator();

  // Sprays Services
  spraysServiceLocator();
}
