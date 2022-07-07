#!/bin/bash

get_mysql_root_password() {
  
  print_banner
  printf "${WHITE} 💻 Ingrese la contraseña predeterminada para el sistema (contraseña raíz mysql):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " mysql_root_password
}

get_instancia_add() {
  
  print_banner
  printf "${WHITE} 💻 Introduzca el nombre de la empresa a configurar (Utilizar Letras minusculas):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " instancia_add
}

get_max_whats() {
  
  print_banner
  printf "${WHITE} 💻 Introduzca el número máximo de conexiones que la empresa ${instancia_add} podra registrar:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " max_whats
}

get_max_user() {
  
  print_banner
  printf "${WHITE} 💻 Introduzca el número máximo de agentes que la empresa ${instancia_add} podra crear:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " max_user
}

get_frontend_url() {
  
  print_banner
  printf "${WHITE} 💻 Ingrese el dominio FRONTEND/PANEL para ${instancia_add}:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " frontend_url
}

get_backend_url() {
  
  print_banner
  printf "${WHITE} 💻 Ingrese el dominio BACKEND/API para el ${instancia_add}:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " backend_url
}

get_frontend_port() {
  
  print_banner
  printf "${WHITE} 💻 Introduzca el puerto FRONTEND para  ${instancia_add}; Ej: 3000 A 3999 ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " frontend_port
}


get_backend_port() {
  
  print_banner
  printf "${WHITE} 💻 Ingrese el puerto BACKEND para esta instancia; Ej: 4000 A 4999 ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " backend_port
}

get_phpmyadmin_port() {
  
  print_banner
  printf "${WHITE} 💻 Introduzca el puerto PHPMYADMIN para ${instancia_add}; Ej: 8080 ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " phpmyadmin_port
}

get_mysql_port() {
  
  print_banner
  printf "${WHITE} 💻 Digite a porta MYSQL para ${instancia_add}; Ex: 3306 (3306, 3307...) ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " mysql_port
}



get_urls() {
  get_mysql_root_password
  get_instancia_add
  get_max_whats
  get_max_user
  get_frontend_url
  get_backend_url
  get_frontend_port
  get_backend_port
  get_phpmyadmin_port
  get_mysql_port
}

software_update() {
  get_instancia_add
  frontend_update
  backend_update
}

inquiry_options() {
  
  print_banner
  printf "${WHITE} 💻 Bienvenido al instalador de WBlaster. ¡Seleccione su próxima acción a continuación!${GRAY_LIGHT}"
  printf "\n\n"
  printf "   [1] Instalar\n"
  printf "   [2] Atualizar\n"
  printf "\n"
  read -p "> " option

  case "${option}" in
    1) get_urls ;;

    2) 
      software_update 
      exit
      ;;

    *) exit ;;
  esac
}


