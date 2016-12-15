// window.

// Simple Timeout
setTimeout(function () {
  alert('HAMMER TIME!');
}, 5000);


// Timeout Plus Closure

function hammerTime(time){
  setTimeout(function () {
    alert('${time} is hammertime!');
  });
}
