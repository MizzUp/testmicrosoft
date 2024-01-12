// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_appauth/flutter_appauth.dart';

final FlutterAppAuth appAuth = FlutterAppAuth();

Future performMicrosoft() async {
  // Add your function code here!
  final AuthorizationTokenResponse? result =
      await appAuth.authorizeAndExchangeCode(
    AuthorizationTokenRequest(
      '0aec1290-1b3f-48c5-bb68-ff66ffff3d20',
      'https://test-qorqrk.firebaseapp.com/__/auth/handler',
      scopes: <String>[
        'openid',
        'profile',
        'email'
      ], // Les scopes que vous souhaitez demander
    ),
  );

  // Gérez la réponse de l'authentification ici.
  print('Authentification réussie: ${result?.accessToken}');
}
