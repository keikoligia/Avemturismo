// Compiled using marko@4.23.9 - DO NOT EDIT
"use strict";

var marko_template = module.exports = require("marko/src/html").t(__filename),
    marko_componentType = "/avemturismo$1.0.0/src/app/views/pagInicial.marko",
    marko_renderer = require("marko/src/runtime/components/renderer"),
    marko_forOf = require("marko/src/runtime/helpers/for-of"),
    marko_loadTag = require("marko/src/runtime/helpers/load-tag"),
    init_components_tag = marko_loadTag(require("marko/src/core-tags/components/init-components-tag")),
    await_reorderer_tag = marko_loadTag(require("marko/src/core-tags/core/await/reorderer-renderer")),
    _preferred_script_location_tag = marko_loadTag(require("marko/src/core-tags/components/preferred-script-location-tag"));

function render(input, out, __component, component, state) {
  var data = input;

  out.w("<!DOCTYPE html><html lang=br><head><title>Avemturismo</title><link rel=stylesheet type=text/css href=/estatico/css/estilo.css><link rel=\"shortcut icon\" href=/estatico/res/mapamundi_logo.png type=image/x-icon></head><body><nav><ul class=menu><li><a href=/pagInicial>Home</a></li><li><a href=#>Maravilhas do mundo</a><ul><li><a href=/pagModernidade>Moderno</a></li><li><a href=/pagAntiguidade>Antigo</a></li><li><a href=/pagNatural>Natural</a></li></ul></li></ul></nav><img src=/estatico/res/mapamundi.png style=width:100%><a href=/pagAmSul><img src=/estatico/res/pin.png class=rpin id=pin-amsul style=\"width: 2%;\"></a><a href=/pagAmNorte><img src=/estatico/res/pin.png class=rpin id=pin-amnorte style=\"width: 2%;\"></a> <img src=/estatico/res/pin.png class=rpin id=pin-amcen style=\"width: 2%;\"><a href=/pagEuropa><img src=/estatico/res/pin.png class=rpin id=pin-eu style=\"width: 2%;\"> </a><a href=/pagAsia><img src=/estatico/res/pin.png class=rpin id=pin-asia style=\"width: 2%;\"> </a><a href=/pagOceania><img src=/estatico/res/pin.png class=rpin id=pin-oce style=\"width: 2%;\"> </a><a href=/pagAfrica><img src=/estatico/res/pin.png class=rpin id=pin-afri style=\"width: 2%;\"> </a><div id=fundo></div>");

  var $for$0 = 0;

  marko_forOf(data.amSul, function(ptAmSul) {
    var $keyScope$0 = "[" + (($for$0++) + "]");

    out.w("<div id=modal><a href=# class=fechar onclick=fecharModal();>fechar</a></div>");
  });

  out.w("<script>\r\n        function fecharModal()\r\n        {\r\n            document.getElementById('fundo').style.display = 'none';\r\n            document.getElementById('modal').style.display = 'none';\r\n        }\r\n\r\n        function abrirModal()\r\n        {\r\n            document.getElementById('fundo').style.display = 'block';\r\n            document.getElementById('modal').style.display = 'block';\r\n        }\r\n    </script>");

  init_components_tag({}, out);

  await_reorderer_tag({}, out, __component, "36");

  _preferred_script_location_tag({}, out);

  out.w("</body></html>");
}

marko_template._ = marko_renderer(render, {
    ___implicit: true,
    ___type: marko_componentType
  });

marko_template.meta = {
    id: "/avemturismo$1.0.0/src/app/views/pagInicial.marko",
    tags: [
      "marko/src/core-tags/components/init-components-tag",
      "marko/src/core-tags/core/await/reorderer-renderer",
      "marko/src/core-tags/components/preferred-script-location-tag"
    ]
  };
