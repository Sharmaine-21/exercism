//
// This is only a SKELETON file for the "Bob" exercise. It's been provided as a
// convenience to get you started writing code faster.
//

var Bob = function() {};

Bob.prototype.hey = function(input) {
    var shoutp = function(str) {
            /[A-Z]/.test(str) && str == str.toUpperCase;
    };
    var questionp = function(str) {
            /^.+\?$/.test(str);
    };
    var silentp = function(str) {
        str == str.trim();
    };

    if(shoutp(input)) {
        return 'Whoa, chill out!';
    } else if(questionp(input)) {
        return 'Sure';
    } else if(silentp(input)) {
        return 'Fine. Be that way!';
    } else {
        return 'Whatever.';
    };
};

module.exports = Bob;
