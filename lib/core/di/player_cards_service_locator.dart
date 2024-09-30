import 'package:valo_hub/core/di/dependency_injection.dart';
import 'package:valo_hub/features/player_cards/data/data_sources/player_cards_local_data_source.dart';
import 'package:valo_hub/features/player_cards/data/data_sources/player_cards_remote_data_source.dart';
import 'package:valo_hub/features/player_cards/data/repository/player_cards_repo_impl.dart';
import 'package:valo_hub/features/player_cards/domain/repository/player_cards_repo.dart';
import 'package:valo_hub/features/player_cards/domain/usecases/get_player_cards_use_case.dart';

void playerCardsServiceLocator() {
  getIt.registerFactory<PlayerCardsRemoteDataSource>(
      () => PlayerCardsRemoteDataSource(getIt()));

  getIt.registerFactory<PlayerCardsLocalDataSource>(
      () => PlayerCardsLocalDataSource());

  getIt.registerFactory<PlayerCardsRepo>(
      () => PlayerCardsRepoImpl(getIt(), getIt()));

  getIt.registerFactory<GetPlayerCardsUseCase>(
      () => GetPlayerCardsUseCase(getIt()));
}
