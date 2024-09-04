import 'package:get/get.dart';
import 'package:shamel_store_app/api/api_client.dart';
import 'package:shamel_store_app/features/business/domain/models/business_plan_body.dart';
import 'package:shamel_store_app/features/business/domain/models/package_model.dart';
import 'package:shamel_store_app/features/business/domain/repositories/business_repo_interface.dart';
import 'package:shamel_store_app/util/app_constants.dart';

class BusinessRepo implements BusinessRepoInterface<dynamic> {
  final ApiClient apiClient;

  BusinessRepo({required this.apiClient});

  @override
  Future<Response> setUpBusinessPlan(BusinessPlanBody businessPlanBody) async {
    return await apiClient.postData(AppConstants.businessPlanUri, businessPlanBody.toJson());
  }

  @override
  Future<PackageModel?> getList({int? offset}) async {
    PackageModel? packageModel;
    Response response = await apiClient.getData(AppConstants.restaurantPackagesUri);
    if(response.statusCode == 200) {
      packageModel = PackageModel.fromJson(response.body);
    }
    return packageModel;
  }

  @override
  Future add(dynamic value) {
    throw UnimplementedError();
  }

  @override
  Future delete(int? id) {
    throw UnimplementedError();
  }

  @override
  Future get(int? id) {
    throw UnimplementedError();
  }

  @override
  Future update(Map<String, dynamic> body) {
    throw UnimplementedError();
  }

}
