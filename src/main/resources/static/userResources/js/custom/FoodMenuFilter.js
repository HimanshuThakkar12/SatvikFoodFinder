/**
 * 
 */


$(document).ready(
		function() {

			// POST REQUEST
			$("#filterFoodMenu").click(function(event) {
				/*let rowData = document.getElementsByClassName('rowData');
				$('#rowData td').data('');*/
				event.preventDefault();
				const tableRow = document.querySelector("#myTable");
				
				
				tableRow.innerHTML = '';	
				
				
				//myTable.innerText = '';
			
			   ajaxPost();
			   
			});

			// DO GET
			function ajaxPost() {

				// let vendorid = document.getElementById("vendorid");
				

				var formData = {
					vendorid: $("#vendorid").val(),
					day : $("#day").val(),
					category : $("#category").val()
					
				}

				console.log(day)
				console.log(category)
				$.ajax({
					type : "POST",
					url : 'searchFoodMenu',
					data : formData,
					dataType : 'json',
					success : function(result) {
						if (result.status == "success") {

							$('#getResultDiv ul').empty();
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

							show(result.data);

							
							console.log("Success: ", result);
						} else {
							$("#getResultDiv").html("<strong>Error</strong>");
							console.log("Fail: ", result);
						}
					},
					error : function(e) {
						$("#getResultDiv").html("<strong>Error</strong>");
						console.log("ERROR: ", e);
					}
				});
			}
		})


		function show(foodList){
			let table = document.getElementById('myTable');
			
		//	let item = table.getElementsByTagName("td");
			
			
		
			var heading1 = document.createElement('th');
			var heading2 = document.createElement('th');
			var heading3 = document.createElement('th');
			var heading4 = document.createElement('th');

			var heading5 = document.createElement('th');
			var heading6 = document.createElement('th');


			heading1.innerHTML = "Category";
			heading2.innerHTML = "Dish Name";
			heading3.innerHTML = "Dish Price";
			heading4.innerHTML = "Start Time";
			heading5.innerHTML = "End Time";
			heading6.innerHTML = "Action";

			table.appendChild(heading1);
			table.appendChild(heading2);

			table.appendChild(heading3);

			table.appendChild(heading4);

			table.appendChild(heading5);

			table.appendChild(heading6);

			
			
			/*
			row.appendChild(heading1);
			row.appendChild(heading2);
			row.appendChild(heading3);
			
			*/
			
			console.log(foodList);
			
			
			for(let i =0;i<foodList.length;i++){
				
				let obj = foodList[i];
				console.log(obj);
				
				let row = document.createElement('tr');
				row.classList.add("rowData");
				let category = document.createElement('td');
				category.classList.add("category");
				let dishName = document.createElement('td');
				dishName.classList.add("dishName")
				dishName.id = "dishName";
				
				let dishPrice = document.createElement('td');
				dishPrice.classList.add("dishPrice");
				dishPrice.id = "dishPrice";
				
				let btn=document.createElement("button");
				let startTime = document.createElement('td');
				let endTime = document.createElement('td');
				// btn.classList.add('btn');
				btn.classList.add('btn-sm');
				// btn.classList.add('btn-primary');
				btn.classList.add('orderButton');
				btn.classList.add('btn-proceed-checkout');

				category.innerHTML = obj.category;
				dishName.innerHTML = obj.dishName;
				dishPrice.innerHTML = obj.dishPrice;
				startTime.innerHTML = obj.startTime;
				endTime.innerHTML = obj.endTime;
				btn.innerText = "Order Now";
				// btn.idList.add('modalObj');
				btn.id = "modalOBJ";
				
				
				row.appendChild(category);
				row.appendChild(dishName);
				row.appendChild(dishPrice);
				row.appendChild(startTime);
				row.appendChild(endTime);
				row.appendChild(btn);
				
				table.appendChild(row);
				setIdForButton();
				
			}   
			


			
		}

		function setIdForButton(){

		document.getElementById('modalOBJ').setAttribute('data-toggle','modal');
		document.getElementById('modalOBJ').setAttribute('data-target','#myModal');
		document.getElementById('modalOBJ').addEventListener('click', function(e) {
		console.log('Click happened for: ' + e.target.id);
		var myModal = $('#myModal');
		
		var category = $(this).closest('tr').find('td.category').html();
		var dishName = $(this).closest('tr').find('td.dishName').html();
		var dishPrice = $(this).closest('tr').find('td.dishPrice').html();

		 $('.category', myModal).val(category);
		 $('.dishName', myModal).val(dishName);
		 $('.dishPrice', myModal).val(dishPrice);

		 myModal.modal({
		 show : true
		 });
		 return false;
		  });
		  
			}

			
function saveOrder(){
	var orderData = {
					userName: $("#userName").val(),
					contactNo:$("#contactno").val(),
					email:$("email").val(),
					address:$("address").val(),
					categpry : $("#categpry").val(),
					dishName : $("#dishName").val(),
					dishPrice : $("#dishPrice").val(),
					totalDish : $("#totalDish").val()
					
					
				}

				console.log(userName)
				console.log(category)
				$.ajax({
					type : "POST",
					url : 'saveOrder',
					data : orderData,
					dataType : 'json',
					success : function(result) {
						if (result.status == "success") {

							//show(result.data);

							
							console.log("Success: ", result.data);
						} else {
							alert("there is some error while saving order..");
							//$("#getResultDiv").html("<strong>Error</strong>");
							console.log("Fail: ", result.data);
						}
					},
					error : function(e) {
						//$("#getResultDiv").html("<strong>Error</strong>");
						console.log("ERROR: ", e);
					}
				});
	
}