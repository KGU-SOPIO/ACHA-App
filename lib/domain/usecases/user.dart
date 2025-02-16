import 'package:acha/data/models/index.dart';
import 'package:acha/domain/repositories/index.dart';

class FetchUserUseCase {
  FetchUserUseCase({required this.userRepository});

  final UserRepository userRepository;

  Future<User> call() async {
    return await userRepository.fetchUser();
  }
}
