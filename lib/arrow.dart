import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class arrow extends StatefulWidget {
  arrow({Key? key}) : super(key: key);

  @override
  _arrowState createState() => _arrowState();
}

class _arrowState extends State<arrow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Direction of map in camera'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Add a 3D model here if available. Replace 'model_url_here' with the actual model URL.
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: ModelViewer(
                src:
                    'assets/dp.glb', // Add your 3D model URL
                ar: true,
                alt: 'A 3D model of map',
                autoPlay: true,
                autoRotate: true,
                cameraControls: true,
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    margin: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0,
                    child: const Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Instructions',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Follow it carefully ',
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'Importent',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 10),
                          Text(
                            '• 1. Straight\n'
                            '• 2. Left\n',
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
