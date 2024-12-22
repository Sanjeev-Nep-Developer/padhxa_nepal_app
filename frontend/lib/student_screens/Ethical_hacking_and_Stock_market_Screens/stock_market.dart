import 'package:flutter/material.dart';
import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:cached_video_player/cached_video_player.dart';
import 'package:frontend/api.dart';

class Video {
  final String title;
  final String url;

  Video({required this.title, required this.url});
}

class StockMarketScreen extends StatefulWidget {
  const StockMarketScreen({super.key});

  @override
  State<StockMarketScreen> createState() => _StockMarketScreenState();
}

class _StockMarketScreenState extends State<StockMarketScreen> {
  late CustomVideoPlayerController _customVideoPlayerController;
  late CachedVideoPlayerController _cachedVideoPlayerController;
  int _currentVideoIndex = 0;
  final List<bool> _isPlayingList = [];

  final List<Video> _videos = List.generate(10, (index) => Video(
    title: 'Video ${index + 1}',
    url: '${ApiEndpoints.stockMarket}/v${index + 1}.mp4',
  ));

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer(_videos[_currentVideoIndex].url);
    _isPlayingList.addAll(List.generate(_videos.length, (index) => index == 0));
  }

  void initializeVideoPlayer(String url) {
    _cachedVideoPlayerController = CachedVideoPlayerController.network(url)
      ..initialize().then((_) {
        setState(() {});
        _cachedVideoPlayerController.play();
      }).catchError((error) {
        print('Video initialization error: $error');
      });

    _customVideoPlayerController = CustomVideoPlayerController(
      context: context,
      videoPlayerController: _cachedVideoPlayerController,
    );
  }

  void _onVideoTap(int index) {
    setState(() {
      _currentVideoIndex = index;
      initializeVideoPlayer(_videos[index].url);
      _updatePlayingStatus(index);
    });
  }

  void _updatePlayingStatus(int index) {
    for (int i = 0; i < _isPlayingList.length; i++) {
      _isPlayingList[i] = i == index;
    }
  }

  @override
  void dispose() {
    _cachedVideoPlayerController.dispose();
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text('Stock Market', style: TextStyle(fontFamily: "MainFont", color: Colors.white)),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                if (_cachedVideoPlayerController.value.isInitialized)
                  AspectRatio(
                    aspectRatio: _cachedVideoPlayerController.value.aspectRatio,
                    child: CustomVideoPlayer(
                      customVideoPlayerController: _customVideoPlayerController,
                    ),
                  )
                else
                  CircularProgressIndicator(),
                SizedBox(height: 20),
                Text(
                  _videos[_currentVideoIndex].title,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: "MainFont",
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: ListView.builder(
                itemCount: _videos.length,
                itemBuilder: (context, index) {
                  var video = _videos[index];
                  return GestureDetector(
                    onTap: () => _onVideoTap(index),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Text(
                              '${index + 1}.',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: "MainFont",
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: Text(
                                video.title,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "MainFont",
                                ),
                              ),
                            ),
                            SizedBox(width: 16),
                            ElevatedButton(
                              onPressed: () => _onVideoTap(index),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueAccent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                _isPlayingList[index] ? 'Playing' : 'Play',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "MainFont",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
