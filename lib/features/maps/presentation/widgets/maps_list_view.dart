import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/features/maps/domain/entities/map_entity.dart';
import 'package:valo_hub/features/maps/presentation/widgets/maps_list_view_item.dart';

class MapsListView extends StatelessWidget {
  const MapsListView({super.key, required this.maps});

  final List<MapEntity> maps;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: maps.length,
      itemExtent: 200.h,
      itemBuilder: (context, index) => MapsListViewItem(
        map: maps[index],
      ),
    );
  }
}
