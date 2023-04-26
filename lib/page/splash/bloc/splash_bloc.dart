import 'package:bloc/bloc.dart';
import 'package:chat_gpt/page/splash/bloc/splash_state.dart';

class SplashBloc extends Cubit<SplashState>{
  SplashBloc() : super (SplashInitial());

  Future<void> checkStatus() async{
    return Future.delayed(const Duration(seconds:  2), () async{
      emit(SplashLoggedIn());
    });
  }
}