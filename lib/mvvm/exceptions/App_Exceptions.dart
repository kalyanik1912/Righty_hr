class App_Exception implements Exception{

  final _message;
  final _prefix;

  App_Exception([this._message,this._prefix]);

  String toString(){
    return '$_prefix$_message';
  }
}


class InternetException extends App_Exception{

  InternetException([String? message]): super(message, 'No Internet');
}