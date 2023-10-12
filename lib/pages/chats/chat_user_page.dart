import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yboxv2/chat/models/chat.dart';
import 'package:yboxv2/pages/chats/chat_page.dart';
import 'package:yboxv2/pages/chats/chat_user_state.dart';
import 'package:yboxv2/pages/home/fragment/shimer/list_shimer.dart';
import 'package:yboxv2/pages/home/utils/utils_style.dart';
import 'package:yboxv2/pages/widget/data_belum_ada.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/utils/utils.dart';
import 'package:yboxv2/widget/v_text.dart';

class ChatUserPage extends StatelessWidget {
  static const route = 'chat-user-page';
  const ChatUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ChatUserState(),
      child: Consumer(
        builder: (BuildContext context, ChatUserState state, _) {
          return Scaffold(
            appBar: AppBar(
              foregroundColor: primaryColor,
              backgroundColor: Theme.of(context).colorScheme.onPrimary,
              elevation: 5,
              title: vText(
                'List Anggota',
                color: black1,
                fontSize: 18.0,
              ),
            ),
            body: state.isLoading
                ? const ListShimer()
                : Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: state.listMember.isEmpty
                        ? const Center(
                            child: DataBelumAda(),
                          )
                        : ListView.builder(
                            itemCount: state.listMember.length,
                            itemBuilder: (BuildContext context, int index) {
                              final item = state.listMember[index];
                              return InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                    context,
                                    ChatPage.route,
                                    arguments: ArgsChatPage(
                                      isLeader: true,
                                      loginRes: state.loginRes,
                                      chat: Chat(
                                        uid: item.uuidMsg,
                                        currentUserUid:
                                            state.loginRes?.uuidMsg ?? '',
                                        messages: [],
                                        members: [],
                                        group: false,
                                        activity: false,
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                    vertical: 16.0,
                                  ),
                                  margin: const EdgeInsets.only(
                                    bottom: 10.0,
                                    right: 16.0,
                                    left: 16.0,
                                  ),
                                  decoration:
                                      UtilsStyle.decorationGradientWhite(
                                    context: context,
                                    radius: 20.0,
                                  ),
                                  child: Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        child: item.image.isEmpty
                                            ? const SizedBox(
                                                width: 40.0,
                                                height: 40.0,
                                                child: Placeholder(
                                                  color: primaryColor,
                                                ),
                                              )
                                            : Image.network(
                                                Utils.convertImage(
                                                    url: item.image),
                                                width: 40.0,
                                                height: 40.0,
                                                frameBuilder: (context,
                                                    child,
                                                    frame,
                                                    wasSynchronouslyLoaded) {
                                                  return child;
                                                },
                                                errorBuilder: ((context, error,
                                                    stackTrace) {
                                                  return const SizedBox(
                                                    width: 40.0,
                                                    height: 40.0,
                                                    child: Placeholder(
                                                      color: primaryColor,
                                                    ),
                                                  );
                                                }),
                                                loadingBuilder: (context, child,
                                                    loadingProgress) {
                                                  if (loadingProgress == null) {
                                                    return child;
                                                  }
                                                  return SizedBox(
                                                    width: 40.0,
                                                    height: 40.0,
                                                    child: Center(
                                                      child:
                                                          CircularProgressIndicator(
                                                        value: loadingProgress
                                                                    .expectedTotalBytes !=
                                                                null
                                                            ? loadingProgress
                                                                    .cumulativeBytesLoaded /
                                                                loadingProgress
                                                                    .expectedTotalBytes!
                                                            : null,
                                                      ),
                                                    ),
                                                  );
                                                },
                                                fit: BoxFit.cover,
                                              ),
                                      ),
                                      const SizedBox(width: 10.0),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            vText(
                                              item.name,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                              color: black1,
                                            ),
                                            const SizedBox(height: 4.0),
                                            vText(
                                              'Anggota',
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w400,
                                              color: black1,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                  ),
          );
        },
      ),
    );
  }
}
