
import '../../../../../../api/api.dart';
import '../dto/profile_model.dart';

class RepoProfile {
  RepoProfile({required this.api});

  final Api api;

  Future<Profile> fetch() async {
    final result = await api.dio.get(
      '/user-info/get-user-info',
    );
    return Profile.fromJson(result.data);
  }

  Future<Profile> updateInfo(Profile profile) async {
    final result = await api.dio.post(
      '/user-info/update-user-info',
      data: {
        "name": profile.name,
        "surname": profile.surname,
        "patronymic": profile.patronymic,
        "email": profile.email,
        "birthdate": profile.birthdate,
        "phone": profile.phone,
        "country": profile.country,
        "city": profile.city,
        "street": profile.street
      },
    );
    return Profile.fromJson(result.data);
  }
}
