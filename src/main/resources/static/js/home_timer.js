const clock = document.getElementById("clock");


function getClock(){
	const date = new Date()
	
	const year = String(date.getFullYear());
	const month = String(date.getMonth()).padStart(2, "0");
	const day = String(date.getDate()).padStart(2, "0");
	
	const getWeek = date.getDate();
	const week = "";
	
	const weekday = new Array(7);
	weekday[0] = "Sun";
	weekday[1] = "Mon";
	weekday[2] = "Tue";
	weekday[3] = "Wed";
	weekday[4] = "Thu";
	weekday[5] = "Fri";
	weekday[6] = "Sat";
	
	for(let i; i < weekday.length; i++){
		if (getWeek == i){
			week = weekday[i];
			break;
		}
	}
	
		
	
	
  	const hour = String(date.getHours()).padStart(2,"0");
  	const minutes = String(date.getMinutes()).padStart(2,"0");
  	const second = String(date.getSeconds()).padStart(2,"0");

  	clock.innerHTML = `${year}. ${month}. ${day}.
  	${week}
  	${hour}:${minutes}:${second}`;
  	//clock.innerText = `${week}`;
  	//clock.innerText = `${hour}:${minutes}:${second}`;
  	
  	let today = `${year}.${month}.${day} ${week}`;
    let time = `${hour}:${minutes}:${second}`;
    
  	document.querySelector(".clock-date").innerText = today;
    document.querySelector(".clock-time").innerText = time;
  }

getClock();

setInterval(getClock, 1000);
