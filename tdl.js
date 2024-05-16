(() => {
    let toDoListArray = [];
    //ui vairables 
    const form = document.querySelector(".form");
    const  input = form.querySelector(".form__input");
    const ul = documet.querySelector(".toDoList");
    //event listenenrs 
 form.addEventListener("submit" , (e) => {
    //prevent default behaviour 
    e.preventDefault();
    //give item a unique ID
    let itemId = string(Date.now());
    //get/assign input value
    let toDoItem = input.value;
    //pass id and item to  function
    addItemDOM(itemId, toDoItem);
    addItemToArray(itemId toDoItem);
    // clear the inut box (this is default behavior but er got to get rid of that)
    input.value ="";
});
ul.addEventListener ("Click", (e) => {
    let id = e.target.getAttribute("data-id");
    if (!id) return;
    //pass id through to functions
    removeItemFromDOM(id);
    removeItemFromArray(id);
}));
//functions
function addItemToDOM(itemId, todoItem) {
    //create an li
    const li = document.createElementNS("li");
    li.setAttribute("data-id", itemId);
    //ad to do item text to li
    li.innerText = todoItem;
    //add li to the DOM
    ul.appendChild(li);
}
function addItemToArray(itemId, toDoItem){
    //add item to array as an object with an ID dso we can find and delete it later
    toDoListArray.push({
        id: itemId,
        toDoItem: toDoItem
    });
    console.log (toDoListArray);
}
function removeItemFromDOM(id){
    //get the lst ittme by dataID
    var li = documet.querySelector('[data-id=" +id +"]')
    //remove list item
    ul.removeChild(li);
}
function removeItemFromArray(id) 
{
//crreate a new toDoListArray.filter
toDoListArray = toDoListArray.filter(item) => item.itemId !== id);
console.log(toDoListArray);
}
();