import 'package:valo_hub/core/di/dependency_injection.dart';
import 'package:valo_hub/features/maps/data/data_sources/maps_local_data_source.dart';
import 'package:valo_hub/features/maps/data/data_sources/maps_remote_data_source.dart';
import 'package:valo_hub/features/maps/data/repository/maps_repo_impl.dart';
import 'package:valo_hub/features/maps/domain/repository/maps_repo.dart';
import 'package:valo_hub/features/maps/domain/usecases/get_maps_use_case.dart';

void mapsServiceLocator() {
  getIt.registerLazySingleton<MapsRemoteDataSource>(
      () => MapsRemoteDataSource(getIt()));

  getIt.registerLazySingleton<MapsLocalDataSource>(() => MapsLocalDataSource());

  getIt.registerLazySingleton<MapsRepo>(() => MapsRepoImpl(getIt(), getIt()));

  getIt.registerLazySingleton<GetMapsUseCase>(() => GetMapsUseCase(getIt()));
}
