import 'package:flutter/material.dart';

final class ProjectPadding extends EdgeInsets {
  const ProjectPadding._() : super.all(0);

  ///Project Padding for all sides -> 8
  const ProjectPadding.allSmall() : super.all(8);

  ///Project Padding for all sides -> 16
  const ProjectPadding.allNormal() : super.all(16);

  ///Project Padding for all sides -> 24
  const ProjectPadding.allLarge() : super.all(24);

  ///Project Padding for symetic sides -> 10
  const ProjectPadding.symmetricSmall() : super.symmetric(vertical: 5, horizontal: 5);

  ///Project Padding for symetic sides -> 20
  const ProjectPadding.symmetricNormal() : super.symmetric(vertical: 10, horizontal: 10);

  ///Project Padding for symetic sides -> 30
  const ProjectPadding.symmetricLarge() : super.symmetric(vertical: 20, horizontal: 20);

  ///Project Padding for horizontal sides -> 5
  const ProjectPadding.horizontalSmall() : super.symmetric(horizontal: 5);

  ///Project Padding for horizontal sides -> 10
  const ProjectPadding.horizontalNormal() : super.symmetric(horizontal: 10);

  ///Project Padding for horizontal sides -> 15
  const ProjectPadding.horizontalLarge() : super.symmetric(horizontal: 15);

  ///Project Padding for vertical sides -> 5
  const ProjectPadding.verticalSmall() : super.symmetric(vertical: 5);

  ///Project Padding for vertical sides -> 10
  const ProjectPadding.verticalNormal() : super.symmetric(vertical: 10);

  ///Project Padding for vertical sides -> 15
  const ProjectPadding.verticalLarge() : super.symmetric(vertical: 15);

  ///Project Padding for only top side -> 5
  const ProjectPadding.onlyTopSmall() : super.only(top: 5);

  ///Project Padding for only top side -> 10

  const ProjectPadding.onlyTopNormal() : super.only(top: 10);

  ///Project Padding for only top side -> 15
  const ProjectPadding.onlyTopLarge() : super.only(top: 15);

  ///Project Padding for only bottom side -> 5
  const ProjectPadding.onlyBottomSmall() : super.only(bottom: 5);

  ///Project Padding for only bottom side -> 10
  const ProjectPadding.onlyBottomNormal() : super.only(bottom: 10);

  ///Project Padding for only bottom side -> 15
  const ProjectPadding.onlyBottomLarge() : super.only(bottom: 15);

  ///Project Padding for only left side -> 5
  const ProjectPadding.onlyLeftSmall() : super.only(left: 5);

  ///Project Padding for only left side -> 10
  const ProjectPadding.onlyLeftNormal() : super.only(left: 10);

  ///Project Padding for only left side -> 15
  const ProjectPadding.onlyLeftLarge() : super.only(left: 15);

  ///Project Padding for only right side -> 5
  const ProjectPadding.onlyRightSmall() : super.only(right: 5);

  ///Project Padding for only right side -> 10
  const ProjectPadding.onlyRightNormal() : super.only(right: 10);

  ///Project Padding for only right side -> 15
  const ProjectPadding.onlyRightLarge() : super.only(right: 15);
}
