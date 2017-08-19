function setup(){
       var x = document.getElementById("names_to_pair").value;
        document.getElementById("demo").innerHTML = "Enter their names in the boxes below:<br>";
        for (var count = 1; count <= x; count++) {
            var input = document.createElement("input");
            input.type = "text";
            input.name = "text" + count;
            input.id = "input";
            input.required = true;
            input.placeholder = "Enter Name"
            document.getElementById("demo").appendChild(input).value;
		}
}
function minus_button(){
	var x = document.getElementById("demo"); 
	x.removeChild(x.lastChild);
	
}

function add_button(){
	var input = document.createElement("input");
	input.type = "text";
	input.name = "input[]";
	input.id = "input";
	input.required = true;
	input.placeholder = "Enter Name"
	document.getElementById("demo").appendChild(input).value;
}
