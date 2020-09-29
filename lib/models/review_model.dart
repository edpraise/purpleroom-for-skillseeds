// import 'package:purple_room/models/review_person.dart';

class Review {
  final String reviewerName;
  final String reviewMessage;
  final String messagetime;
  final String reviewerPic;
  

  Review(
      {this.reviewerName,
      this.reviewMessage,
      this.messagetime,
      this.reviewerPic});

  static List<Review> list = [
    Review(
      reviewMessage: 'khcihfiuahici',
      reviewerName: 'barns',
      messagetime: '2pm',
      reviewerPic: 'assets/images/1.jpg',
    ),
     Review(
      reviewMessage: 'khcihfiuahicineb',
      reviewerName: 'JOE',
      messagetime: '6Am',
      reviewerPic: 'assets/images/2.jpg'
    ), Review(
      reviewMessage: 'khcihfiuahicin',
      reviewerName: 'mrs ken',
      messagetime: '1pm',
      reviewerPic: 'assets/images/3.jpg'
      
    ), Review(
      reviewMessage: 'khcihfiuahice',
      reviewerName: 'ed',
      messagetime: '7am',
      reviewerPic: 'assets/images/4.jpg'
    ), Review(
      reviewMessage: 'khcihfiuahicinehfi',
      reviewerName: 'cholesky',
      messagetime: '10pm',
      reviewerPic: 'assets/images/5.jpg'
    ), Review(
      reviewMessage: 'khcihfiuahicinehfoasc',
      reviewerName: 'mitch',
      messagetime: '3days ago',
      reviewerPic: 'assets/images/a.jpg'
    ),
    ];
}
