import 'package:valo_hub/core/di/dependency_injection.dart';
import 'package:valo_hub/features/agents/data/data_sources/agents_local_source.dart';
import 'package:valo_hub/features/agents/data/data_sources/agents_remote_source.dart';
import 'package:valo_hub/features/agents/data/repository/agents_repos_impl.dart';
import 'package:valo_hub/features/agents/domain/repository/agents_repo.dart';
import 'package:valo_hub/features/agents/domain/usecases/get_agent_voice_lines_use_case.dart';
import 'package:valo_hub/features/agents/domain/usecases/get_agents_use_case.dart';

void agentsServiceLocator() {
  getIt.registerLazySingleton<AgentsRemoteSource>(
      () => AgentsRemoteSource(getIt()));

  getIt.registerLazySingleton<AgentsLocalSource>(() => AgentsLocalSource());

  getIt.registerLazySingleton<AgentsRepo>(
      () => AgentsReposImpl(getIt(), getIt()));

  getIt
      .registerLazySingleton<GetAgentsUseCase>(() => GetAgentsUseCase(getIt()));
  getIt.registerLazySingleton<GetAgentVoiceLinesUseCase>(
      () => GetAgentVoiceLinesUseCase(getIt()));
}
