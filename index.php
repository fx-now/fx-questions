<?
session_start();
error_reporting(E_ALL);
include("inc/bigboss.php");
include("inc/define.php");
include("inc/odin.php");

//conecta
mysql_connect("localhost","****","****") or die(mysql_error());
mysql_select_db("****") or die(mysql_error());

//verifica qual arquivo está sendo acessado
$path = url($_SERVER['REQUEST_URI'],DIR);

//se for página de login, exibe
if($path == "pages/login.php"){
	include($path);
}elseif($path == "pages/sair.php"){ // se for logoff, faz
	logoff("?login");
}else{
	//se não for login ou logoff, verifica se o usuário existe realmente e está logado
	if(is_on() == true){
		include("temas/".TEMA."/header.php");
		include($path);
		include("temas/".TEMA."/footer.php");
	}else{ // se não existe ou não está logado, encaminha para a tela de login
		is_autenticado("?login");
	}
}
