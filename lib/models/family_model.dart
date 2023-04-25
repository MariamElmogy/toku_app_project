import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FamilyModel {
  const FamilyModel({required this.sound, required this.title, required this.subtitle, required this.image});

  final String title;
  final String subtitle;
  final String image;
  final String sound;
}