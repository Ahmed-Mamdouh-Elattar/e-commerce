import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:e_commerce/core/error/failure.dart';
import 'package:e_commerce/feature/address/data/datasources/address_remote_data_source.dart.dart';
import 'package:e_commerce/core/models/user_address_model.dart';
import 'package:e_commerce/core/entities/user_address_entity.dart';
import 'package:e_commerce/feature/address/domain/repositories/address_repo.dart';

class AddressRepoImpl implements AddressRepo {
  final AddressRemoteDataSource _remoteDataSource;
  final Connectivity _connectivity;
  AddressRepoImpl({
    required AddressRemoteDataSource remoteDataSource,
    required Connectivity connectivity,
  }) : _remoteDataSource = remoteDataSource,
       _connectivity = connectivity;

  @override
  Future<void> addAddress(UserAddressEntity address) async {
    final connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.none)) {
      throw Failure(message: 'No internet connection');
    }
    await _remoteDataSource.addAddress(UserAddressModel.fromEntity(address));
  }

  @override
  Future<List<UserAddressEntity>> getAddresses() async {
    final connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.none)) {
      throw Failure(message: 'No internet connection');
    }
    final addresses = await _remoteDataSource.getAddresses();
    return addresses.map((e) => e.toUserAddressEntity()).toList();
  }

  @override
  Future<void> deleteAddress(String id) async {
    final connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.none)) {
      throw Failure(message: 'No internet connection');
    }
    await _remoteDataSource.deleteAddress(id);
  }

  @override
  Future<void> changeDefaultAddress(String id) async {
    final connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.none)) {
      throw Failure(message: 'No internet connection');
    }
    await _remoteDataSource.changeDefaultAddress(id);
  }
}
