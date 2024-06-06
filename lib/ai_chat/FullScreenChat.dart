import 'package:flutter/material.dart';

class FullScreenChat extends StatefulWidget {
  final List<Map<String, String>> messages;
  final Function(String) onSendMessage;

  FullScreenChat({required this.messages, required this.onSendMessage});

  @override
  _FullScreenChatState createState() => _FullScreenChatState();
}

class _FullScreenChatState extends State<FullScreenChat> {
   TextEditingController _chatController = TextEditingController();
    final ScrollController _scrollController = ScrollController();

  
  List<Map<String, String>> _messages = [
    {"name": "ابی", "text": "سلام          چطور میتونم کمکتون کنم؟"}
  ];

  

  

  void _scrollToBottom() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (_scrollController.hasClients) {
          _scrollController.animateTo(
            _scrollController.position.maxScrollExtent,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeOut,
          );
        }
      });
    }

 

  @override
  Widget build(BuildContext context) {

    List messages = _messages;

     void _sendMessage() {
      if (_chatController.text.isNotEmpty) {
        messages.add({"name": "کاربر", "text": _chatController.text});
        _chatController.clear();
        _scrollToBottom();
      }
    }
    
    return Scaffold(
      appBar: AppBar(
        title: Text("صفحه چت"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: messages.length,
              itemBuilder: (context, index) {
                bool isUser = messages[index]['name'] == "کاربر";
                return Align(
                  alignment:
                      isUser ? Alignment.centerLeft : Alignment.centerRight,
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: isUser ? Colors.blue[100] : Colors.grey[300],
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          messages[index]['name']!,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          messages[index]['text']!,
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
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
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: "...اینجا بنویسید",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
