import 'package:valo_hub/core/networking/api_result.dart';
import 'package:valo_hub/features/sprays/domain/entities/spray_entity.dart';
import 'package:valo_hub/features/sprays/domain/repository/spray_repo.dart';

class GetSpraysUseCase {
  final SprayRepo _sprayRepo;
  GetSpraysUseCase(this._sprayRepo);

  Future<ApiResult<List<SprayEntity>>> call() async {
    return await _sprayRepo.getSprays();
  }
}