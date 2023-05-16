function getCheckboxValue(event){

		const query = 'input[name="categori"]:checked';
		const selectedEls = document.querySelectorAll(query);
		
		let result = '';
		selectedEls.forEach((el) => {
			result += el.value + ' ';
		});
		console.log(result);
		document.getElementById("pac-input").value = result;
	
	}