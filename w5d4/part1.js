function mysteryScoping1() {
  var x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

mysteryScoping1();

 // in block
 // in block

function mysteryScoping2() {
  const x = 'out of block';
  if (true) {
    const x = 'in block';
    console.log(x);
  }
  console.log(x);
}

mysteryScoping2();
 // in block
 //  out of block

function mysteryScoping3() {
  const x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

mysteryScoping3();

 // throws a Syntax Error

function mysteryScoping4() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  console.log(x);
}

mysteryScoping4();

 // in block
 //  out of block

function mysteryScoping5() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  let x = 'out of block again';
  console.log(x);
}

mysteryScoping5();

// throws a Syntax Error

// madLib
function madLib(verb, adj, noun) {
  return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`
};

// > madLib('make', 'best', 'guac');
// 'We shall MAKE the BEST GUAC.


function isSubstring(sentence, word) {
  return sentence.includes(word);
};

// > isSubstring("time to program", "time")
// true
// > isSubstring("Jump for joy", "joys")
// false


// Phase II - JS Looping Constructs

function fizzBuzz(array) {
  const arr = []

  array.forEach( el => {
    if ((el % 3 == 0) ^ (el % 5 == 0)){
      arr.push(el);
    }
  });
  return arr;
};

// > fizzBuzz([1,2,3,4,5]);
// [ 3, 5 ]


function isPrime(num) {
  if (num < 2 ){
    return false;
  }
  for(let i = 2; i < num; i++){
    if (num % i == 0){
      return false;
    }
  }
  return true;
};

// > isPrime(2)
// true
// > isPrime(10)
// false
// > isPrime(15485863)
// true
// > isPrime(3548563)
// false

function sumOfNPrimes(num) {
  let sum = 0
  let noPrimes = 0
  let i = 2

  while (noPrimes < num) {
    if (isPrime(i)){
      sum += i;
      noPrimes++;
    }
    i++;
  }
  return sum;
};

// > sumOfNPrimes(0);
// 0
// > sumOfNPrimes(1);
// 2
// > sumOfNPrimes(4);
// 17


function allOrNothing(mod, ...numbers) {
  for (let i = 0; i < numbers.length; i++) {
    if (numbers[i] % mod !== 0) {
      return false;
    }
  }
  return true;
};

// > allOrNothing(3, 9, 12, 6)
// true
//
// > allOrNothing(5, 1, 2, 10)
// false
