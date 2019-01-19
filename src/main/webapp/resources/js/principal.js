/* Parallax*/
$(document).ready(function(){
    console.log('ready');
    $(window).scroll(function(){
        var barra = $(window).scrollTop();
        var posicion =  (barra * 0.1);
        
        $('#parallax-back').css({

            'background-position': '0 -' + posicion + 'px'
        });
 
    });
/* END PARALLAX */
/* CAMBIAR ESTIL DEL HEADER SEGONS LA PAGINA QUE ES VISUALITZA */
    var URLactual = encodeURIComponent(location.pathname); 

    if (URLactual.search('equips') >= 1){
        $("a:contains('equips')").addClass("desactivat");
    } else {
        $("a:contains('equips')").removeClass("desactivat");
    }

    if (URLactual.search('jugadors') >= 1){
        $("a:contains('golejadors')").addClass("desactivat");
    } else {
        $("a:contains('golejadors')").removeClass("desactivat");
    }
    
    if (URLactual.search('usuaris') >= 1){
        $("a:contains('usuaris')").addClass("desactivat");
    } else {
        $("a:contains('usuaris')").removeClass("desactivat");
    }
    
    if (URLactual.search('partits') >= 1){
        $("a:contains('Calendari')").addClass("desactivat");
    } else {
        $("a:contains('Calendari')").removeClass("desactivat");
    }
    
    if (URLactual.search('Admin') >= 1){
        $("a:contains('Administrador')").addClass("desactivat");
    } else {
        $("a:contains('Administrador')").removeClass("desactivat");
    }
    
    if (URLactual.search('Responsable') >= 1){
        $("a:contains('Responsable')").addClass("desactivat");
    } else {
        $("a:contains('Responsable')").removeClass("desactivat");
    }

    if (URLactual.search('login') >= 1){
        $("a:contains('Log')").addClass("desactivatBoto");
    } else {
        $("a:contains('Log')").removeClass("desactivat");
    }
    
/* END CAMBIAR ESTIL DEL HEADER SEGONS LA PAGINA QUE ES VISUALITZA */
/* Add smooth scrolling to all links */
var $root = $('html, body');

$('a[href^="#"]').click(function () {
    $root.animate({
        scrollTop: $( $.attr(this, 'href') ).offset().top
    }, 500);

    return false;
});
  /* END Add smooth scrolling to all links */
  
/* SCROLL TO TOP */
// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {
    scrollFunction();
};

function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("scrolltop").style.display = "block";
    } else {
        document.getElementById("scrolltop").style.display = "none";
    }
}
// When the user clicks on the button, scroll to the top of the document
$('#scrolltop').click(function () {
			$('body,html').animate({
				scrollTop: 0
			}, 800);
			return false;
		});
/* END SCROLL TO TOP */
/* TIPSO */
$('.tipsoEquips').tipso({
    tooltipHover: 'true',
    background: '#F5F5F5',
    titleBackground : '#31305E',
    color: '#31305E',
    titleColor: '#ffffff',
    size: '10px',
    useTitle: false,
    titleContent: 'Fes click per més informació sobre...'

});
        
$('.tipsoEditarJug').tipso({
    tooltipHover: 'true',
    background: '#F5F5F5',
    titleBackground : '#31305E',
    color: '#31305E',
    titleColor: '#ffffff',
    size: '10px',
    useTitle: false,

});

$('.tipsoEditarUsuari').tipso({
    tooltipHover: 'true',
    background: '#F5F5F5',
    titleBackground : '#31305E',
    color: '#31305E',
    titleColor: '#ffffff',
    size: '10px',
    useTitle: false,

});
/* END TIPSO */


/* CRONOMETRO */
var tiempo = {
        hora: 0,
        minuto: 0,
        segundo: 0
    };

    var 
    running_time = null;

    $(".start").click(function(){
        if ($(this).text() == 'Comença el partit!' || $(this).text() == 'Segueix!')
        {
            $(this).text('Pausa');
            $(this).parent().addClass('active-btn');         
            
            running_time = setInterval(function(){
                // Segundos
                tiempo.segundo++;
                if(tiempo.segundo >= 60)
                {
                    tiempo.segundo = 0;
                    tiempo.minuto++;
                }      

                // Minutos
                if(tiempo.minuto >= 60)
                {
                    tiempo.minuto = 0;
                    tiempo.hora++;
                }

                $("#hour").text(tiempo.hora < 10 ? '0' + tiempo.hora : tiempo.hora);
                $("#minute").text(tiempo.minuto < 10 ? '0' + tiempo.minuto : tiempo.minuto);
                $("#second").text(tiempo.segundo < 10 ? '0' + tiempo.segundo : tiempo.segundo);
            }, 1000);
        }
        else 
        {
            $(this).text('Segueix!');
            $(this).parent().removeClass('active-btn');
            clearInterval(running_time);
        }
    });
    $('.stop').click(function(){
        location.reload();
    });
    /* END CRONOMETRO */
});
