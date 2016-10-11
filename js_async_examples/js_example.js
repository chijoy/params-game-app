
setTimeout(function() {
  console.log("First Task Completed!");
  setTimeout(function() {
    console.log("Second Task Completed!");
    setTimeout(function() {
      console.log("Third Task Completed!");
    }, 2000);
  }, 2000);
}, 2000);


setTimeout(secondTask, 4000);
setTimeout(thirdTask, 6000);
