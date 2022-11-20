import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltsm_visibility_controller.dart';

class LtsmVisibilityView extends StatefulWidget {
  const LtsmVisibilityView({Key? key}) : super(key: key);

  Widget build(context, LtsmVisibilityController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtsmVisibility"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: [
                /*
                ? Buat variabel visible di dalam State/Controller
                ! bool visible = false;

                ? Tambahkan statement ini di dalam Column:
                if(controller.loading)
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.red,
                  ),

                ? Buat sebuah button, dan tambahkan kode ini di dalam event onPressed()
                /*
                controller.visible = controller.visible!;
                controller.setState((){});
                */
                  
                */

                if (controller.loading)
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.red,
                  ),
                Text(
                  "Visible: ${controller.visible}",
                  style: const TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.add),
                  label: const Text("Update"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {
                    controller.visible = !controller.visible;
                    controller.setState(() {});
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<LtsmVisibilityView> createState() => LtsmVisibilityController();
}
