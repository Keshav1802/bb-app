import 'package:get/get.dart';
import 'listrectangle14_item_model.dart';

/// This class defines the variables used in the [android_large_five_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AndroidLargeFiveModel {
  Rx<List<Listrectangle14ItemModel>> listrectangle14ItemList =
      Rx(List.generate(6, (index) => Listrectangle14ItemModel()));
}
