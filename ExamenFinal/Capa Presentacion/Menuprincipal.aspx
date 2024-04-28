<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menuprincipal.aspx.cs" Inherits="ExamenFinal.Presentacion.Menuprincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Menu Principal</title>
    <style>:root {
  --base-grid: 8px;
  --colour-white: #fff;
  --colour-black: #1a1a1a;
}

*, :after, :before {
    box-sizing: border-box;
}

html {
  margin: 0;
  padding: 0;
  background-image: linear-gradient(-170deg,#064997 20%,#105ba7);
  background-position: 100%;
}

body {
  background-image: linear-gradient(270deg,#2b67ac 3px,transparent 0),linear-gradient(#2b67ac 3px,transparent 0),linear-gradient(270deg,rgba(43,103,172,.4) 1px,transparent 0),linear-gradient(#2b67ac 1px,transparent 0),linear-gradient(270deg,rgba(43,103,172,.4) 1px,transparent 0),linear-gradient(#2b67ac 1px,transparent 0);
  background-size: 112px 112px,112px 112px,56px 56px,56px 56px,28px 28px,28px 28px;
  font-family: Josefin Sans, sans-serif;
    margin: 0;
  padding: 0;
}

.links {
  --link-size: calc(var(--base-grid)*20);
  color: var(--colour-black);
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100%;
  min-height: 100vh;
}

.links__list {
  position: relative;
  list-style: none;
}

.links__item {
  width: var(--link-size);
  height: var(--link-size);
  position: absolute;
  top: 0;
  left: 0;
  margin-top: calc(var(--link-size)/-2);
  margin-left: calc(var(--link-size)/-2);
  --angle: calc(360deg/var(--item-total));
  --rotation: calc(140deg + var(--angle)*var(--item-count));
  transform: rotate(var(--rotation)) translate(calc(var(--link-size) + var(--base-grid)*2)) rotate(calc(var(--rotation)*-1));
}

.links__link {
  opacity: 0;
  animation: on-load .3s ease-in-out forwards;
  animation-delay: calc(var(--item-count)*150ms);
  width: 100%;
  height: 100%;
  border-radius: 50%;
  position: relative;
  background-color: var(--colour-white);
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  text-decoration: none;
  color: inherit;
}

.links__icon {
  width: calc(var(--base-grid)*8);
  height: calc(var(--base-grid)*8);
  transition: all .3s ease-in-out;
  fill: var(--colour-black);
}

.links__text {
  position: absolute;
  width: 100%;
  left: 0;
  text-align: center;
  height: calc(var(--base-grid)*2);
  font-size: calc(var(--base-grid)*2);
  display: none;
  bottom: calc(var(--base-grid)*8.5);
  animation: text .3s ease-in-out forwards;
}

.links__link:after {
  content: "";
  background-color: transparent;
  width: var(--link-size);
  height: var(--link-size);
  border: 2px dashed var(--colour-white);
  display: block;
  border-radius: 50%;
  position: absolute;
  top: 0;
  left: 0;
  transition: all .3s cubic-bezier(.53,-.67,.73,.74);
  transform: none;
  opacity: 0;
}

.links__link:hover .links__icon {
  transition: all .3s ease-in-out;
  transform: translateY(calc(var(--base-grid)*-1));
}

.links__link:hover .links__text {
  display: block;
}

.links__link:hover:after {
  transition: all .3s cubic-bezier(.37,.74,.15,1.65);
  transform: scale(1.1);
  opacity: 1;
}

@keyframes on-load {
  0% {
    opacity: 0;
    transform: scale(.3);
  }
  70% {
    opacity: .7;
    transform: scale(1.1);
  }
  100% {
    opacity: 1;
    transform: scale(1);
  }
}

@keyframes text {
  0% {
    opacity: 0;
    transform: scale(0.3) translateY(0);
  }
  100% {
    opacity: 1;
    transform: scale(1) translateY(calc(var(--base-grid)*5));
  }
}</style>
</head>
<body>
   <div class="links">
  <ul class="links__list" style="--item-total:5">
    <li class="links__item" style="--item-count:1">
      <a class="links__link" href="Agente_Vista.aspx">
       <svg class="links__icon" viewBox="0 0 24 24" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" fill="#000000"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"><defs><style>.cls-1{fill:none;stroke:#020202;stroke-miterlimit:10;stroke-width:1.91px;}</style></defs><rect class="cls-1" x="6.27" y="5.32" width="11.45" height="15.27" rx="5.73"></rect><path class="cls-1" d="M17.73,9.14h1.91A2.86,2.86,0,0,1,22.5,12v1.91a2.86,2.86,0,0,1-2.86,2.86H17.73a0,0,0,0,1,0,0V9.14A0,0,0,0,1,17.73,9.14Z"></path><path class="cls-1" d="M1.5,9.14H3.41A2.86,2.86,0,0,1,6.27,12v1.91a2.86,2.86,0,0,1-2.86,2.86H1.5a0,0,0,0,1,0,0V9.14A0,0,0,0,1,1.5,9.14Z" transform="translate(7.77 25.91) rotate(180)"></path><path class="cls-1" d="M4.36,9.14h0A7.64,7.64,0,0,1,12,1.5h0a7.64,7.64,0,0,1,7.64,7.64h0"></path><path class="cls-1" d="M19.64,16.77v1a4.78,4.78,0,0,1-4.78,4.77"></path></g></svg>
        <span class="links__text">Agente</span>
      </a>
    </li>
    <li class="links__item" style="--item-count:2">
      <a class="links__link" href="Clientes_View.aspx">
        <svg class="links__icon" fill="#000000" version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 477.297 477.297" xml:space="preserve"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <g> <g> <g> <path d="M42.85,358.075c0-24.138,0-306.758,0-330.917c23.9,0,278.867,0,302.767,0c0,8.542,0,49.44,0,99.722 c5.846-1.079,11.842-1.812,17.99-1.812c3.149,0,6.126,0.647,9.232,0.928V0H15.649v385.233h224.638v-27.158 C158.534,358.075,57.475,358.075,42.85,358.075z"></path> <path d="M81.527,206.842h184.495c1.812-10.16,5.393-19.608,10.095-28.452H81.527V206.842z"></path> <rect x="81.527" y="89.432" width="225.372" height="28.452"></rect> <path d="M81.527,295.822h191.268c5.112-3.106,10.57-5.63,16.415-7.183c-5.544-6.45-10.095-13.697-13.978-21.269H81.527V295.822z"></path> <path d="M363.629,298.669c41.071,0,74.16-33.197,74.16-74.139c0-40.984-33.09-74.16-74.16-74.16 c-40.898,0-74.009,33.176-74.009,74.16C289.62,265.472,322.731,298.669,363.629,298.669z"></path> <path d="M423.143,310.706H304.288c-21.226,0-38.612,19.457-38.612,43.422v119.33c0,1.316,0.604,2.481,0.69,3.84h194.59 c0.086-1.337,0.69-2.524,0.69-3.84v-119.33C461.733,330.227,444.39,310.706,423.143,310.706z"></path> </g> </g> <g> </g> <g> </g> <g> </g> <g> </g> <g> </g> <g> </g> <g> </g> <g> </g> <g> </g> <g> </g> <g> </g> <g> </g> <g> </g> <g> </g> <g> </g> </g> </g></svg>
        <span class="links__text">Clientes</span></a>
    </li>
    <li class="links__item" style="--item-count:3">
      <a class="links__link" href="Venta_View.aspx">
        <svg class="links__icon" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" fill="#000000"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path fill="none" stroke="#000000" stroke-width="2" d="M5.5,18 C4.11928813,18 3,19.1192881 3,20.5 C3,21.8807119 4.11928813,23 5.5,23 L22,23 M3,20.5 L3,3.5 C3,2.11928813 4.11928813,1 5.5,1 L21,1 L21,18.0073514 L5.49217286,18.0073514 M20.5,18 C19.1192881,18 18,19.1192881 18,20.5 C18,21.8807119 19.1192881,23 20.5,23 L20.5,23"></path> </g></svg>
        <span class="links__text">Catálogo</span></a>
    </li>
  </ul>
</div>
</body>
</html>
