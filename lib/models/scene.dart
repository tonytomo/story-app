import 'package:hive/hive.dart';

part 'scene.g.dart';

@HiveType(typeId: 0)
class Scene {
  @HiveField(0)
  final String scene;
  @HiveField(1)
  final List<String> decision;

  Scene(this.scene, this.decision);
}
