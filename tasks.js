// Linking to our Firebase
firebase.initializeApp({
    apiKey: "AIzaSyDxsA0iBUWm2W4br7OtI0UAf9NhVTD2bys",
    authDomain: "demoplp.firebaseapp.com",
    projectId: "demoplp",
    storageBucket: "demoplp.appspot.com",
    messagingSenderId: "636802610752",
    appId: "1:636802610752:web:6c83a015306fd4732651a5"

});

// We need a variable that we will map to our database 
const db = firebase.firestore();

// We create a function to add our tasks 
function addTask() {
    // We declare a variable for our task input and map it to our task input element 
    const taskInput = document.getElementById("task-input");
    // We declare a variable for the task itself
    const task = taskInput.value.trim(); // Trimming any empty spaces at the beginning or end of the task input value

    // We store the task in our database 
    if (task !== "") {
        db.collection("tasks").add({ // Adding a record to our task collection
            task: task,
            timestamp: firebase.firestore.FieldValue.serverTimestamp()
        })
        // Once the task is added to the database we reset the value to an empty string 
        .then(() => {
            taskInput.value = "";
            console.log("Task added.");
        })
        .catch(error => {
            console.error("Error adding task: ", error);
        });
    } else {
        console.log("Task is empty.");
    }
}

// Fetch the tasks from the database and display them on our HTML file 
function renderTasks(doc) {
    const taskList = document.getElementById("task-list");
    // We define the individual task items 
    const taskItem = document.createElement("li");
    // We assign the class previously defined to our class item
    taskItem.className = "task-item";
    taskItem.innerHTML = `
    <span>${doc.data().task}</span> <!-- We reference the parameter. Firebase database stores records as documents, hence we use doc.data method to access the task items -->
    <button onclick="deleteTask('${doc.id}')">Delete</button>`;
    taskList.appendChild(taskItem);
}

// Add a real-time listener to listen to the changes in the database and render tasks
db.collection("tasks")
    .orderBy("timestamp", "desc")
    .onSnapshot(snapshot => { // Use onSnapshot to set up the real-time listener for changes stored in the database
        // Define variables for the changes 
        const changes = snapshot.docChanges();
        // Set up a loop
        changes.forEach(change => {
            if (change.type === "added") {
                renderTasks(change.doc);
            }
        });
    });

// Function to delete a task
function deleteTask(id) {
    db.collection("tasks").doc(id).delete()
        .then(() => {
            console.log("Task successfully deleted!");
        })
        .catch((error) => {
            console.error("Error removing task: ", error);
        });
}
