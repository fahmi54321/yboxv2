class ChatUser {
  String uid;
  String name;
  String email;
  String leader;
  late DateTime lastActive;
  String isAnggota;

  ChatUser({
    required this.uid,
    required this.name,
    required this.email,
    required this.leader,
    required this.lastActive,
    required this.isAnggota,
  });

  factory ChatUser.fromJSON(Map<String, dynamic> json) {
    return ChatUser(
      uid: json['uid'],
      name: json['name'],
      email: json['email'],
      leader: json['leader'],
      lastActive: json['last_active'].toDate(),
      isAnggota: json['is_anggota'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'name': name,
      'last_active': lastActive,
      'leader': leader,
      'is_anggota': isAnggota,
    };
  }

  String lastDayActive() {
    return '${lastActive.month}/${lastActive.day}/${lastActive.year}';
  }

  bool wasRecentlyActive() {
    return DateTime.now().difference(lastActive).inHours < 2;
  }
}
