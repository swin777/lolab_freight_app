import 'package:flutter/material.dart';
import 'package:lolab_freight_app/src/controller/freight_map_controller.dart';
import 'package:get/get.dart';

class RemodeCon extends StatelessWidget {
  RemodeCon({Key? key}) : super(key: key);
  FreightMapController controller = FreightMapController.to;
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: size.width - 40,
      height: 52,
      decoration: BoxDecoration(
        color: const Color(0xdd2a3f85),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
            color: const Color(0xff005e35), width: 1, style: BorderStyle.solid),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 60,
            child: Obx(() => 
              IconButton(
                icon: controller.playMode.value ? const Icon(Icons.pause_circle,size: 40,color: Colors.white,) : const Icon(Icons.play_circle,size: 40,color: Colors.white,),
                onPressed: controller.playAndStop,
            )),
          ),
          Expanded(
            child: Obx(() => Text(controller.roadName.value ,style: const TextStyle(color: Colors.white, fontSize: 16),textAlign: TextAlign.center))
          ),
          SizedBox(
            width: 60,
            child: IconButton(
              icon: const Icon(
                Icons.close,
                size: 40,
                color: Colors.white,
              ),
              onPressed: () {
                controller.playMode.value = false;
                controller.timer!.cancel();
                controller.simulationMode.value = false;
              },
            ),
          ),
        ],
      ),
    );
  }
}
