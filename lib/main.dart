import 'package:flutter/material.dart';
import 'package:split_view/split_view.dart';
import 'package:subjump/widget/media_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Media Player Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Subjump Home'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Media Player Demo'),
      // ),
      body: SplitView(
        controller: SplitViewController(), viewMode: SplitViewMode.Horizontal,
        children: [
          // 左侧为媒体播放器
          MediaPlayer(),
          // 右侧为播放文件列表
          FileList(),
        ],
      ),
    );
  }
}

class FileList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 在这里构建播放文件列表部分的 UI
    return Container(
      color: Colors.grey, // 示例颜色，根据实际需要修改
      child: Column(
        children: [
          Text('File 1'),
          Text('File 2'),
          Text('File 3'),
          // 可以添加更多文件列表项
        ],
      ),
    );
  }
}


