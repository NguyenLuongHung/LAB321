/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function(){
    var closeSpan = $(".close");
    
    var modal = $(".dialbox-img-home");
    
    var modal1 = document.getElementById("dialbox-img-home");
    
    var image = $(".img-home");
    
    image.click(function(){
       modal.show(500); 
    });
    
    closeSpan.click(function(){
        console.log('closing');
        console.log(modal);
        modal.hide(500);
    });
    
    $(window).click(function(event){
        if (event.target === modal1){
            modal.hide(400);
        }
    });
});