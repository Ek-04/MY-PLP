

firebase.initializeApp ({

    apiKey: "AIzaSyCUjDUd_8ZTLngXgzPEX1hYAY2P5h-VJ0E",

  authDomain: "weather-app-cb5e4.firebaseapp.com",

  projectId: "weather-app-cb5e4",

  storageBucket: "weather-app-cb5e4.appspot.com",

  messagingSenderId: "62511940624",

  appId: "1:62511940624:web:04f5e09dd0884f1497b695"

});
//we map a varibale t databse 
const db = firebase.firestore();

//create a function to add the user input 
function addCity() {
    //we diclare a variable for user input ansd map it to our task input element
    const userInput = document.getElementById("user-input");
    
    //we declarea  variable for the task itself
   
//we tri=m any empty spaces from our user input and store the new trimmed variable in the input value
const input = userInput.value.trim();
//we store input in our database
if(input !== "")
    {
        db.collection("inputs").add({
            input:input,
            timestamp: firebase.firestore.FieldValue.serverTimestamp()
        })
        // after addig the input we reset the value to a new string
        .then(() => {
            userInput.value = "";
            console.log("input added");
        })
        .catch(error => {
            console.log("Error!",error);
        });

    }else {
        console.log("Please enter");
    }
}