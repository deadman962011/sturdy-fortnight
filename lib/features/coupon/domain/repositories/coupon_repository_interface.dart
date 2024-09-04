import 'package:shamel_store_app/interface/repository_interface.dart';

abstract class CouponRepositoryInterface implements RepositoryInterface {
  Future<dynamic> addCoupon(Map<String, String?> data);
  Future<dynamic> getCouponList(int offset);
  Future<dynamic> changeStatus(int? couponId, int status);
}