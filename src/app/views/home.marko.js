// Compiled using marko@4.23.9 - DO NOT EDIT
"use strict";

var marko_template = module.exports = require("marko/src/html").t(__filename),
    marko_componentType = "/avemturismo$1.0.0/src/app/views/home.marko",
    marko_renderer = require("marko/src/runtime/components/renderer"),
    marko_loadTag = require("marko/src/runtime/helpers/load-tag"),
    init_components_tag = marko_loadTag(require("marko/src/core-tags/components/init-components-tag")),
    await_reorderer_tag = marko_loadTag(require("marko/src/core-tags/core/await/reorderer-renderer")),
    _preferred_script_location_tag = marko_loadTag(require("marko/src/core-tags/components/preferred-script-location-tag"));

function render(input, out, __component, component, state) {
  var data = input;

  out.w("<!DOCTYPE html><html lang=br><head><title>Avemturismo</title><link rel=stylesheet type=text/css href=/estatico/css/estilo.css><link rel=\"shortcut icon\" href=/estatico/res/mapamundi_logo.png type=image/x-icon></head><style>\r\n*{margin: 0; padding: 0;}\r\n\r\n@font-face{\r\n    font-family: slkscr;\r\n    src: url(estatico/res/retro.ttf)\r\n}\r\n\r\nbody{\r\n    font-family: slkscr;\r\n\tfont-size: 12px;\r\n}\r\n\r\n.menu{\r\n    position: fixed;\r\n    list-style:none; \r\n    border:1px solid #c0c0c0; \r\n    float:left; \r\n    color:#fff;\r\n    background:white; \r\n    text-shadow:0px 0px 5px #fff; \r\n}\r\n\r\n#player{\r\n    position: fixed;\r\n    bottom: 0;\r\n}\r\n\r\n.menu li{\r\n    position:relative; \r\n    float:left; \r\n    border-right:1px solid #c0c0c0; \r\n}\r\n\r\n.menu li a{\r\n    color:#333; \r\n    text-decoration:none; \r\n    padding:5px 10px; \r\n    display:block;\r\n}\r\n\r\n.menu li a:hover{\r\n    background:#333; \r\n    color:#fff;\r\n    text-shadow:0px 0px 5px #fff; \r\n}\r\n\r\n.menu li ul{\r\n    position:absolute; \r\n    top:25px; left:0;\r\n    background-color:#fff;\r\n    display:none; \r\n}\r\n\r\n.menu li:hover ul, .menu li.over ul{display:block;}\r\n\r\n.menu li ul li{\r\n    border:1px solid #c0c0c0;\r\n     display:block;\r\n      width:150px;\r\n}\r\n\r\n</style><body><audio controls id=player><source src=/estatico/res/misica.mp3 type=audio/mpeg> Seu browser não suporta este player.</audio><nav><ul class=menu><li><a href=/home>Home</a></li><li><a href=pagSobre.html>Sobre</a></li><li><a href=#>Qual era deseja ir?</a><ul><li><a href=/pagModernidade>Modernidade</a></li><li><a href=/pagAntiguidade>Antiguidade</a></li></ul></li><li><a href=#>Contato</a></li></ul><img src=/estatico/res/mapamundi.png style=width:100%></nav><button id=btn onclick=abrirModal()>aaa</button><a href=# class=abrir>abrir</a><div id=fundo></div><div id=modal><a href=# class=fechar onclick=fecharModal();>fechar</a></div><script>\r\n        function fecharModal()\r\n        {\r\n            document.getElementById('fundo').style.display = 'none';\r\n            document.getElementById('modal').style.display = 'none';\r\n        }\r\n\r\n        function abrirModal()\r\n        {\r\n            document.getElementById('fundo').style.display = 'block';\r\n            document.getElementById('modal').style.display = 'block';\r\n        }\r\n    </script>");

  init_components_tag({}, out);

  await_reorderer_tag({}, out, __component, "30");

  _preferred_script_location_tag({}, out);

  out.w("</body></html>");
}

marko_template._ = marko_renderer(render, {
    ___implicit: true,
    ___type: marko_componentType
  });

marko_template.meta = {
    id: "/avemturismo$1.0.0/src/app/views/home.marko",
    tags: [
      "marko/src/core-tags/components/init-components-tag",
      "marko/src/core-tags/core/await/reorderer-renderer",
      "marko/src/core-tags/components/preferred-script-location-tag"
    ]
  };
