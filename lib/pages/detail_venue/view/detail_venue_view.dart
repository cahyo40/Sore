import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sore_book/pages/detail_venue/controller/detail_venue_controller.dart';

class DetailVenueView extends GetView<DetailVenueController> {
  const DetailVenueView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailVenueView'),
      ),
      body: const SafeArea(
        child: Text('DetailVenueViewController'),
      ),
    );
  }
}
