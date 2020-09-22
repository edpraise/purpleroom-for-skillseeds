import 'package:purple_room/models/review_person.dart';

class Review {
  final String reviewerName;
  final String reviewMessage;
  final String messagetime;
  final ReviewerPic reviewerPic;
  

  Review(
      {this.reviewerName,
      this.reviewMessage,
      this.messagetime,
      this.reviewerPic});

  static List<Review> list = [
    Review(
      reviewMessage: 'khcihfiuahicinehfoascvbubviasc',
      reviewerName: 'barns',
      messagetime: '2pm',
    ),
     Review(
      reviewMessage: 'khcihfiuahicinehfoascvbubviaschiwfh',
      reviewerName: 'JOE',
      messagetime: '6Am',
    ), Review(
      reviewMessage: 'khcihfiuahicinehfoascvbubviaschiwfh',
      reviewerName: 'mrs ken',
      messagetime: '1pm',
      
    ), Review(
      reviewMessage: 'khcihfiuahicinehfoascvbubviaschiwfh',
      reviewerName: 'ed',
      messagetime: '7am',
    ), Review(
      reviewMessage: 'khcihfiuahicinehfoascvbubviaschiwfh',
      reviewerName: 'cholesky',
      messagetime: '10pm',
    ), Review(
      reviewMessage: 'khcihfiuahicinehfoascvbubviasc',
      reviewerName: 'mitch',
      messagetime: '3days ago',
    ),
    ];
}
