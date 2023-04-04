part of 'profile_bloc.dart';

abstract class ProfileEvent {}
class FetchInfoProfile extends ProfileEvent{}
class UpdateInfoProfile extends ProfileEvent{
  UpdateInfoProfile({required this.profile});
  final Profile profile;
}