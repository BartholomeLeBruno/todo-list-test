class Note {
  final String contentMessage;
  bool? status;

  Note(this.contentMessage, {this.status = false});

  Note copyWith({
    String? contentMessage,
    bool? status,
  }) {
    return Note(
      contentMessage ?? this.contentMessage,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'contentMessage': this.contentMessage,
      'status': this.status,
    };
  }

  factory Note.fromMap(Map<String, dynamic> map) {
    return Note(
      map['contentMessage'] as String,
      status: map['status'] as bool,
    );
  }

  @override
  String toString() {
    return 'Note{contentMessage: $contentMessage, status: $status}';
  }
}
