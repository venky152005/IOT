import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iot_application/controllers/device_controller.dart';
import 'package:iot_application/views/screens/finded_device.dart';
import 'package:iot_application/views/widgets/glass.dart';

class GridViewWidget extends StatefulWidget {
  const GridViewWidget({super.key});

  @override
  State<GridViewWidget> createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  final deviceController = Get.put(DeviceController());
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      deviceController.deviceList();
    });
  }

  List images = [
    'images/generator1.jpg',
    'images/generator1.jpg',
    'images/generator1.jpg',
    'images/generator1.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return deviceController.devicesList.isEmpty
            ? const Center(child: Text('No Data'))
            : Center(
                child: GridView.builder(
                  padding: const EdgeInsets.all(10),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: deviceController.devicesList.length,
                  itemBuilder: (context, index) => ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FindDevice(
                                id: deviceController.devicesList[index].id ??
                                    '',
                              ),
                            ),
                          );
                        },
                        child: PositionWidget(
                          link: images[index],
                          name: deviceController.devicesList[index].name ?? '',
                        ),
                      ),
                    ),
                  ),
                ),
              );
      },
    );
  }
}

class PositionWidget extends StatelessWidget {
  final String link;
  final String name;

  const PositionWidget({super.key, required this.link, required this.name});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GlassMorphismWidget(
          height: 500,
          width: 250,
          box: Column(
            children: [
              Center(
                child: Image.asset(
                  link,
                  height: 160,
                  width: 180,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                name,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
