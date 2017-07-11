function coinIn(){
}

coinIn.prototype.larger = function(id){
    if(screen.height > screen.width){
        width = $(window).width();
    }else{
        width = $(window).height();
    }
    width2 = width*-1/2;
    $(id).css({width:width, position:'fixed', 'margin-top':width2, 'top':'50%', 'left':'50%', 'margin-left':width2, 'z-index':9999}).show();
}

coinIn.prototype.reduce = function(id){
    $(id).hide();
}

coinIn = new coinIn();
