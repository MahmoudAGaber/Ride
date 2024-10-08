import 'package:flutter_common/config/constants.dart';

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static final String serverUrl = dotenv.maybeGet('BASE_URL') ?? "http://ec2-13-51-228-234.eu-north-1.compute.amazonaws.com:4000/";
 // static final String serverUrl = dotenv.maybeGet('BASE_URL') ?? "http://192.168.1.3:3000/";

  static final String gqlEndpoint = '${serverUrl}graphql';
  static bool isDemoMode = dotenv.maybeGet('DEMO_MODE') == 'false';
  static String appName = dotenv.maybeGet('APP_NAME') ?? "YoCar";
  static String companyName = dotenv.maybeGet('COMPANY_NAME') ?? "YoCar";
  static String firebaseMessagingVapidKey = dotenv.maybeGet('FIREBASE_MESSAGING_VAPID_KEY') ?? "BBArq9QIllujvbbeHnj_5htV2Mqib1bN91mKFSKaGAIp77gt1aoD6T1H8CJKAKnybLPfa7dV6gF2ryUJrFqBS54";
  static int placeSearchSearchRadius = 100000;
  static double desktopNavigationBarHeight = 96;
}
