import 'package:google_sign_in/google_sign_in.dart';
import 'package:rentz/utils/google_cred.dart';

class Auth {
  GoogleSignIn googleSignIn =
      GoogleSignIn(clientId: GoogleCred.clientID, scopes: ['profile']);
  GoogleSignIn get google {
    return googleSignIn;
  }
}
