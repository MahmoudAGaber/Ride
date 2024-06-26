import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:rider_flutter/gen/assets.gen.dart';

part 'onboarding.freezed.dart';

@freezed
class OnBoardingItem with _$OnBoardingItem {
  const factory OnBoardingItem({
    required AssetGenImage image,
    required String title,
    required String description,
  }) = _OnBoardItem;
}

List<OnBoardingItem> onboardingItems(BuildContext context) => [
  OnBoardingItem(
    image: Assets.images.onboarding1,
    title: "",
    description: "",
  ),
  OnBoardingItem(
    image: Assets.images.onboarding1,
    title: context.translate.welcomeTitle,
    description: context.translate.welcomeSubtitle,
  ),
  OnBoardingItem(
    image: Assets.images.onboarding2,
    title: context.translate.onboardingRewardTitle,
    description: context.translate.onboardingRewardSubtitle,
  ),
  OnBoardingItem(
    image: Assets.images.onboarding3,
    title: context.translate.onboardingLetStart,
    description: context.translate.onboardingLetStartSubTitle,
  ),
  OnBoardingItem(
    image: Assets.images.onboarding4,
    title: context.translate.onboardingRewardTitle,
    description: context.translate.onboardingRewardSubtitle,
  ),
  // OnBoardingItem(
  //   image: Assets.images.language,
  //   title: context.translate.selectLanguage,
  //   description: '',
  // ),
];
