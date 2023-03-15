class CountriesModel{
  String photo;
  String city;
  String country;

  CountriesModel (
  {
    required this.city,
    required this.country,
    required this.photo
  }
 );
}

List <CountriesModel> model = [
  CountriesModel (
    city: "Giza",
    country: "Egypt",
    photo: "https://cdn.alweb.com/thumbs/egyptencyclopedia/article/fit710x532/%D9%85%D9%86-%D8%A8%D9%86%D9%89-%D8%A7%D9%84%D8%A3%D9%87%D8%B1%D8%A7%D9%85%D8%A7%D8%AA.jpg",
  ),
  CountriesModel (
    city: "Alex",
    country: "Egypt",
    photo: "https://mediaaws.almasryalyoum.com/news/large/2014/10/02/256217_0.jpg",
  ),
  CountriesModel (
    city: "Madrid",
    country: "Spain",
    photo: "https://i.ytimg.com/vi/EP60h4s-J-0/sddefault.jpg",
  ),
];