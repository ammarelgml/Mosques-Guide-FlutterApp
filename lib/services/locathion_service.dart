
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:location/location.dart';

//import 'auth_service.dart';
//import 'settings_service.dart';
import 'dart:async';

class LocationService extends GetxService {
   Location location = Location();
  LocationData? locationData;
  RxBool loading = false.obs;
  late PermissionStatus _permissionGranted;
  bool _serviceEnabled=false;

 // LocationService() {}
  Future<LocationService> init() async {
    print("wwwwww 1");
    await _checkPermissions();
    print("wwwwww 2");
    if (_permissionGranted == PermissionStatus.granted ||
        _permissionGranted == PermissionStatus.grantedLimited) {
      print("wwwwww 3");
      await intiLoc();
    } else {
      print("wwwwww 4");
      await _requestPermission();
      print("wwwwww 5");
      await intiLoc();
    }

    return this;
  }

  Future<void> intiLoc() async {
    setConfig();
    print("wwwwww 6");
    await _getLocation();
  }

  Future<void> _checkPermissions() async {
    final PermissionStatus permissionGrantedResult =
        await location.hasPermission();
    // setState(() {
    _permissionGranted = permissionGrantedResult;
    // });
  }

  setConfig() {
    location.changeSettings(
      accuracy: LocationAccuracy.high,
      interval: 1000,
      // distanceFilter: double.parse(_distanceFilterController.text),
    );
  }

  String? _error;

  Future<void> _getLocation() async {
    // setState(() {
   // _error = null;
    loading.value = true;
     // LocationData _locationResult
     // = await location.getLocation()
     //    .timeout(Duration(seconds: 3),
     //    onTimeout:(){
     //      loading.value = false;
     //      return ;});
    // _locationResult = await Future.any([
    //   location.getLocation(),
    //   Future.delayed(Duration(seconds: 5), () => null),
    // ]);
    // if (_locationResult == null) {
    //   _locationResult = await location.getLocation();
    // }
    // });
    try {
      print("wwwwww 7");
      await _checkService();
      if(!_serviceEnabled){
        await _requestService();
      }
      LocationData _locationResult
      = await location.getLocation();
          // .timeout(Duration(seconds: 5),
          // onTimeout:(){
          //   loading.value = false;
          //   return ;});
      _listenLocation();
      print("wwwwww 8");
      // setState(() {
      locationData = _locationResult;
      // Get.find<SettingsService>()
      //     .address
      //     .update((val) {
      //   val.description = "موقعي";
      //   val.address =locationData.provider??"..." ;
      //   val.latitude = locationData.latitude;
      //   val.longitude = locationData.longitude;
      //   val.userId =
      //       Get.find<AuthService>().user.value.id;
      // });
      loading.value = false;
      // });
    } on PlatformException catch (err) {
      // setState(() {
      _error = err.code;
      loading.value = false;
      // });
    }
  }
  StreamSubscription<LocationData>? _locationSubscription;
  Future<void> _listenLocation() async {
    _locationSubscription =
        location.onLocationChanged.handleError((dynamic err) {
          if (err is PlatformException) {

              _error = err.code;

          }
          _locationSubscription?.cancel();

           // _locationSubscription = null;

        }).listen((LocationData currentLocation) {

           // _error = null;

            locationData = currentLocation;

        });

  }

  Future<void> _requestPermission() async {
    if (_permissionGranted != PermissionStatus.granted) {
      final PermissionStatus permissionRequestedResult =
          await location.requestPermission();
      // setState(() {
      _permissionGranted = permissionRequestedResult;
      // });
    }
  }

  Future<void> _checkService() async {
    final bool serviceEnabledResult = await location.serviceEnabled();
    // setState(() {
    _serviceEnabled = serviceEnabledResult;
    // });
  }

  Future<void> _requestService() async {
    if (_serviceEnabled == true) {
      return;
    }
    final bool serviceRequestedResult = await location.requestService();
    // setState(() {
    _serviceEnabled = serviceRequestedResult;
    // });
  }
}
