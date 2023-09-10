// cara ke satu

function fizzBuzz(num) {

  for (var i = 1; i <= num; i++) {

    if (i % 15 === 0) console.log("FizzBuzz");

    else if (i % 3 === 0) console.log("Fizz");

    else if (i % 5 === 0) console.log("Buzz");

    else console.log(i);

  }

}

fizzBuzz(99); // value seberapa banyak yg diinginkan

// cara ke dua

// function fizzBuzz (n) {
//     //Perhatikan bahwa 15 habis dibagi 3 dan 5, jadi periksalah 15 terlebih dahulu
//     const divisors = [[15, 'FizzBuzz'], [5, 'Buzz'], [3, 'Fizz']];
//     for (let [divisor, label] of divisors) {
//       if (n % divisor == 0) {
//         return label;
//       }
//     }
//     return n;
//   };
      
//   for (let i=1; i<=100; i++) {
//     console.log(fizzBuzz(i))
//   };
