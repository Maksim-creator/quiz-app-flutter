import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quizz_app/api/entities.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit()
      : super(UserState(
            leader: Leader(avatar: '', name: '', totalExperience: 0)));

  void setLeader(Leader data) {
    return emit(UserState(leader: data));
  }
}
