import 'package:bloc/bloc.dart';
import 'package:chat_gpt/bloc/session/session_state.dart';
import 'package:chat_gpt/core/helper/event_bus.dart';
import 'package:chat_gpt/di/injection.dart';

import '../../core/events/session_expired_event.dart';

class SessionBloc extends Cubit<SessionState> {
  final _eventBus = getIt<EventBus>();

  SessionBloc() : super(SessionInitial()) {
    _eventBus.on<SessionExpiredEvent>().listen((_) {
      emit(SessionExpired());
    });
  }
}
