import 'package:flutterBN/generated/json/base/json_convert_content.dart';
import 'package:flutterBN/generated/json/base/json_filed.dart';

class HomeListEntity with JsonConvert<HomeListEntity> {
	int count;
	int start;
	int total;
	List<HomeListSubject> subjects;
	String title;
}

class HomeListSubject with JsonConvert<HomeListSubject> {
	HomeListSubjectsRating rating;
	List<String> genres;
	String title;
	List<HomeListSubjectsCast> casts;
	List<String> durations;
	@JSONField(name: "collect_count")
	int collectCount;
	@JSONField(name: "mainland_pubdate")
	String mainlandPubdate;
	@JSONField(name: "has_video")
	bool hasVideo;
	@JSONField(name: "original_title")
	String originalTitle;
	String subtype;
	List<HomeListSubjectsDirector> directors;
	List<String> pubdates;
	String year;
	HomeListSubjectsImages images;
	String alt;
	String id;
}

class HomeListSubjectsRating with JsonConvert<HomeListSubjectsRating> {
	int max;
	double average;
	HomeListSubjectsRatingDetails details;
	String stars;
	int min;
}

class HomeListSubjectsRatingDetails with JsonConvert<HomeListSubjectsRatingDetails> {
	@JSONField(name: "1")
	double x1;
	@JSONField(name: "3")
	double x3;
	@JSONField(name: "2")
	double x2;
	@JSONField(name: "5")
	double x5;
	@JSONField(name: "4")
	double x4;
}

class HomeListSubjectsCast with JsonConvert<HomeListSubjectsCast> {
	HomeListSubjectsCastsAvatars avatars;
	@JSONField(name: "name_en")
	String nameEn;
	String name;
	String alt;
	String id;
}

class HomeListSubjectsCastsAvatars with JsonConvert<HomeListSubjectsCastsAvatars> {
	String small;
	String large;
	String medium;
}

class HomeListSubjectsDirector with JsonConvert<HomeListSubjectsDirector> {
	HomeListSubjectsDirectorsAvatars avatars;
	@JSONField(name: "name_en")
	String nameEn;
	String name;
	String alt;
	String id;
}

class HomeListSubjectsDirectorsAvatars with JsonConvert<HomeListSubjectsDirectorsAvatars> {
	String small;
	String large;
	String medium;
}

class HomeListSubjectsImages with JsonConvert<HomeListSubjectsImages> {
	String small;
	String large;
	String medium;
}
