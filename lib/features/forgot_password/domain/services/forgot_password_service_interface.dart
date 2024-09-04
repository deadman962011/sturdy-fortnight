import 'package:shamel_store_app/common/models/response_model.dart';
import 'package:shamel_store_app/features/profile/domain/models/profile_model.dart';

abstract class ForgotPasswordServiceInterface {
  Future<bool> changePassword(ProfileModel userInfoModel, String password);
  Future<ResponseModel> forgetPassword(String? email);
  Future<ResponseModel> verifyToken(String? email, String token);
  Future<ResponseModel> resetPassword(String? resetToken, String? email, String password, String confirmPassword);
}