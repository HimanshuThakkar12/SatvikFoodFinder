
const search=()=>{
    console.log("Searching..");
    let query = $("#search-input").val();
    let mainContainer = $("#mainContainer").val();
    
    if(query == ''){
        $(".search-result").hide();
        $("#mainContainer").show();

    }
    else{

        // search 
        console.log(query);
       
        
        let url = 'search?query='+query;

        fetch(url).then((response)=>{
         
         
            return response.json();
            

        }).then((data) =>{

            $("#mainContainer").show();
            // data 
            let text = `<div class = 'list-group'>`;
                data.forEach((vendor) => { 

                    text+= `<a href = "viewVendorDetails?id= ${vendor.id}" class = "list-group-item list-group-item-action">  ${vendor.shopName}  ${vendor.address}  </a>`
                });

            text+= `</div>`;
            $(".search-result").html(text);
            $(".search-result").show();
             console.log(data);
             

        });



    }
}
/*
const getPrice=()=>{

console.log("Get Price called..");
 

var formData = {
    vendorid: $("#vendorid").val(),
    day :$("#selectedDay").val(),
    category : $("#selectedDish").val()
    
}
console.log(day);
console.log(category);

$.ajax({
    type : "POST",
    url : 'searchFoodMenu',
    data : formData,
    dataType : 'json',
    success : function(result) {
        if (result.status == "success") {
            var custList = "";
            // $.each(result.data,
            // 		function(i, foodMenuList) {
            // 			var foodList = " <h3> Menu DishName:   "
            // 					+ foodMenuList.dishName
            // 					+ " </br> Menu DishPrice:" + foodMenuList.dishPrice
            // 					+ " </h3><br>";

            // 		   var foodItem = " <td scope='row' class = 'list-group'>  "
            // 					+ foodMenuList.dishName + "</td>"  
            // 					+ " <td>" + foodMenuList.dishPrice
            // 					+ " </td>";
            // 				$('#getData .tableData').append(
            // 					foodItem)
            // 			$('#getResultDiv .list-group').append(
            // 					foodList)
                    
            // 		});

            let obj = result.data;
            let dishPriceFromService = obj.dishPrice;
            let selectedDishPrice = document.getElementById('selectedDishPrice');
            selectedDishPrice.innerHTML = dishPriceFromService;
            
           // console.log("Success: ", result);
        } else {
            $("#selectedDishPrice").html("<strong>Error</strong>");
            console.log("Fail: ", result);
        }
    },
    error : function(e) {
        $("#selectedDishPrice").html("<strong>Error</strong>");
        console.log("ERROR: ", e);
    }
});


}
*/