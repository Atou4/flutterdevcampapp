class Dish{
  String dishimage;
  String dishname;
  int timetomake;
  int servings;
  int calories;
  int reviews;
  String color;
  List<String> ingredients;
  List<String> directions;

  Dish({
    required this.dishimage,
    required this.dishname,
    required this.timetomake,
    required this.servings,
    required this.calories,
    required this.reviews,
    required this.ingredients,
    required this.color,
    required this.directions,
});

  factory Dish.fromJson(Map<String, dynamic> parsedJson){
    var ingredientsFromJson  = parsedJson['ingredients'];
    List<String> ingredientsList = ingredientsFromJson.cast<String>();

    var directionsFromJson  = parsedJson['directions'];
    List<String> directionsList = directionsFromJson.cast<String>();

    return Dish(
      dishimage:parsedJson['dishimage'],
      dishname: parsedJson['dishname'],
      timetomake: parsedJson['timetomake'],
      servings: parsedJson['servings'],
      calories: parsedJson['calories'],
      reviews: parsedJson['reviews'], 
      color: parsedJson['color'], 
      directions: ingredientsList, 
      ingredients: directionsList,
    );
  }
}