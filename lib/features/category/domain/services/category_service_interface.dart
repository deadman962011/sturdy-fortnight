import 'package:shamel_store_app/features/category/domain/models/category_model.dart';
import 'package:shamel_store_app/features/store/domain/models/item_model.dart';

abstract class CategoryServiceInterface {
  Future<List<CategoryModel>?> getCategoryList();
  Future<List<CategoryModel>?> getSubCategoryList(int? parentID);
  int? categoryIndex(List<CategoryModel>? categoryList, Item? item);
  int? subCategoryIndex(List<CategoryModel>? subCategoryList, Item? item);
}