import 'package:json_annotation/json_annotation.dart';

part 'member.g.dart';

@JsonSerializable()
class Member {
  @JsonKey(required: true)
  final String id;
  @JsonKey(defaultValue: 'member')
  String type;
  @JsonKey(name: 'notification_level')
  String notificationLevel;
  @JsonKey(name: 'company_id')
  String companyId;
  @JsonKey(name: 'workspace_id')
  String workspaceId;
  @JsonKey(name: 'channel_id')
  String channelId;
  @JsonKey(name: 'user_id')
  String userId;
  bool favorite;

  Member(
    this.id,
    this.userId, {
    this.type,
    this.notificationLevel,
    this.companyId,
    this.workspaceId,
    this.channelId,
    this.favorite,
  });

  factory Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);

  Map<String, dynamic> toJson() => _$MemberToJson(this);
}
