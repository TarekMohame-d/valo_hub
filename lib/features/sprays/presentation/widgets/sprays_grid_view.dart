import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/features/sprays/domain/entities/spray_entity.dart';
import 'package:valo_hub/features/sprays/presentation/widgets/spray_grid_view_item.dart';

class SpraysGridView extends StatelessWidget {
  const SpraysGridView({super.key, required this.sprays});

  final List<SprayEntity> sprays;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.w,
        mainAxisSpacing: 10.h,
      ),
      itemBuilder: (context, index) => SprayGridViewItem(
        spray: sprays[index],
      ),
    );
  }
}
