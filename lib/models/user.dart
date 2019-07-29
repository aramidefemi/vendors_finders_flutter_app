class User {
    final String token;
    final dynamic profile;

    User(this.token, this.profile);

    Map<String, dynamic> toJSON() => <String, dynamic>{
        'token': this.token,
        'profile': this.profile
    };

    factory User.fromJSON(Map<String, dynamic> json) => new User(
        json['token'],
        json['profile'],
    );

    @override
    String toString() {
        return '{token: $token, profile: $profile}';
    }
}