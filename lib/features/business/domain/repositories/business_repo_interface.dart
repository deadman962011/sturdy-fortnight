import 'package:get/get_connect/connect.dart';
import 'package:shamel_store_app/features/business/domain/models/business_plan_body.dart';
import 'package:shamel_store_app/interface/repository_interface.dart';

abstract class BusinessRepoInterface<T> implements RepositoryInterface<T> {
  Future<Response> setUpBusinessPlan(BusinessPlanBody businessPlanBody);
}