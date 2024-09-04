import 'package:shamel_store_app/features/store/domain/models/item_model.dart';

abstract class AddonServiceInterface {
  Future<List<AddOns>?> getAddonList();
  Future<bool> addAddon(AddOns addonModel);
  Future<bool> updateAddon(Map<String, dynamic> body);
  Future<bool> deleteAddon(int? addonID);
  List<int?> prepareAddonIds(List<AddOns> addonList);
}