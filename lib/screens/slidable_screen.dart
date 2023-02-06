import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slidable_application/controller/slidable_controller.dart';

class SlidableScreen extends StatelessWidget {
  SlidableScreen({Key? key}) : super(key: key);

  SlidableController controller = Get.put(SlidableController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slidable"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Obx(
              () => Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width + 0.5,
                color: Colors.red.withOpacity(controller.opacity.value),
              ),
            ),
            Obx(
              () => Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width + 0.5,
                color: Colors.green.withOpacity(controller.opacity.value),
              ),
            ),
            Obx(
              () => Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width + 0.5,
                color: Colors.blue.withOpacity(controller.opacity.value),
              ),
            ),
            Obx(
              () => Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width + 0.5,
                color: Colors.yellow.withOpacity(controller.opacity.value),
              ),
            ),
            Obx(
              () => Slider(
                  value: controller.opacity.toDouble(),
                  onChanged: (value) {
                    controller.setOpacity(value);
                    print(controller.opacity.toDouble());
                  }),
            )
          ],
        ),
      ),
    );
  }
}
