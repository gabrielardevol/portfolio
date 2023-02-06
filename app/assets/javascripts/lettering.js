function createRows() {                                                       //sets the rows where elements will be placed
  for (var i = 0; i < (string.length / columns); i++) {                       //iterator
  row = container.appendChild(document.createElement("div"))                  //adds html row to html container
  row.id = `row${i + 1}`;                                                     // gives ID to row
  row.className = "row"}                                                      //assigns css class to row
}

function createElements(){                                                    //creates the elements for a given string and places the elements in the rows
for (var i = 0; i < string.length; i++) {                                      //iterator
  row = document.querySelector(`#row${(Math.ceil(((i) / columns)+0.1))}`)     // determines which row belongs to the iterated element
  div = row.appendChild(document.createElement("div"));                        // creates the element div
  div.id = `element${i+1}`                                                    // gives ID to element (it's index plus one)
  div.className = "characterContainer font-mono"
  div.style.fontWeight = "500"                                        //assigns css class to element
  div.textContent = `${string[i]}`                                            // fills the element with text
  function dataSetRows(i){                                                    // dataset guides interaction between elements
    elements = document.querySelectorAll(".characterContainer");              //this variable is still not full scope
    if (elements[i].textContent != " ") {                                     // spaces between words don't get dataset
      elements[i].setAttribute("data-row", `${(Math.ceil(((i) / columns)+0.1))//parent row
      }`);
      elements[i].setAttribute("data-active", "true");                        // indicates that the element is visible
      elements[i].setAttribute("data-merged", "false")}                       // indicates that the element contains one character
  }
  dataSetRows(i)
  randomColorize(i)
}}

function randomColorize(i) {
  const colors = ['#FF7373', '#739AFF', '#5BB8D6', '#FF9473'];
  const randomIndex = Math.floor(Math.random() * colors.length);
  const randomColor = colors[randomIndex];
  if(elements[i].dataset.active) {                                            //blank spaces of string appear transparent
  elements[i].style.backgroundColor = randomColor;}
}

function action() {
  //randomColorize(0)                                                         //will change color of first element
  for (var i = 0; i < (string.length - 1); i++) {
    if (elements[i].dataset.active == "true" && elements[i].dataset.merged == "false" && elements[i+1].dataset.merged == "false") {
      if(Math.random()<0.09){merge(i)};
    } else if (elements[i].dataset.active == "true" && elements[i].dataset.merged == "true") {
      if(Math.random()<0.18){split(i)};
    }
  }
}

function merge(i) {
  if(elements[i].dataset.row === elements[i+1].dataset.row){
  elements[i].dataset.merged = "true";
  increaseWidth(i)
  hyde(i)
  elements[i].textContent += `${elements[i+1].textContent}`
  }
}

function hyde(i) {
  if (elements[i+1].textContent != " ") {elements[i+1].dataset.active = "false";} //sets "active" (not to blank spaces) TODO: apply hyde() function
  deleteWidth(i+1)
}

function split(i) {
  elements[i].textContent = `${elements[i].textContent[0]}`
  decreaseWidth(i)
  elements[i].dataset.merged = "false";
  elements[i+1].style.display = "flex"
  elements[i+1].dataset.active = "true"
  randomColorize(i+1)
  restoreWidth(i+1)
}

function increaseWidth(i) {
  elements[i].style.width = "1.8em";
}

function decreaseWidth(i) {
  elements[i].style.width = "1.2em";
}

function deleteWidth(i) {
  elements[i].style.width = "0em";
  elements[i].style.height = "0em";
  elements[i].style.color = "transparent";
}

function restoreWidth(i) {
  elements[i].style.width = "1.2em";
  elements[i].style.height = "1.2em";
  elements[i].style.color = "black";
  randomColorize(i+1)

}

var string = "gabriel ardèvol"// MODIFY THE DISPLAYED TEXT HERE
var columns = 4

var container = document.querySelector("#container");
createRows();
createElements();
elements = document.querySelectorAll(".characterContainer"); // turn to a separate function

setInterval(action, 2700);
