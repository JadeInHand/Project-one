var partyData = [
				{
					value: 38,
					color:"#F7464A",
					highlight: "#FF5A5E",
					label: "Finns Party"
				},
				{
					value: 15,
					color: "#46BFBD",
					highlight: "#5AD3D1",
					label: "Green League"
				},
				{
					value: 34,
					color: "#FDB45C",
					highlight: "#FFC870",
					label: "Social Democratic Party"
				},
				{
					value: 37,
					color: "#949FB1",
					highlight: "#A8B3C5",
					label: "National Coalition Party"
				},
				{
					value: 12,
					color: "#4D5360",
					highlight: "#616774",
					label: "Left Alliance"
				},
				{
					value: 10,
					color: "#2abede",
					highlight: "#94deee",
					label: "Swedish People's Party"
				},
				{
					value: 5,
					color: "#f0f7f9",
					highlight: "#f7fbfc",
					label: "Christian Democrats Party"
				},
				{
					value: 1,
					color: "#4D5360",
					highlight: "#616774",
					label: "Åland Coalition"
				},
				{
					value: 49,
					color: "#de752a",
					highlight: "#e49054",
					label: "Centre Party"
				}
			];
window.onload = function(){
	console.log('does this shit even work?');
	if ($('#party-area').length > 0) {
		console.log('initializing the partychart');
		var ctxtwo = document.getElementById("party-area").getContext("2d");
		ctxtwo.canvas.width = 400;
		ctxtwo.canvas.height = 400; // had to force the canvas size on each reload as it was expanding the graph due to the high graphical details settings within chart.js
		window.myDoughnuttwo = new Chart(ctxtwo).Doughnut(partyData, { responsive : false });	
	};
};

