var rs=[];
var tagBody = document.getElementById('tblBody');
function layds(){
    
console.log(tagBody.rows[0]);
    for (var i = 0; i < tagBody.rows.length; i++) {
        var diem=tagBody.rows[i].cells[5].innerHTML;
        rs.push(diem);
    }
console.log(rs);
}
layds();

window.onload=function(){
	console.log("ket noi")
}
