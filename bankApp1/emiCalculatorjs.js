//document.getElementById('btn').addEventListener("submit", calculate);

function calculate() {
    var p = document.getElementById("<%=txtp.ClientID%>").value;
    var y = document.getElementById("<%=txtn.ClientID%>").value;
    var tenure = document.getElementById("<%=txtr.ClientID%>").value;

    var n = y * 12;
    var r = (tenure / 1200);
    var halfequation = Math.pow((1 + r), n);
    var numerator = (p * r * halfequation);
    var denominator = (halfequation - 1);
    var emi = numerator / denominator;

    alert("Label Value is " + emi);
}
    //console.log(5+2);
    //var p = parseFloat(principal);
    //var y = parseFloat(year);
    //var tenure = parseFloat(tenurevalue);

    
    ////document.write(emi);
    //document.getElementById('result1').innerHTML = emi;
    ////alert('helloo')
    ////e.preventDefault();
//}
//function calculate1(){
//    alert('hello')
//}