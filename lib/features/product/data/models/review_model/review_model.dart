import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_model.freezed.dart';
part 'review_model.g.dart';

@freezed
abstract class ReviewModel with _$ReviewModel {
  const factory ReviewModel({
    required int rating,
    required String comment,
    @JsonKey(name: "date", fromJson: _convertIsoStringToDateTime)required DateTime date,
    required String reviewerName,
    required String reviewerEmail,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) => _$ReviewModelFromJson(json);

}

DateTime _convertIsoStringToDateTime(String dateStr){
  return DateTime.parse(dateStr);
}