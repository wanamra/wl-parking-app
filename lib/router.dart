import 'package:flutter/material.dart';
import 'package:ourcarmyplus/screens/auth/login.dart';
import 'package:ourcarmyplus/screens/auth/otp-1.dart';
import 'package:ourcarmyplus/screens/auth/otp-2.dart';
import 'package:ourcarmyplus/screens/auth/reset-password-1.dart';
import 'package:ourcarmyplus/screens/auth/reset-password-2.dart';
import 'package:ourcarmyplus/screens/auth/set-password.dart';
import 'package:ourcarmyplus/screens/auth/signup.dart';
import 'package:ourcarmyplus/screens/home.dart';
import 'package:ourcarmyplus/screens/introduction.dart';
import 'package:ourcarmyplus/screens/parking/parking.dart';
import 'package:ourcarmyplus/screens/payment/payment-detail.dart';
import 'package:ourcarmyplus/screens/payment/payment-method-fpx.dart';
import 'package:ourcarmyplus/screens/payment/payment-method.dart';
import 'package:ourcarmyplus/screens/payment/receipt.dart';
import 'package:ourcarmyplus/screens/scan-qr.dart';
import 'package:ourcarmyplus/screens/profile/change-password.dart';
import 'package:ourcarmyplus/screens/profile/profile.dart';
import 'package:ourcarmyplus/screens/register-season.dart';
import 'package:ourcarmyplus/screens/renew-season.dart';
import 'package:ourcarmyplus/screens/set-location.dart';
import 'package:ourcarmyplus/screens/parking/parking-available.dart';
import 'package:ourcarmyplus/screens/inbox.dart';
import 'package:ourcarmyplus/screens/payment/invoice.dart';
import 'package:ourcarmyplus/screens/parking/parking-detail.dart';
import 'package:ourcarmyplus/screens/payment/payment-history.dart';
import 'package:ourcarmyplus/screens/setting.dart';
import 'package:ourcarmyplus/screens/terminate-season.dart';
import 'package:ourcarmyplus/screens/welcome.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/intro':
        return MaterialPageRoute(builder: (_) => IntroductionPage());
      case '/welcome':
        return MaterialPageRoute(builder: (_) => WelcomePage());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/signup':
        return MaterialPageRoute(builder: (_) => SignUpPage());
      case '/otp/set-password':
        return MaterialPageRoute(builder: (_) => Otp1Page());
      case '/otp/reset-password':
        return MaterialPageRoute(builder: (_) => Otp2Page());
      case '/set-password':
        return MaterialPageRoute(builder: (_) => SetPasswordPage());
      case '/reset-password-1':
        return MaterialPageRoute(builder: (_) => ResetPasswordPage());
      case '/reset-password-2':
        return MaterialPageRoute(builder: (_) => ResetPassword2Page());
      case '/set-location':
        return MaterialPageRoute(builder: (_) => SetLocationPage());
      case '/home':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/parking':
        return MaterialPageRoute(builder: (_) => ParkingPage());
      case '/parking/available':
        return MaterialPageRoute(builder: (_) => ParkingAvailable());
      case '/parking/detail':
        return MaterialPageRoute(builder: (_) => ParkingDetailPage());
      case '/scan':
        return MaterialPageRoute(builder: (_) => ScanQrPage());
      case '/payment-details':
        return MaterialPageRoute(builder: (_) => PaymentDetailPage());
      case '/payment-method':
        return MaterialPageRoute(builder: (_) => PaymentMethodPage());
      case '/payment-method-fpx':
        return MaterialPageRoute(builder: (_) => PaymentMethodFpxPage());
      case '/payment/receipt':
        return MaterialPageRoute(builder: (_) => ReceiptPage());
      case '/payment/invoice':
        return MaterialPageRoute(builder: (_) => InvoicePage());
      case '/payment/history':
        return MaterialPageRoute(builder: (_) => PaymentHistoryPage());
      case '/season-register':
        return MaterialPageRoute(builder: (_) => RegisterSeasonPage());
      case '/season-renew':
        return MaterialPageRoute(builder: (_) => RenewSeasonPage());
      case '/season-terminate':
        return MaterialPageRoute(builder: (_) => TerminateSeasonPage());
      case '/profile':
        return MaterialPageRoute(builder: (_) => ProfilePage());
      case '/change-password':
        return MaterialPageRoute(builder: (_) => ChangePasswordPage());
      case '/settings':
        return MaterialPageRoute(builder: (_) => SettingPage());
      case '/inbox':
        return MaterialPageRoute(builder: (_) => InboxPage());
      default:
        return null;
    }
  }
}

class BasicInfoPage {
}
