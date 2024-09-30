import 'package:valo_hub/core/di/dependency_injection.dart';
import 'package:valo_hub/features/sprays/data/data_sources/spray_local_data_source.dart';
import 'package:valo_hub/features/sprays/data/data_sources/spray_remote_data_source.dart';
import 'package:valo_hub/features/sprays/data/repository/spray_repo_impl.dart';
import 'package:valo_hub/features/sprays/domain/repository/spray_repo.dart';
import 'package:valo_hub/features/sprays/domain/usecases/get_sprays_use_case.dart';

void spraysServiceLocator() {
  getIt.registerFactory<SprayRemoteDataSource>(
      () => SprayRemoteDataSource(getIt()));

  getIt.registerFactory<SprayLocalDataSource>(() => SprayLocalDataSource());

  getIt.registerFactory<SprayRepo>(() => SprayRepoImpl(getIt(), getIt()));

  getIt.registerFactory<GetSpraysUseCase>(() => GetSpraysUseCase(getIt()));
}
