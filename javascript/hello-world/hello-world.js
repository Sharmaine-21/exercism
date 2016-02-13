//
// This is only a SKELETON file for the 'Hello World' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

var HelloWorld = function() {};

HelloWorld.prototype.hello = function(input) {
    var greeting = function(str) {
        return "Hello, " + str + "!";
    };

    return input.length < 1 ? greeting("world") : greeting(input);
};

module.exports = HelloWorld;
