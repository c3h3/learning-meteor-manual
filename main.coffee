  
@favoriteFood = "apples"
@favoriteFoodDep = new Deps.Dependency

@getFavoriteFood = ->
  favoriteFoodDep.depend()
  favoriteFood

@setFavoriteFood = (newValue) =>
  @favoriteFood = newValue;
  favoriteFoodDep.changed()


@handle = Deps.autorun ()->
  console.log "Your favorite food is " + getFavoriteFood() 


@getReversedFood = -> 
  getFavoriteFood().split("").reverse().join("");

@handle2 = Deps.autorun ->
  console.log "Your favorite food is " + getReversedFood() + " when reversed"


@forecasts = new ReactiveDict

forecasts.set "san-francisco", "cloudy"
forecasts.get "san-francisco"

# In Browser Console:
#
# $('body').html("The weather here is <span class='forecast'></span>!");
# Deps.autorun(function () {
#   $('.forecast').text(forecasts.get('san-francisco'));
# });


