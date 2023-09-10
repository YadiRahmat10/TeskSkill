let palindrome = function (n){
    let len = n.length;
    let start = n.substring(0, Math.floor(len / 2)).toLowerCase();
    let end = n.substring(len - Math.floor(len / 2)).toLowerCase();
    // console.log(start, end);
    let flip = end.split('').reverse().join('');
    return (start == flip);
}

console.log(palindrome('radar')) //true
console.log(palindrome('radder')) //true
console.log(palindrome('iyad')) //false