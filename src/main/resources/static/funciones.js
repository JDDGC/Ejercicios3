function registrarUser(){
    var  username= document.getElementById("username").value;
    var name = document.getElementById("name").value;
    var  lastname = document.getElementById("lastname").value;
    var email = document.getElementById("email").value;
    var  telephone = document.getElementById("telephone").value;
    $.ajax({
        url: 'http://localhost:9009/add',
        type: 'GET',
        data: "username="+username+"&name="+name+"&lastname="+lastname+"&email="+email+"&telephone="+telephone
		
    })
    .done(function(result){
	console.log(result);
        alert("Registro exitoso");
        location.reload();
    })
        .fail(function(){
	console.log("Error");
    })
}

function modificarUser(){
    var id_user=document.getElementById("id_userm").value;
    var  username= document.getElementById("usernamem").value;
    var name = document.getElementById("namem").value;
    var  lastname = document.getElementById("lastnamem").value;
    var email = document.getElementById("emailm").value;
    var  telephone = document.getElementById("telephonem").value;
    $.ajax({
        url: 'http://localhost:9009/update',
        type: 'GET',
        data: "id_user="+id_user+"&username="+username+"&name="+name+"&lastname="+lastname+"&email="+email+"&telephone="+telephone
		
    })
    .done(function(result){
	console.log(result);
        alert("Modificacion exitosa");
        location.reload();
    })
   .fail(function(){
	console.log("Error");
    })
}

function eliminarUser(){
    var id_user=document.getElementById("id_userm").value;
    $.ajax({
        url: 'http://localhost:9009/delete',
        type: 'GET',
        data: "id_user="+id_user
		
    })
    .done(function(result){
	console.log(result);
        alert("Eliminacion exitosa");
        location.reload();
    })
   .fail(function(){
	console.log("Error");
    })
}
function buscarUser(){
    var  id_user= document.getElementById("id_user").value;
    document.getElementById("contenedorModifica").style="display:inline;";
    var  id= document.getElementById("id_userm");
    var username=document.getElementById("usernamem");
    var name=document.getElementById("namem");
    var lastname=document.getElementById("lastnamem");
    var email=document.getElementById("emailm");
    var telephone=document.getElementById("telephonem");
    $.ajax({
        url: 'http://localhost:9009/find',
        type: 'GET',
        data: "id="+id_user	
    })
    .done(function(result){
        console.log(result);
        id.value=result.id_user;
        username.value=result.username;
        name.value=result.name;
        lastname.value=result.lastname;
        email.value=result.email;
        telephone.value=result.telephone;
        //alert("Registro exitoso");
        //location.reload();
    })
    .fail(function(){
        console.log("Error");
    })
}

function get_data() {
    document.getElementById("contenedorAlta").style="display:none;";
    document.getElementById("contenedorModifica").style="display:none;";
    document.getElementById("contenedorModificar").style="display:none;";
    tabla=document.getElementById("tabladat");
    tabla.style="display:inline;";
    tabla.innerHTML="";
	
    $.ajax({
        url:'http://localhost:9009/all',
        type:'GET',
        dataType:'json',
        contentType:'application/json',
    })
    .done(function(result){
	console.log(result);
        tabla.innerHTML+="<h1>Lista de Usuarios</h1>"
        $.each(result, function(i,item){
            tabla.innerHTML+="<div style='display: inline-block; background: #BCCFE0; width: 140px '>"+result[i].id_user+"</div>"+
                    "<div style='display: inline-block; background: #BCCFE0; width: 140px'>"+result[i].username+"</div>"+
                    "<div style='display: inline-block; background: #BCCFE0; width: 140px'>"+result[i].name+"</div>"+
                    "<div style='display: inline-block; background: #BCCFE0; width: 140px'>"+result[i].lastname+"</div>"+
                    "<div style='display: inline-block; background: #BCCFE0; width: 140px'>"+result[i].email+"</div>"+
                    "<div style='display: inline-block; background: #BCCFE0; width: 140px'>"+result[i].telephone+"</div><br>";
        })
    })
    .fail(function(){
	console.log("Error");
    })
}

function mostrarAlta() {
    document.getElementById("contenedorModifica").style="display:none;";
    document.getElementById("tabladat").style="display:none;";
    document.getElementById("contenedorAlta").style="display:inline;";
    document.getElementById("contenedorModificar").style="display:none;";
}
function mostrarModificar() {
    document.getElementById("contenedorModifica").style="display:none;";
    document.getElementById("tabladat").style="display:none;";
    document.getElementById("contenedorAlta").style="display:none;";
    document.getElementById("contenedorModificar").style="display:inline;"; 
}
