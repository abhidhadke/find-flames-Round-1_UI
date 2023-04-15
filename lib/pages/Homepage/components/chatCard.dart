import 'package:find_flames_ui/pages/Homepage/components/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Chat extends StatelessWidget {
  final String src;
  final String label;
  final String chat;
  final bool isTyping;
  final bool isVerified;
  final bool isRead;
  final String message;

  const Chat(
      {Key? key,
      required this.src,
      required this.label,
      required this.chat,
      required this.isTyping,
      required this.isVerified,
      required this.isRead,
      required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(src),
          radius: 27,
        ),
        title: Row(
          children: [
            Text(
              label,
              style: isRead ? readTextStyle : unreadTextStyle,
            ),
            isVerified
                ? const Icon(
                    Icons.verified,
                    color: Colors.blue,
                  )
                : Container(),
          ],
        ),
        subtitle: isTyping
            ? Text(
                'Typing...',
                style: typingTextStyle,
              )
            : Text(
                chat,
                style: isRead ? subReadTextStyle : subUnreadTextStyle,
              ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              children: [
                const Text('13:10', textAlign: TextAlign.right),
                message == '' ? const SizedBox() : Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFFF5F8F),
                  ),
                  child: Center(child: Text(message, style: GoogleFonts.nunito(color: Colors.white),)),
                ),
              ],
            ),
          ],
        ),

      ),
    );
  }
}
