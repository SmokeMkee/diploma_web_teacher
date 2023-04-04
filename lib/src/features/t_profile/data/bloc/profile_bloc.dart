import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../dto/profile_model.dart';
import '../repo/repo_profile.dart';

part 'profile_event.dart';

part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final RepoProfile repo;

  ProfileBloc({required this.repo}) : super(ProfileInitial()) {
    on<FetchInfoProfile>(fetchData);
    on<UpdateInfoProfile>(updateData);
  }

  Future<void> fetchData(
    FetchInfoProfile event,
    Emitter<ProfileState> emit,
  ) async {
    try{
      emit(ProfileLoading());
      final response = await repo.fetch();
      emit(
        ProfileData(data: response),
      );
    }catch(e){
      emit(ProfileError(message: 'error message'));
    }

  }

  Future<void> updateData(
      UpdateInfoProfile event,
      Emitter<ProfileState> emit,
      ) async {
    try{
      emit(ProfileLoading());
      final response = await repo.updateInfo(event.profile);

      emit(
        ProfileData(data: response),
      );
    }catch(e){
      emit(ProfileError(message: 'SomethingError'));
    }

  }
}
