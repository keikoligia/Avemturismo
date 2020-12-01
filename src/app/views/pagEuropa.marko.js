// Compiled using marko@4.23.9 - DO NOT EDIT
"use strict";

var marko_template = module.exports = require("marko/src/html").t(__filename),
    marko_componentType = "/avemturismo$1.0.0/src/app/views/pagEuropa.marko",
    marko_renderer = require("marko/src/runtime/components/renderer"),
    marko_loadTag = require("marko/src/runtime/helpers/load-tag"),
    init_components_tag = marko_loadTag(require("marko/src/core-tags/components/init-components-tag")),
    await_reorderer_tag = marko_loadTag(require("marko/src/core-tags/core/await/reorderer-renderer")),
    _preferred_script_location_tag = marko_loadTag(require("marko/src/core-tags/components/preferred-script-location-tag"));

function render(input, out, __component, component, state) {
  var data = input;

  out.w("<!DOCTYPE html><html lang=br><head><title>Avemturismo</title><link rel=stylesheet type=text/css href=/estatico//css/estilo.css><link rel=\"shortcut icon\" href=/estatico/res/mapamundi_logo.png type=image/x-icon></head><body><div class=wrapper><nav><ul class=menu><li><a href=/pagInicial>Home</a></li><li><a href=#>Maravilhas do mundo</a><ul><li><a href=/pagModernidade>Moderno</a></li><li><a href=/pagAntiguidade>Antigo</a></li><li><a href=/pagNatural>Natural</a></li></ul></li></ul></nav><img src=/estatico/res/europa.png style=\"width: 90%; height: 90%;\"><img src=/estatico/res/pin.png class=rpin id=pin-sue style=\"width: 2%;\"><img src=/estatico/res/pin.png class=rpin id=pin-noru style=\"width: 2%;\"><img src=/estatico/res/pin.png class=rpin id=pin-ita style=\"width: 2%;\"><img src=/estatico/res/pin.png class=rpin id=pin-sanMa style=\"width: 2%;\"><img src=/estatico/res/pin.png class=rpin id=pin-UK style=\"width: 2%;\"><img src=/estatico/res/pin.png class=rpin id=pin-Es style=\"width: 2%;\"><img src=/estatico/res/pin.png class=rpin id=pin-por style=\"width: 2%;\"><img src=/estatico/res/pin.png class=rpin id=pin-fra style=\"width: 2%;\"><img src=/estatico/res/pin.png class=rpin id=pin-hol style=\"width: 2%;\"><img src=/estatico/res/pin.png class=rpin id=pin-sui style=\"width: 2%;\"><img src=/estatico/res/pin.png class=rpin id=pin-bel style=\"width: 2%;\"><img src=/estatico/res/pin.png class=rpin id=pin-gre style=\"width: 2%;\"><img src=/estatico/res/pin.png class=rpin id=pin-ale style=\"width: 2%;\"></div>");

  init_components_tag({}, out);

  await_reorderer_tag({}, out, __component, "34");

  _preferred_script_location_tag({}, out);

  out.w("</body></html>");
}

marko_template._ = marko_renderer(render, {
    ___implicit: true,
    ___type: marko_componentType
  });

marko_template.meta = {
    id: "/avemturismo$1.0.0/src/app/views/pagEuropa.marko",
    tags: [
      "marko/src/core-tags/components/init-components-tag",
      "marko/src/core-tags/core/await/reorderer-renderer",
      "marko/src/core-tags/components/preferred-script-location-tag"
    ]
  };
