// Compiled using marko@4.23.9 - DO NOT EDIT
"use strict";

var marko_template = module.exports = require("marko/src/html").t(__filename),
    marko_componentType = "/avemturismo$1.0.0/src/app/views/pagInicial.marko",
    marko_renderer = require("marko/src/runtime/components/renderer"),
    marko_loadTag = require("marko/src/runtime/helpers/load-tag"),
    init_components_tag = marko_loadTag(require("marko/src/core-tags/components/init-components-tag")),
    await_reorderer_tag = marko_loadTag(require("marko/src/core-tags/core/await/reorderer-renderer")),
    _preferred_script_location_tag = marko_loadTag(require("marko/src/core-tags/components/preferred-script-location-tag"));

function render(input, out, __component, component, state) {
  var data = input;

  out.w("<!DOCTYPE html><html lang=br><head><title>Avemturismo</title><link rel=stylesheet type=text/css href=/estatico/css/estilo.css><link rel=\"shortcut icon\" href=/estatico/res/mapamundi_logo.png type=image/x-icon></head><body><nav><ul class=menu><li><a href=#>Home</a></li><li><a href=pagSobre.html>Sobre</a></li><li><a href=#>Maravilhas do mundo</a><ul><li><a href=/estatico/pagModernidade.marko>Moderno</a></li><li><a href=/estatico/pagAntiguidade.marko>Antigo</a></li><li><a href=/estatico/pagNatural.marko>Natural</a></li></ul></li><li><a href=#>Contato</a></li></ul></nav><img src=/estatico/res/mapamundi.png style=width:100%><img src=/estatico/res/pin.png class=rpin id=pin-amsul style=\"width: 2%;\"> <img src=/estatico/res/pin.png class=rpin id=pin-amnorte style=\"width: 2%;\"> <img src=/estatico/res/pin.png class=rpin id=pin-amcen style=\"width: 2%;\"> <img src=/estatico/res/pin.png class=rpin id=pin-eu style=\"width: 2%;\"> <img src=/estatico/res/pin.png class=rpin id=pin-asia style=\"width: 2%;\"> <img src=/estatico/res/pin.png class=rpin id=pin-oce style=\"width: 2%;\"> <img src=/estatico/res/pin.png class=rpin id=pin-afri style=\"width: 2%;\"> ");

  init_components_tag({}, out);

  await_reorderer_tag({}, out, __component, "31");

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
