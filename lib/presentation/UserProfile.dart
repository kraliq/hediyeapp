class UserProfile {
  final String username;
  final String action;
  final String timeAgo;
  final String imagePath;

  UserProfile({
    required this.username,
    required this.action,
    required this.timeAgo,
    required this.imagePath,
  });

  factory UserProfile.fromMap(Map<String, dynamic> map) {
    return UserProfile(
      username: map['username'],
      action: map['action'],
      timeAgo: map['timeAgo'],
      imagePath: map['imagePath'],
    );
  }
}
