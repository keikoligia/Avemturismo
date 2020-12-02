// Compiled using marko@4.23.9 - DO NOT EDIT
"use strict";

var marko_template = module.exports = require("marko/src/html").t(__filename),
    marko_componentType = "/avemturismo$1.0.0/src/app/views/pagAmSul.marko",
    marko_renderer = require("marko/src/runtime/components/renderer"),
    marko_forOf = require("marko/src/runtime/helpers/for-of"),
    marko_attr = require("marko/src/runtime/html/helpers/attr"),
    helpers_escape_xml = require("marko/src/runtime/html/helpers/escape-xml"),
    marko_escapeXml = helpers_escape_xml.x,
    marko_loadTag = require("marko/src/runtime/helpers/load-tag"),
    init_components_tag = marko_loadTag(require("marko/src/core-tags/components/init-components-tag")),
    await_reorderer_tag = marko_loadTag(require("marko/src/core-tags/core/await/reorderer-renderer")),
    _preferred_script_location_tag = marko_loadTag(require("marko/src/core-tags/components/preferred-script-location-tag"));

function render(input, out, __component, component, state) {
  var data = input;

  out.w("<!DOCTYPE html><html lang=br><head><title>Avemturismo</title><link rel=stylesheet type=text/css href=/estatico//css/estilo.css><link rel=\"shortcut icon\" href=/estatico/res/mapamundi_logo.png type=image/x-icon></head><body><div class=wrapper><nav><ul class=menu><li><a href=/pagInicial>Home</a></li><li><a href=#>Maravilhas do mundo</a><ul><li><a href=/pagModernidade>Moderno</a></li><li><a href=/pagAntiguidade>Antigo</a></li><li><a href=/pagNatural>Natural</a></li></ul></li></ul></nav><img src=/estatico/res/amsul.png style=\"width: 90%; height: 90%;\"><img src=/estatico/res/pin.png class=rpin id=pin-br style=\"width: 2%;\" onclick=abrirModal();><img src=/estatico/res/pin.png class=rpin id=pin-arg style=\"width: 2%;\"><img src=/estatico/res/pin.png class=rpin id=pin-chile style=\"width: 2%;\"><img src=/estatico/res/pin.png class=rpin id=pin-peru style=\"width: 2%;\"><img src=/estatico/res/pin.png class=rpin id=pin-equa style=\"width: 2%;\"><img src=/estatico/res/pin.png class=rpin id=pin-gui style=\"width: 2%;\"><img src=/estatico/res/pin.png class=rpin id=pin-colom style=\"width: 2%;\"></div><div id=fundo></div><div id=modal>");

  var $for$0 = 0;

  marko_forOf(data.amSul, function(ptSul) {
    var $keyScope$0 = "[" + (($for$0++) + "]");

    out.w("<div class=slideshow-container><div class=\"mySlides fade\"><div class=numbertext>1 / 3</div><img" +
      marko_attr("src", ptSul.urlFoto) +
      " style=width:100%><div class=text>" +
      marko_escapeXml(ptSul.nomePonto) +
      "</div><div class=text>" +
      marko_escapeXml(ptSul.descricao) +
      "</div></div></div>");
  });

  out.w("<a class=prev onclick=plusSlides(-1)>&#10094;</a><a class=next onclick=plusSlides(1)>&#10095;</a><br><div style=text-align:center><span class=dot onclick=currentSlide(1)></span> <span class=dot onclick=currentSlide(2)></span> <span class=dot onclick=currentSlide(3)></span> </div><a href=# class=fechar onclick=fecharModal();>fechar</a></div><script>\r\n        function fecharModal()\r\n        {\r\n            document.getElementById('fundo').style.display = 'none';\r\n            document.getElementById('modal').style.display = 'none';\r\n        }\r\n\r\n        function abrirModal()\r\n        {\r\n            document.getElementById('fundo').style.display = 'block';\r\n            document.getElementById('modal').style.display = 'block';\r\n        }\r\n        var slideIndex = 1;\r\n            showSlides(slideIndex);\r\n\r\n        function plusSlides(n) {\r\n            showSlides(slideIndex += n);\r\n        }\r\n\r\n        function currentSlide(n) {\r\n            showSlides(slideIndex = n);\r\n        }\r\n\r\n        function showSlides(n) {\r\n            var i;\r\n            var slides = document.getElementsByClassName(\"mySlides\");\r\n            var dots = document.getElementsByClassName(\"dot\");\r\n            if (n > slides.length) {slideIndex = 1}    \r\n            if (n < 1) {slideIndex = slides.length}\r\n            for (i = 0; i < slides.length; i++) {\r\n                slides[i].style.display = \"none\";  \r\n            }\r\n            for (i = 0; i < dots.length; i++) {\r\n                dots[i].className = dots[i].className.replace(\" active\", \"\");\r\n            }\r\n            slides[slideIndex-1].style.display = \"block\";  \r\n            dots[slideIndex-1].className += \" active\";\r\n        }\r\n    </script>");

  init_components_tag({}, out);

  await_reorderer_tag({}, out, __component, "44");

  _preferred_script_location_tag({}, out);

  out.w("</body></html>");
}

marko_template._ = marko_renderer(render, {
    ___implicit: true,
    ___type: marko_componentType
  });

marko_template.meta = {
    id: "/avemturismo$1.0.0/src/app/views/pagAmSul.marko",
    tags: [
      "marko/src/core-tags/components/init-components-tag",
      "marko/src/core-tags/core/await/reorderer-renderer",
      "marko/src/core-tags/components/preferred-script-location-tag"
    ]
  };
