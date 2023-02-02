import 'package:bloc/bloc.dart';
import 'package:quizz_app/api/entities.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit()
      : super(AuthState(
            userData: UserData(
                email: '',
                name: '',
                token: '',
                data: UserGameData(
                    balance: 0, totalExperience: 0, rank: 0, level: 0),
                avatar: '')));

  void setLoginData(UserData data) => emit(AuthState(userData: data));
}
