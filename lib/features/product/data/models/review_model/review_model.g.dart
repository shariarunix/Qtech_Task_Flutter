// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReviewModel _$ReviewModelFromJson(Map<String, dynamic> json) => _ReviewModel(
      rating: (json['rating'] as num).toInt(),
      comment: json['comment'] as String,
      date: _convertIsoStringToDateTime(json['date'] as String),
      reviewerName: json['reviewerName'] as String,
      reviewerEmail: json['reviewerEmail'] as String,
    );

Map<String, dynamic> _$ReviewModelToJson(_ReviewModel instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'comment': instance.comment,
      'date': instance.date.toIso8601String(),
      'reviewerName': instance.reviewerName,
      'reviewerEmail': instance.reviewerEmail,
    };
