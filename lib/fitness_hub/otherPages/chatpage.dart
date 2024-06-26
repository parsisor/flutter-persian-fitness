import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:record/record.dart';
import 'package:path_provider/path_provider.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _chatController = TextEditingController();
  final List<Map<String, String>> _messages = [
    {'name': 'ابی', 'text': 'چطور میتونم کمکتون کنم؟'}
  ];
  final ScrollController _scrollController = ScrollController();
  final Record _audioRecorder = Record();
  bool _isRecording = false;
  late String _recordFilePath;

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
    });
  }

  void _sendMessage() async {
    if (_chatController.text.isNotEmpty) {
      setState(() {
        _messages.add({"name": "کاربر", "text": _chatController.text});
      });

      try {
        var response = await http.post(
          Uri.parse('https://heavy-wasps-visit.loca.lt/bodybuilding_plan'), // Replace with your server URL
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode({'input_text': _chatController.text}),
        );

        if (response.statusCode == 200) {
          var data = jsonDecode(response.body);
          String message = data['response'] ?? "No response";

          setState(() {
            _messages.add({"name": "ابی", "text": message});
          });
        } else {
          setState(() {
            _messages.add({"name": "ابی", "text": "Error: ${response.statusCode}, ${response.reasonPhrase}"});
          });
          print("Error: ${response.statusCode}, ${response.reasonPhrase}");
        }
      } catch (e) {
        setState(() {
          _messages.add({"name": "ابی", "text": "Connection error: $e"});
        });
        print("Connection error: $e");
      }

      _chatController.clear();
      _scrollToBottom();
    }
  }

  void _startOrStopRecording() async {
    if (_isRecording) {
      // Stop recording
      await _stopRecordingAndSend();
    } else {
      // Start recording
      await _startRecording();
    }
  }

  Future<void> _startRecording() async {
    if (await _audioRecorder.hasPermission()) {
      final directory = await getApplicationDocumentsDirectory();
      _recordFilePath = '${directory.path}/audio.wav';
      await _audioRecorder.start(path: _recordFilePath);
      setState(() {
        _isRecording = true;
      });
    } else {
      print('No recording permissions');
    }
  }

  Future<void> _stopRecordingAndSend() async {
    await _audioRecorder.stop();
    setState(() {
      _isRecording = false;
    });

    if (_recordFilePath != null) {
      File audioFile = File(_recordFilePath);
      if (audioFile.existsSync()) {
        setState(() {
          _messages.add({"name": "کاربر", "text": "Sending audio..."});
        });

        try {
          var request = http.MultipartRequest(
            'POST',
            Uri.parse('https://crazy-tools-rush.loca.lt/transcribe_audio'), // Replace with your server URL
          );
          request.files.add(await http.MultipartFile.fromPath('audio', _recordFilePath));

          var response = await request.send();
          if (response.statusCode == 200) {
            var responseData = await http.Response.fromStream(response);
            var data = jsonDecode(responseData.body);

            String message = data['response'] ?? "No transcription available";

            setState(() {
              _messages.add({"name": "ابی", "text": message});
            });

            // Send the transcription as a message to the server
            _chatController.text = message;
            _sendMessage();
          } else {
            setState(() {
              _messages.add({"name": "ابی", "text": "Error: ${response.statusCode}, ${response.reasonPhrase}"});
            });
            print("Error: ${response.statusCode}, ${response.reasonPhrase}");
          }
        } catch (e) {
          setState(() {
            _messages.add({"name": "ابی", "text": "Connection error: $e"});
          });
          print("Connection error: $e");
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Page'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                final isUser = message['name'] == 'کاربر';
                return Align(
                  alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                      color: isUser ? Colors.lightBlueAccent : Colors.grey[300],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      message['text']!,
                      style: TextStyle(color: isUser ? Colors.white : Colors.black),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _chatController,
                    decoration: InputDecoration(
                      hintText: 'Type your message...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
                IconButton(
                  icon: Icon(_isRecording ? Icons.stop : Icons.mic),
                  onPressed: _startOrStopRecording,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
