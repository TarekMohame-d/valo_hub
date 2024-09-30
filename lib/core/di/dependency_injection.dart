import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:valo_hub/features/agents/data/data_sources/agents_local_source.dart';
import 'package:valo_hub/features/agents/data/data_sources/agents_remote_source.dart';
import 'package:valo_hub/features/agents/data/repository/agents_repos_impl.dart';
import 'package:valo_hub/features/agents/domain/repository/agents_repo.dart';
import 'package:valo_hub/features/agents/domain/usecases/get_agent_voice_lines_use_case.dart';
import 'package:valo_hub/features/agents/domain/usecases/get_agents_use_case.dart';
import 'package:valo_hub/features/maps/data/data_sources/maps_local_data_source.dart';
import 'package:valo_hub/features/maps/data/data_sources/maps_remote_data_source.dart';
import 'package:valo_hub/features/maps/data/repository/maps_repo_impl.dart';
import 'package:valo_hub/features/maps/domain/repository/maps_repo.dart';
import 'package:valo_hub/features/maps/domain/usecases/get_maps_use_case.dart';
import 'package:valo_hub/features/player_cards/data/data_sources/player_cards_local_data_source.dart';
import 'package:valo_hub/features/player_cards/data/data_sources/player_cards_remote_data_source.dart';
import 'package:valo_hub/features/player_cards/data/repository/player_cards_repo_impl.dart';
import 'package:valo_hub/features/player_cards/domain/repository/player_cards_repo.dart';
import 'package:valo_hub/features/player_cards/domain/usecases/get_player_cards_use_case.dart';
import 'package:valo_hub/features/weapons/data/data_sources/weapons_local_data_source.dart';
import 'package:valo_hub/features/weapons/data/data_sources/weapons_remote_data_source.dart';
import 'package:valo_hub/features/weapons/data/repository/weapons_repo_impl.dart';
import 'package:valo_hub/features/weapons/domain/repository/weapons_repo.dart';
import 'package:valo_hub/features/weapons/domain/usecases/get_weapons_use_case.dart';

import '../networking/api_services.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;
void setupGetIt() {
  // Dio and ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Agents Services
  getIt.registerLazySingleton<AgentsRemoteSource>(
      () => AgentsRemoteSource(getIt()));

  getIt.registerLazySingleton<AgentsLocalSource>(() => AgentsLocalSource());

  getIt.registerLazySingleton<AgentsRepo>(
      () => AgentsReposImpl(getIt(), getIt()));

  getIt
      .registerLazySingleton<GetAgentsUseCase>(() => GetAgentsUseCase(getIt()));
  getIt.registerLazySingleton<GetAgentVoiceLinesUseCase>(
      () => GetAgentVoiceLinesUseCase(getIt()));

  // Weapons Services
  getIt.registerLazySingleton<WeaponsRemoteDataSource>(
      () => WeaponsRemoteDataSource(getIt()));

  getIt.registerLazySingleton<WeaponsLocalDataSource>(
      () => WeaponsLocalDataSource());

  getIt.registerLazySingleton<WeaponsRepo>(
      () => WeaponsRepoImpl(getIt(), getIt()));

  getIt.registerLazySingleton<GetWeaponsUseCase>(
      () => GetWeaponsUseCase(getIt()));

  // Maps Services
  getIt.registerLazySingleton<MapsRemoteDataSource>(
      () => MapsRemoteDataSource(getIt()));

  getIt.registerLazySingleton<MapsLocalDataSource>(() => MapsLocalDataSource());

  getIt.registerLazySingleton<MapsRepo>(() => MapsRepoImpl(getIt(), getIt()));

  getIt.registerLazySingleton<GetMapsUseCase>(() => GetMapsUseCase(getIt()));

  // Player Cards services
  getIt.registerLazySingleton<PlayerCardsRemoteDataSource>(
      () => PlayerCardsRemoteDataSource(getIt()));

  getIt.registerLazySingleton<PlayerCardsLocalDataSource>(
      () => PlayerCardsLocalDataSource());

  getIt.registerLazySingleton<PlayerCardsRepo>(
      () => PlayerCardsRepoImpl(getIt(), getIt()));

  getIt.registerLazySingleton<GetPlayerCardsUseCase>(
      () => GetPlayerCardsUseCase(getIt()));
}
