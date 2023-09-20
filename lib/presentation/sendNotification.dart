import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


import 'package:googleapis/fcm/v1.dart' as v1;
import 'package:googleapis_auth/auth_io.dart';



class SendNotification extends StatefulWidget {
  const SendNotification({super.key});

  @override
  State<SendNotification> createState() => _SendNotificationState();
}

class _SendNotificationState extends State<SendNotification> {


TextEditingController controller = TextEditingController();
  Notify notify = Notify();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: ()=> context.pop(),
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Send Notificaiton'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(
            controller: controller,
          ),
          MaterialButton(onPressed: () async {
          bool tt = await notify.sendMessage(controller.text);
          tt;
          print('====================================================${tt}========================================');

          },
          child: const Text('send'),),
        ],
      )
    );
  }
}




class Notify {
  static final credentials = ServiceAccountCredentials.fromJson(r'''
{
  "type": "service_account",
  "project_id": "gsheetauth",
  "private_key_id": "05eeb079d5933da6553dd4c3b0427f5c49b8a7f3",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCM++gwOtt5uhvS\nC6ng/YQ/H5fnxI3iZ4aKthE8Yy/fGgxw5pKnucbrQgBBxfnDqeH6sooe2+pR6ljE\n27gqxkBFUs/0wVtshf7mZRhaH36wPyZ5sC1QbNkISOs0jX7GjAy+NZADYZ+LCZaU\nNupVV9htZ+qEnd49dBM3OAi6ugYV7ULG9R5XB1yh9+6xQfc9k/X9iJbYfoK3s/2h\nVkX+iaEBEFxeDw0Wm5cGq3iJF6qdcOjfcmoVTHaiuajjYLgKjVFmB5N6t0W44f+N\n6CQX5vWyJiTtHKA3fEnUfgUKYPgq0IBEfAVbu6rRUG6ofG83/3MUCuVlitGlgn8i\nDxkpzzkPAgMBAAECggEACwrL48MoX39ZIHlzY8DXc844qpl1d28eVYzvCqjGHhY/\nNTSJ9gMR9mkj9gLYjh+nKGiFcudMkf/l1f1Tjl4auJNE4GmojHZuQYNXhe+Dj7BS\nhiNrWSo9UW3MpkAS1uAvO1KcpfcmdNBab99hOS/5LpB+CMcImg2WV7PW0zEwutTN\nqsyLvmpYBsLsyf987tXbFX1LMN0pZrkH1mL/jUoWJWLeWp7hBnrJMgNCZ0cAK4JL\nFUy4YpmpVbGDQ/e3J2pwxiTIlEuAT0zC4gkMNPTliXoWC1HAlauLNWG1lpp1JQN+\nJJBHeQEJXOQtJ8bYlvmZmpOXkPqW1gGjkrF9ymlkQQKBgQDCQdUcLsWDeHtYrPFh\nqAFz6LxMa7NmIkmS486vOcmzxU4NJ3TUgeDMDs8Mevc21/1JAAcz6aV2P1qnrxIQ\n/qRRrt6sfEbvVYUWixIqI1kqnKbC3wtk8o9I2KvgTAXA9HuJIRgdA25I2Kv5bwiW\nlU0EO4KGMdjLZziuzG0Y2oyxbwKBgQC5y2LPyX5SmTSXXgXtZSfiBTf7t4k3OMeA\nqfAG3pomnTX6jcT662tC0u6a6M0kMqa3FYqMPGhQXgrSDM74e7JUBa659E99mTj+\nBJW6N4dVw1/8l6DSXU62Oiqrlege2bwyCS+J66cWKtaHR+ptRGCDFerD0WMiStUu\nVEh0UeTiYQKBgGDKCHMoYsVk7KB8WzD7Uu370oaJSzPidaI426y3MGbgMkmflTil\nFerWnhdr1W2AJPWQjAYzrnvCiVrvgiLxndINPWnX6kgp5kwbMwvH3Q+8SeLi23yK\n1xXGz6zMdDl2F292C9u47+RgASAhULgm397x/9D5WTnPzpBZzyoJCv0FAoGBAIbO\nzCN4T/AeucoarrJRc17L6pL52NX4nMj+hOp3GeJqr3/c3dAygOE7q2U7BZ3+Ink1\naBHYwteNZMyD/qjNF9dfSCgk3IiFZJTrPrifEdNor3zXiBkbGsGd8tgNLR81XRfx\nEk1AbzvmWUJPLAmcU2rJvE3Y39VB9uxmuyurQCgBAoGAXbjroDUaA9KtolHX8aFX\nU7cZbZn2RAdrKjCmctptIrmbOnHUdb2VR1iRocvHvsk2FViqmiXgLXAhWfe7vug6\neLakYfoTS7gNWkBsrGyS14IMPURZ+GcTKyn/V3RGQTk0SHwtNjUxHBOPd4RtoDB4\nn56qq9Zt9VHOk8Yya5Qgr1s=\n-----END PRIVATE KEY-----\n",
  "client_email": "firebase-adminsdk-tckw6@gsheetauth.iam.gserviceaccount.com",
  "client_id": "111595146477749054472",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-tckw6%40gsheetauth.iam.gserviceaccount.com",
  "universe_domain": "googleapis.com"
}

  ''');

  static final scopes = ['https://www.googleapis.com/auth/firebase.messaging'];

  Future<bool> sendMessage(String content) async {
    var client = await clientViaServiceAccount(credentials, scopes);
    var fcm = v1.FirebaseCloudMessagingApi(client);

    var message = v1.Message()
      // 단체 공지를 위한 채널 생성
      ..topic = 'NOTIFY'
      ..notification = (v1.Notification()
        ..title = '공지사항'
        ..body = content);

    await fcm.projects.messages.send(
        v1.SendMessageRequest()..message = message, 'projects/gsheetauth');

    return false;
  }

  Future<bool> sendUpdateMessage(String content) async {
    var client = await clientViaServiceAccount(credentials, scopes);
    var fcm = v1.FirebaseCloudMessagingApi(client);

    var message = v1.Message()
      // 단체 공지를 위한 채널 생성
      ..topic = 'NOTIFY'
      ..notification = (v1.Notification()
        ..title = '변경된 공지사항'
        ..body = content);

    await fcm.projects.messages.send(
        v1.SendMessageRequest()..message = message, 'projects/gsheetauth');
    return false;
  }
}
