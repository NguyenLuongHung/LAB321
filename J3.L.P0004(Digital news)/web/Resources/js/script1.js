/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function(){
    
    
    
    $(".search-btn").click(function(){
        
        var contentDiv = $(".content-align");
        var searchDiv = $(".search-result");
        var searchVal = $(".search-title").val();
       $.ajax({
          type: "GET",
          data: {
              searchTitle: searchVal
          },
          url: "search",
          success: function(artList){
              contentDiv.hide();
              var output = '';
              console.log('hung');
         
              
              for (var i in artList){
                  output += '<a href="article?id='+artList[i].id+'">'+artList[i].title+'</a></br>';
              }
              
              
              searchDiv.html(output);
          }
       });
    });
    
    
});