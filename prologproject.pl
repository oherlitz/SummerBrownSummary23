servesAll(american,[salad, steak, sandwiches, burgers, fried_chicken]).
servesAll(burger_place,[burgers, fries, onion_rings]).
servesAll(chinese,[eggrolls, rice, shrimp, soup, noodles]).
servesAll(indian,[papadam, bagan_bharta, rice, tandoori, naan]).
servesAll(italian,[salad, pasta, cioppino, snapper, bread, garlic_bread]).
servesAll(japanese,[sashimi, rice, tempura, noodles]).
servesAll(mediterranean,[gyros, hummus, pita, falafel]).
servesAll(mexican,[tacos, beans, rice, enchiladas, fish_tacos]).
servesAll(pizza_place,[pizza, salad, garlic_bread]).
servesAll(thai,[rice, noodles, larb, pad_thai]).

servesType(vegetarian,[beans, bagan_bharta, enchiladas, falafel, hummus,
pizza, salad, soup, tempura, onion_rings, naan, papadam,
bread, rice, noodles, pita, garlic_bread, pasta, fries]).
servesType(meat, [burgers, enchiladas, gyros, pad_thai, pizza, steak, sandwiches,
fried_chicken, tacos, tandoori, larb]).
servesType(seafood, [snapper, cioppino, sashimi, shrimp, clams, fish_tacos, tempura]).
servesType(starch, [naan, papadam, bread, rice, noodles, pita, garlic_bread, pasta, fries]).

cuisine(yans, chinese).
location(yans, thayer_street).

cuisine(pizza_marvin, pizza_place).
location(pizza_marvin, fox_point).

cuisine(bajas, mexican).
location(bajas, thayer_street).

cuisine(andreas, mediterranean).
location(andreas, thayer_street).

cuisine(chinatown, chinese).
location(chinatown, thayer_street).

cuisine(kabob_n_curry, indian).
location(kabob_n_curry, thayer_street).

cuisine(waterman_grille, american).
location(waterman_grille, wayland).

cuisine(dolores, mexican).
location(dolores, fox_point).

cuisine(tallulahs, mexican).
location(tallulahs, fox_point).

cuisine(red_stripe, american).
location(red_stripe, wayland).

cuisine(pasta_beach, italian).
location(pasta_beach, wayland).

cuisine(haruki, japanese).
location(haruki, wayland).

cuisine(heng, thai).
location(heng, thayer_street).

cuisine(mikes, pizza_place).
location(mikes, thayer_street).

cuisine(east_side_pocokets, mediterranean).
location(east_side_pocokets, thayer_street).

cuisine(bees, thai).
location(bees, fox_point).

cuisine(shake_shack, burger_place).
location(shake_shack, thayer_street).

cuisine(al_forno, italian).
location(al_forno, fox_point).

cuisine(lims, thai).
location(lims, wayland).

serves(Kind, Dish):-
    servesAll(Kind, Dishes),
    member(Dish, Dishes).

restaurant_in_wayland(Restaurant):- 
    location(Restaurant, wayland).

italian_restaurant(Restaurant):-  
    cuisine(Restaurant, italian).

snapper_restaurant(Restaurant):-  
    cuisine(Restaurant, italian).

rice_restaurant(Restaurant):-
    cuisine(Restaurant, chinese);
    cuisine(Restaurant, indian);
    cuisine(Restaurant, japanese);
    cuisine(Restaurant, mexican);
    cuisine(Restaurant, thai).

fox_point_vegetarian(Restaurant):-
    cuisine(Restaurant, pizza_place), location(Restaurant, fox_point);
    cuisine(Restaurant, italian), location(Restaurant, fox_point);
    cuisine(Restaurant, mexican), location(Restaurant, fox_point);
    cuisine(Restaurant, thai), location(Restaurant, fox_point).

vegetarian_and_meat(Restaurant):-
    cuisine(Restaurant, american);
    cuisine(Restaurant, burger_place);
    cuisine(Restaurant, chinese);
    cuisine(Restaurant, indian);
    cuisine(Restaurant, mediterranean);
    cuisine(Restaurant, mexican);
    cuisine(Restaurant, pizza_place);
    cuisine(Restaurant, thai).

mexican_and_chinese(Area):-
    location(Restaurant1, Area),
    location(Restaurant2, Area),
    cuisine(Restaurant1, chinese),
    cuisine(Restaurant2, mexican),
    Restaurant1 \= Restaurant2.

thayer_street_or_wayland_meat(Restaurant):-
    location(Restaurant, thayer_street), cuisine(Restaurant, american);
    location(Restaurant, thayer_street), cuisine(Restaurant, burger_place);
    location(Restaurant, thayer_street), cuisine(Restaurant, indian);
    location(Restaurant, thayer_street), cuisine(Restaurant, mediterranean);
    location(Restaurant, thayer_street), cuisine(Restaurant, mexican);
    location(Restaurant, thayer_street), cuisine(Restaurant, pizza_place);
    location(Restaurant, thayer_street), cuisine(Restaurant, thai);
    location(Restaurant, wayland), cuisine(Restaurant, american);
    location(Restaurant, wayland), cuisine(Restaurant, burger_place);
    location(Restaurant, wayland), cuisine(Restaurant, indian);
    location(Restaurant, wayland), cuisine(Restaurant, mediterranean);
    location(Restaurant, wayland), cuisine(Restaurant, mexican);
    location(Restaurant, wayland), cuisine(Restaurant, pizza_place);
    location(Restaurant, wayland), cuisine(Restaurant, thai).

no_bread_wayland(Restaurant):-
    location(Restaurant, wayland), cuisine(Restaurant, burger_place);
    location(Restaurant, wayland), cuisine(Restaurant, american);
    location(Restaurant, wayland), cuisine(Restaurant, chinese);
    location(Restaurant, wayland), cuisine(Restaurant, indian);
    location(Restaurant, wayland), cuisine(Restaurant, japanese);
    location(Restaurant, wayland), cuisine(Restaurant, mediterranean);
    location(Restaurant, wayland), cuisine(Restaurant, mexican);
    location(Restaurant, wayland), cuisine(Restaurant, thai).