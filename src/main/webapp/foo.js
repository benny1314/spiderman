function func3() {
    var num3 = 44;

    function func4() {
        var text = "hellow wiorld";
        return num3;
    }

    return func4;
}

console.info(func3.func4.text)
