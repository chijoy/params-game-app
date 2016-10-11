// function changeColors() {

//   setTimeout(function() {
//     document.getElementById('first').style.color = 'red';
//     setTimeout(function() {
//       document.getElementById('second').style.color = 'blue';
//       setTimeout(function() {
//         document.getElementById('third').style.color = 'green';
//         setTimeout(function() {
//           document.getElementById('fourth').style.color = 'yellow';
//         }, 1000);
//       }, 1000);
//     }, 1000);
//   }, 1000);
// }

// var response = $.get('https://data.cityofchicago.org/resource/xzkq-xp2w.json');
// console.log(response);

// $.get('https://data.cityofchicago.org/resource/xzkq-xp2w.json', function(response) {
//   console.log(response);
// });


// function bob(input, callback) {
//   console.log(input);
//   callback();
// }

// bob(5, function() {
//   console.log(3 + 3);
// });


// function bob(input, callback) {
//   cvar x = input;
//   callback(x);
// }

// bob(5, function(num) {
//   console.log(num + 3);
// });


// $.get('https://github.com/Huddle/Resemble.js/blob/master/package.json', function(response) {
//   console.log(response);
// });

function getData() {
  var divEmployees = document.getElementById("employees");

  $.get('https://data.cityofchicago.org/resource/xzkq-xp2w.json', function(response){
    var htmlString = '';

    for (var i = 0; i < response.length; i++) {
      var employee = response[i];
      htmlString += '<div class="employee" onclick="changeEmployee(this)">';
      htmlString += '<h2>' + employee.name + '</h2>';
      htmlString += '<p>Title: ' + employee.job_titles + '</p>';
      htmlString += '<p>Dept: ' + employee.department + '</p>';
      htmlString += '<p>Salary: ' + employee.employee_annual_salary + '</p>';
      htmlString += '<br>';
      htmlString += '</div>';
    }

    divEmployees.innerHTML = htmlString;
  });
}

function changeEmployee(divEmployee) {
  if (divEmployee.style.color === 'lightgrey'){
    divEmployee.style.color = '';
  } else {
    divEmployee.style.color = 'lightgrey';
  }
}

function showAll() {
  var employees = document.querySelectorAll('.employee');
  for (var i = 0; i < employees.length; i++) {
    var employee = employees[i];
    employee.style.display = '';
  }
}

function showPolice() {
  var employees = document.querySelectorAll('.employee');
  for (var i = 0; i < employees.length; i++) {
    var employee = employees[i];
    if (employee.innerHTML.indexOf('POLICE') !== -1) {
      employee.style.display = '';
    } else {
      employee.style.display = 'none';
    }   
  }
}







