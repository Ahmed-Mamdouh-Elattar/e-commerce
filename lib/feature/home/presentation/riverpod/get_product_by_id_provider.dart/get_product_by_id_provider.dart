import 'package:e_commerce/core/entities/product_entity.dart';
import 'package:e_commerce/feature/home/domain/usecases/get_product_by_id_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getProductByIdProvider = FutureProvider.family
    .autoDispose<ProductEntity, String>((ref, productId) async {
      final getProductByIdUsecase = ref.read(getProductByIdUsecaseProvider);
      return getProductByIdUsecase.getProductById(productId);
    });
