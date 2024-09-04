import 'package:shamel_store_app/interface/repository_interface.dart';

abstract class PosRepositoryInterface implements RepositoryInterface {
  Future<dynamic> searchItemList(String searchText);
  Future<dynamic> searchCustomerList(String searchText);
  Future<dynamic> placeOrder(String searchText);
  Future<dynamic> getPosOrders();
}