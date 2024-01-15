  import 'dart:async';
import 'package:http/http.dart' as http;
Future<String> race(List<String> apiUrls, String address) async {
  if(apiUrls.length == 1){
    return apiUrls[0];  
  }

  final completer = Completer<String>();
  for(final url in apiUrls){
    http.get(Uri.parse(url + address)).then((value) => {
      if(!completer.isCompleted){
        completer.complete(url)
      }
    });  
  }

  return completer.future;  
}

  // race(['https://dawsapitpp2.v662n.com','https://dgcpapitpp1.eopha7f.com:10152'], '/game/version').then((value){
