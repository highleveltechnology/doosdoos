import 'dart:developer';

import 'package:doos/src/core/services/location_service.dart';
import 'package:doos/src/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this .locationService) : super(HomeInitial());
  final LocationService locationService;
  Future<void>getCurrentLocation() async {
    log('Calling getCurrentLocation');
    emit(HomeLoading());
    try {
      final location = await locationService.getCurrentLocation();
      final address=await locationService.getAddressFromLatLng(location.latitude, location.longitude);
      log('Location: ${location.latitude}, ${location.longitude}');
      log('Address: $address');
      emit(HomeLoaded(address));
    } catch (e) {
      emit(HomeError(e.toString()));
    }
  }
}
