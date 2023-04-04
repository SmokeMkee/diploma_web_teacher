part of 'profile_bloc.dart';

abstract class ProfileState {}

class ProfileInitial extends ProfileState {}
class ProfileLoading extends ProfileState {}
class ProfileData extends ProfileState {
  ProfileData({required this.data});
  final Profile data;
}
class ProfileError extends ProfileState {
  ProfileError({required this.message});
  final String message;
}

