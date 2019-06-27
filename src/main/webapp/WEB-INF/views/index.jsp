<%-- 
    Document   : index
    Created on : 17/06/2019, 11:58:29 AM
    Author     : administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOME</title>
        <script src="funciones.js"></script>
        <script src="jquery-3.4.1.min.js"></script>
    </head>
    <body>
        <div style='border: 0px solid #DE444C; width:1000px; margin: 20px auto 2px auto; text-align:center;'>
            <input type='button' value='Registrar usuario' style='color:#fff; background: #0099ff; width:20%; height: 30px;' onclick='mostrarAlta()'/>
            <input type='button' value='Modificar/Eliminar usuario' style='color:#fff; background: #0099ff; width:30%; height: 30px;' onclick='mostrarModificar()'/>
            <!--<input type='button' value='Eliminar usuario' style='color:#fff; background: #0099ff; width:20%; height: 30px;' onclick='mostrarEliminar()'/>-->
            <input type='button' value='Mostrar Usuarios' style='color:#fff; background: #0099ff; width:20%; height: 30px;' onclick='get_data()'/>
        </div>
        <div style='border: 1px solid #DE444C; text-align: center;display:none;' id="contenedorAlta">
            <form>
                <div style='font-size: 50px; border-bottom: 1px solid #DE444C; text-align: center; width:400px; margin: 10px auto 20px auto;'>Alta de Usuario</div>
                <div style='border: 0px solid #DE444C; width:400px; margin: 5px auto 2px auto'>
                    <div style='display: inline-block'>Nombre de Usuario:</div>
                    <div style='display: inline-block;float:right;'><input type='text' id='username' required/></div>
                </div>
                <div style='border: 0px solid #DE444C; width:400px; margin: 5px auto 2px auto'>
                    <div style='display: inline-block;'>Nombre:</div>
                    <div style='display: inline-block; float:right;'><input type='text' id='name' required/></div>
                </div>
                <div style='border: 0px solid #DE444C; width:400px; margin: 5px auto 2px auto'>
                    <div style='display: inline-block'>Apellidos:</div>
                    <div style='display: inline-block;float:right;'><input type='text' id='lastname' required/></div>
                </div>
                <div style='border: 0px solid #DE444C; width:400px; margin: 5px auto 2px auto'>
                    <div style='display: inline-block'>Email:</div>
                    <div style='display: inline-block;float:right;'><input type='text' id='email' required/></div>
                </div>
                <div style='border: 0px solid #DE444C; width:400px; margin: 5px auto 2px auto'>
                    <div style='display: inline-block'>Telefono:</div>
                    <div style='display: inline-block;float:right;'><input type='text' id='telephone' required/></div>
                </div>
                <div style='border: 0px solid #DE444C; width:400px; margin: 20px auto 2px auto; text-align:center;'>
                    <input type='button' value='Guardar' style='border:1px solid #A13338; color:#fff; background: #DE444C; width:25%; height: 50px;' onclick='registrarUser()'/>
                    <input type='reset' value='Cancelar' style='border:1px solid #5F6061; color:#5F6061; background: #fff; width:25%; height: 50px;'/>
                </div>
            </form>
        </div>
        <div style='border: 1px solid #DE444C; text-align: center;display:none;' id="contenedorModificar">
            <form>
                <div style='font-size: 50px; border-bottom: 1px solid #DE444C; text-align: center; width:400px; margin: 10px auto 20px auto;'>Modificar Usuario</div>
                <div style='border: 0px solid #DE444C; width:400px; margin: 5px auto 2px auto'>
                    <div style='display: inline-block'>Id del usuario:</div>
                    <div style='display: inline-block;float:right;'><input type='text' id='id_user' required/></div>
                </div>
                <div style='border: 0px solid #DE444C; width:400px; margin: 20px auto 2px auto; text-align:center;'>
                    <input type='button' value='Buscar' style='border:1px solid #A13338; color:#fff; background: #DE444C; width:25%; height: 50px;' onclick='buscarUser()'/>
                    <!--<input type='reset' value='Cancelar' style='border:1px solid #5F6061; color:#5F6061; background: #fff; width:25%; height: 50px;'/>-->
                </div>
            </form>
        </div>
        <div style='border: 1px solid #DE444C; text-align: center;display:none;' id="contenedorModifica">
            <form>
                <div style='font-size: 50px; border-bottom: 1px solid #DE444C; text-align: center; width:400px; margin: 10px auto 20px auto;'>Modificar Usuario</div>
                <div style='border: 0px solid #DE444C; width:400px; margin: 5px auto 2px auto'>
                    <div style='display: inline-block'>Nombre de Usuario:</div>
                    <div style='display: inline-block;float:right;'><input type='hidden' id='id_userm'/><input type='text' id='usernamem' required/></div>
                </div>
                <div style='border: 0px solid #DE444C; width:400px; margin: 5px auto 2px auto'>
                    <div style='display: inline-block;'>Nombre:</div>
                    <div style='display: inline-block; float:right;'><input type='text' id='namem' required/></div>
                </div>
                <div style='border: 0px solid #DE444C; width:400px; margin: 5px auto 2px auto'>
                    <div style='display: inline-block'>Apellidos:</div>
                    <div style='display: inline-block;float:right;'><input type='text' id='lastnamem' required/></div>
                </div>
                <div style='border: 0px solid #DE444C; width:400px; margin: 5px auto 2px auto'>
                    <div style='display: inline-block'>Email:</div>
                    <div style='display: inline-block;float:right;'><input type='text' id='emailm' required/></div>
                </div>
                <div style='border: 0px solid #DE444C; width:400px; margin: 5px auto 2px auto'>
                    <div style='display: inline-block'>Telefono:</div>
                    <div style='display: inline-block;float:right;'><input type='text' id='telephonem' required/></div>
                </div>
                <div style='border: 0px solid #DE444C; width:400px; margin: 20px auto 2px auto; text-align:center;'>
                    <input type='button' value='Modificar' style='border:1px solid #A13338; color:#fff; background: #DE444C; width:25%; height: 50px;' onclick='modificarUser()'/>
                    <input type='button' value='Eliminar' style='border:1px solid #A13338; color:#fff; background: #cccccc; width:25%; height: 50px;' onclick='eliminarUser()'/>
                    <input type='reset' value='Cancelar' style='border:1px solid #5F6061; color:#5F6061; background: #fff; width:25%; height: 50px;'/>
                </div>
            </form>
        </div>
    <center><div id="tabladat"></div></center>
</body>
</html>
