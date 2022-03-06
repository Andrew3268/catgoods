// function to calculate BMR //
function nuTrient() {
  function find(id) {
    return document.getElementById(id);}
  var protien = find("protien").value;
  var calorie = find("calorie").value;
  var fat = find("fat").value;
  var phosphorus = find("phosphorus").value;
  var calcium = find("calcium").value;
  var water = find("water").value;
  var ash = find("ash").value;
  var fiber = find("fiber").value;

  //////// 사료 라벨 수치 ////////
  //조단백
  var just_result = 0;
    just_result = protien;
  find("justResult").innerHTML = just_result;

  //////// 변환된 수치 ////////
  //조단백
  var protien_result = 0;
    protien_result = 100 * protien / (100 - water)  * 4000 / calorie;
  // find("crudeProtein").innerHTML = Math.round(protien_result);
  find("crudeProtein").innerHTML = (protien_result.toFixed(1));

  //조지방
  var fat_result = 0;
    fat_result = 100 * fat / (100 - water)  * 4000 / calorie;
  // find("fatContent").innerHTML = Math.round(fat_result);
  find("fatContent").innerHTML = (fat_result.toFixed(1));

  //칼슘
  var calcium_result = 0;
    calcium_result = 100 * calcium / (100 - water)  * 4000 / calorie;
  find("calCium").innerHTML = (calcium_result.toFixed(1));

  //인
  var phosphorus_result = 0;
    phosphorus_result = 100 * phosphorus / (100 - water)  * 4000 / calorie;
  find("phosPhorus").innerHTML = (phosphorus_result.toFixed(1));

  
  //////// 탄단지 비율 ////////
  //탄수화물 비율
  var carbo_blance_result =0;
    carbo_blance_result = 100 - protien - fat - water - ash - fiber;
  find("blaNce").innerHTML = (carbo_blance_result.toFixed(1));


  //////// 100g 당 칼로리 ////////
  //100g 당 단백질 칼로리
  var protien_kcal_result = 0;
    protien_kcal_result = protien * 3.5;
  find("protienKcal").innerHTML = (protien_kcal_result.toFixed(1));    

  //100g 당 지방 칼로리
  var fat_kcal_result = 0;
    fat_kcal_result = fat * 8.5;
  find("fatKcal").innerHTML = (fat_kcal_result.toFixed(1));    

  //100g 당 탄수화물 칼로리
  var carbo_kcal_result = 0;
    carbo_kcal_result = carbo_blance_result * 3.5;
  find("carboKcal").innerHTML = (carbo_kcal_result.toFixed(1));    

  //100g 당 총 칼로리
  var total_kcal_result = 0;
    total_kcal_result = protien_kcal_result + fat_kcal_result + carbo_kcal_result;
  find("totalKcal").innerHTML = (total_kcal_result.toFixed(1));    

  //////// 100g 당 각 영양소(탄단지) 비율 ////////
  //100g 당 단백질 영양비율
  var protien_nutrient_result = 0;
    protien_nutrient_result = (protien_kcal_result / total_kcal_result) * 100;
  find("protienNutrient").innerHTML = (protien_nutrient_result.toFixed(1));    

  //100g 당 지방 영양비율
  var fat_nutrient_result = 0;
    fat_nutrient_result = (fat_kcal_result / total_kcal_result) * 100;
  find("fatNutrient").innerHTML = (fat_nutrient_result.toFixed(1));    

  //100g 당 탄수화물 영양비율
  var carbo_nutrient_result = 0;
    carbo_nutrient_result = (carbo_kcal_result / total_kcal_result) * 100;
  find("carboNutrient").innerHTML = (carbo_nutrient_result.toFixed(1));    
   
}