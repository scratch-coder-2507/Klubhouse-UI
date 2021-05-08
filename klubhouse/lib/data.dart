class User {
  final String givenName;
  final String familyName;
  final String imageUrl;

  const User({
    this.givenName,
    this.familyName,
    this.imageUrl,
  });
}

const User currentUser = User(
  givenName: 'Hardik',
  familyName: 'Sakpal',
  imageUrl: 'https://scontent-bom1-2.xx.fbcdn.net/v/t1.0-0/s526x395/67284002_404530286829929_6331300729432571904_n.jpg?_nc_cat=108&ccb=1-3&_nc_sid=174925&_nc_ohc=WEQ4W8RV6SMAX-iHuQ2&_nc_ht=scontent-bom1-2.xx&tp=7&oh=006927b5575922d7ab856714fdcd7ffc&oe=607A9F4C',
);

const List<User> _allUsers = [
  User(
    givenName: 'Hardik',
    familyName: 'Sakpal',
    imageUrl: 'https://scontent-bom1-2.xx.fbcdn.net/v/t1.0-0/s526x395/67284002_404530286829929_6331300729432571904_n.jpg?_nc_cat=108&ccb=1-3&_nc_sid=174925&_nc_ohc=WEQ4W8RV6SMAX-iHuQ2&_nc_ht=scontent-bom1-2.xx&tp=7&oh=006927b5575922d7ab856714fdcd7ffc&oe=607A9F4C',
  ),
  User(
    givenName: 'Roronoa',
    familyName: 'Zoro',
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9NRY9S4rTyUUeCcwARyLc6EQjlZS9hogHaA&usqp=CAU',
  ),
  User(
    givenName: 'Monkey .D.',
    familyName: 'Luffy',
    imageUrl: 'https://i.pinimg.com/originals/d1/f5/2b/d1f52b6dad4967e1434803fd2ec6549b.jpg',
  ),
  User(
    givenName: 'Koro',
    familyName: 'Sensei',
    imageUrl: 'https://wallpaperaccess.com/full/1470944.jpg',
  ),
];

class Room {
  final String club;
  final String name;
  final String time;
  final List<User> speakers;
  final List<User> followedBySpeakers;
  final List<User> others;

  const Room({
    this.name,
    this.club,
    this.time = '',
    this.speakers = const [],
    this.followedBySpeakers = const [],
    this.others = const [],
  });
}

const List<Room> upcomingRoomsList = [
  Room(
    club: 'Flutter',
    name: 'Flutter Engage Recap ',
    time: '3:00 PM',
  ),
  Room(
    club: 'One Piece',
    name: 'An adventure anime',
    time: '7:00 PM',
  ),
];

final List<Room> roomsList = [
  Room(
    club: 'Social Society',
    name: 'Welcome to Clubhouse 🎉 (Walkthrough with Q&A)',
    speakers: (List<User>.from(_allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBySpeakers: List<User>.from(_allUsers)..shuffle(),
    others: List<User>.from(_allUsers)..shuffle(),
  ),
  Room(
    club: 'Good Time',
    name: '⏰ A Very Important Person on Good Time',
    speakers: (List<User>.from(_allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBySpeakers: List<User>.from(_allUsers)..shuffle(),
    others: List<User>.from(_allUsers)..shuffle(),
  ),
  Room(
    club: 'NYU girls roasting tech guys',
    name: 'love and bitcoin edition 💰',
    speakers: (List<User>.from(_allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBySpeakers: List<User>.from(_allUsers)..shuffle(),
    others: List<User>.from(_allUsers)..shuffle(),
  ),
];