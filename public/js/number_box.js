function myFunction() {
	var x = document.getElementById("myInput").value;
document.getElementById("demo").innerHTML = "Enter their names in the boxes below.<br>";
for (var i = 1; i <= x; i++ ) {
		ver input = document.createElement("input");
		input.type = "text";
		input.name = "text" + 1;
		input.id = "marv";
		input.required = true;
		input.placeholder = "Tarzan say name go here."
		document.getElementById("demo").appendChild(input).value;


}
}