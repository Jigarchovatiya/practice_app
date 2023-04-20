import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class VideoSelector extends StatefulWidget {
  const VideoSelector({Key? key}) : super(key: key);

  @override
  State<VideoSelector> createState() => _VideoSelectorState();
}

class _VideoSelectorState extends State<VideoSelector> {
  File? _video;
  VideoPlayerController? _videoPlayerController;
  final picker = ImagePicker();
  _pickVideo() async {
    final video = await picker.pickVideo(source: ImageSource.gallery);
    _video = File(video!.path);
    _videoPlayerController = VideoPlayerController.file(_video!)
      ..initialize().then((value) {
        setState(() {});

        _videoPlayerController!.pause();
      });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Video Player"),
        ),
        body: Center(
          child: Column(
            children: [
              if (_video != null)
                _videoPlayerController!.value.isInitialized
                    ? AspectRatio(
                        aspectRatio: _videoPlayerController!.value.aspectRatio,
                        child: VideoPlayer(_videoPlayerController!),
                      )
                    : Container()
              else
                const Text("click on pick video to select video"),
              ElevatedButton(
                onPressed: () {
                  _pickVideo();
                },
                child: const Text("pick video file from gallery"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
