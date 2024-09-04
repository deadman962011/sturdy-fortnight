import 'package:shamel_store_app/features/business/domain/models/business_plan_body.dart';
import 'package:shamel_store_app/features/business/domain/models/package_model.dart';

abstract class BusinessServiceInterface{
  Future<PackageModel?> getPackageList();
  Future<String> processesBusinessPlan(String businessPlanStatus, int paymentIndex, int storeId, String? digitalPaymentName, int? selectedPackageId);
  Future<String> setUpBusinessPlan(BusinessPlanBody businessPlanBody, String? digitalPaymentName, String businessPlanStatus, int storeId, int? packageId);
}