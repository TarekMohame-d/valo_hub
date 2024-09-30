import 'package:valo_hub/core/di/dependency_injection.dart';
import 'package:valo_hub/features/weapons/data/data_sources/weapons_local_data_source.dart';
import 'package:valo_hub/features/weapons/data/data_sources/weapons_remote_data_source.dart';
import 'package:valo_hub/features/weapons/data/repository/weapons_repo_impl.dart';
import 'package:valo_hub/features/weapons/domain/repository/weapons_repo.dart';
import 'package:valo_hub/features/weapons/domain/usecases/get_weapons_use_case.dart';

void weaponsServiceLocator() {
  getIt.registerLazySingleton<WeaponsRemoteDataSource>(
      () => WeaponsRemoteDataSource(getIt()));

  getIt.registerLazySingleton<WeaponsLocalDataSource>(
      () => WeaponsLocalDataSource());

  getIt.registerLazySingleton<WeaponsRepo>(
      () => WeaponsRepoImpl(getIt(), getIt()));

  getIt.registerLazySingleton<GetWeaponsUseCase>(
      () => GetWeaponsUseCase(getIt()));
}
