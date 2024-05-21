// import 'dart:typed_data';

// import 'package:bloc/bloc.dart';
// import 'package:flutter_application_1/features/dashboard/modules/product/model/entity_model/product_model.dart';
// import 'package:flutter_application_1/features/dashboard/modules/product/model/repo/database_repo.dart';
// import 'package:meta/meta.dart';

// part 'product_state.dart';

// class ProductCubit extends Cubit<ProductState> {
//   ProductCubit() : super(ProductStateLoading()) {
//    init();

//   }

//   List<ProductModel> products = [];
//   DatabaseRepo repo = DatabaseRepo();

//   Future<void> init() async {
//     emit(ProductStateLoading());
//         await repo.initDB();
//     await repo.insertProduct('product1', "desc", 1, 10, Uint8List(10));
//      await   repo.insertProduct('product2', "desc2", 1, 20, Uint8List(10));

//     products = await repo.fetchProducts();
//     if (products.isEmpty) {
//       emit(ProductStateEmpty());
//     } else {
//       emit(ProductStateLoaded());
//     }
//   }

//   void addItemtofavorite(int id, int value) {
//     repo.updateFavorite(value, id);
//     init();
//     emit(ProductStateLoaded());
//   }

//   void addItemtocart(int id) {
//     repo.updateCart(1, id);
//     emit(ProductStateLoaded());
//   }
// }
import 'dart:typed_data';
import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/features/dashboard/modules/product/model/entity_model/product_model.dart';
import 'package:flutter_application_1/features/dashboard/modules/product/model/repo/database_repo.dart';
import 'package:meta/meta.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  static ProductCubit instance = ProductCubit();
  ProductCubit() : super(ProductStateLoading()) {
    init();
  }

  List<ProductModel> products = [];
  DatabaseRepo repo = DatabaseRepo();

  Future<void> init() async {
    emit(ProductStateLoading());
    await repo.initDB();
    // await repo.insertProduct('product1', "desc", 1, 10, Uint8List(10));
    // await repo.insertProduct('product2', "desc2", 1, 20, Uint8List(10));

    products = await repo.fetchProducts();
    if (products.isEmpty) {
      emit(ProductStateEmpty());
    } else {
      emit(ProductStateLoaded());
    }
  }

  void addItemtofavorite(int id, int value) {
    repo.updateFavorite(value, id);
    init();
  }

  void addItemtocart(int id) {
    repo.updateCart(1, id);
    emit(ProductStateLoaded());
  }
}
