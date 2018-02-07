/**
 * Project events
 */

$(document).ready(function(){
	
	$( document ).ajaxError(function( event, jqxhr, settings, thrownError ) {
		  if ( jqxhr.responseText.indexOf("No Session") != -1 ) {
			  alert("Please Login to Continue....");
		    window.location=getContextPath()+"/goto/index.html";
		  }
		});
	
	$('#sub1').click(function(){
        if($('#name').val()=='' || $('#pass').val()=='')
            {
                if($('#name').val()=='')
                   {
                      validate($('#name'),$('#name1'));
                   }
             if($('#pass').val()=='')
                   {
                       validate($('#pass'),$('#pass1'));     
                   }
            }
        else{
        	var name=$('#name').val();
        	var password=$('#pass').val();
        	$.ajax({
  		      type: 'GET',
  		      url: getContextPath()+"/login.html",
  		      data: {'name':name,'password':password},
  		      success: function(response) { 
  		    	  
  		    	if(response!=undefined && response.toString() == "success"){
  		    		window.location= getContextPath()+"/goto/inbox.html";
  		    	}
  		    	else{
  		    		alert("login failed");
  		    		window.location=getContextPath()+"/goto/index.html";
  		    	}
  		       }
  		});
        	
        	
        }
        });
    
         	
	$('#sub').on('click',function(){
        if($('#user').val()=='' || $('#phone').val()=='' || $('#email').val()=='' || $('#name').val()=='' || $('#pass').val()==''){
               if($('#email').val()=='')
                   {
                      validate($('#email'),$('#email1'));                      
                   }
            if($('#user').val()=='')
                   {
                      validate($('#user'),$('#user1'));                      
                   }
            if($('#phone').val()=='')
                   {
                      validate($('#phone'),$('#phone1'));                      
                   }
             if($('#name').val()=='')
                   {
                      validate($('#name'),$('#name1'));
                   }
             if($('#pass').val()=='')
                   {
                       validate($('#pass'),$('#pass1'));     
                   }
        }
        else{
        	var user=$('#user').val();
        	var name=$('#name').val();
        	var email=$('#email').val();
        	var phone=$('#phone').val();
        	var password=$('#pass').val();
        	$.ajax({
  		      type: 'GET',
  		      url: getContextPath()+"/busregister/register.html",
  		      data: {'user':user,'name':name,'email':email,'phone':phone,'password':password},
  		      success: function(response) { 
  		    	  
  		    	 alert(response);
  		    	window.location= getContextPath()+"/goto/login.html";
  		       }
  		});
        }  
        
        });
	$('#editSearch').hide();
	$('#ticketSearch').on('click',function(event){
		var source = $('#source').val();
		var destination = $('#destination').val();
		if(source=="" || destination=="" ){
			bootbox.alert("please enter the boarding point and destination point");
		}
		$('#copysource').val(source);
		$('#copydestination').val(destination);
		$('#editSearch').show();
		$('#mycarousel').hide();
		$.ajax({
		      type: 'GET',
		      url: getContextPath()+"/bus/details.html",
		      data: {'source':source,'destination':destination},
		      success: function(response) { 
		    	  	if(response==undefined){
		    	  		var table = $('#busdetails').find('table');
		    	  		table.append('<tr><td colspan="5"><h1>NO BUSES AVALIABLE</h1></td></tr>');
		    	  	
		    	  	}
		    	  	else{
		    	  		var parsed = JSON.parse(response);
		    	  		var table = $('#busdetails').find('table');
		    	  		table.find('tr').remove();
		    	  		table.append('<tr id="index-line"><td>BUS ID</td><td>TYPE</td><td>Arrival</td><td>Departure</td><td>Fare</td></tr>');
		    	  	$.each(parsed,function(index,element){
		    	  		console.log(element.name);
		    	  		table.append('<tr><td>'+element.busID+'</td><td>'+element.type+'</td><td>'+element.arrival+'</td><td>'+element.departure+'</td><td>'+element.fare+'</td><td><button class="btn">Book</button></td></tr>');
		    	  	});
		    	  	}
		      }
		});
		
		
		return false;
	});
	
	
	
	$('#editSearch').on('click',function(){
		$(this).hide();
		$('#mycarousel').show();
	});
	$(document).on('click','button',function(e){
		if($(this).text()=="Book"){
		if($(this).closest('div').attr('id') == 'busdetails'){
			var busid = $(this).closest('tr').find('td:eq(0)').html();
			$('#rowseatlayout').remove();
			$('#passdetail-dynamic').remove();
			$(this).closest('tr').after('<tr id="rowseatlayout" ><td></td><td colspan=5>'+$('#seatLayout').html()+'</td></tr><tr id="passdetail-dynamic"><td colspan=5>'+$('#pass-details').html()+'</td></tr>');
			$.ajax({
			      type: 'GET',
			      url: getContextPath()+"/bus/fetchSeats/"+busid+".html",
			      success: function(response) { 
			    	  	if(response==undefined){
			    	  		
			    	  	}
			    	  	else{
			    	  		var parsed = JSON.parse(response);
			    	  		init(parsed);
			    	  	}
			      }
			
			});
			}
			
		}
		return false;
	});
	
	
	

	var settings = {
	               rows: 4,
	               cols: 12,
	               rowCssPrefix: 'row-',
	               colCssPrefix: 'col-',
	               seatWidth: 35,
	               seatHeight: 35,
	               seatCss: 'seat',
	               selectedSeatCss: 'selectedSeat',
	               selectingSeatCss: 'selectingSeat'
	           };



	//seat layout

	var init = function (reservedSeat) {
	                var str = [], seatNo, className;
	                for (i = 0; i < settings.rows; i++) {
	                    for (j = 0; j < settings.cols; j++) {
	                        seatNo = (i + j * settings.rows + 1);
	                        className = settings.seatCss + ' ' + settings.rowCssPrefix + i.toString() + ' ' + settings.colCssPrefix + j.toString();
	                        if ($.isArray(reservedSeat) && $.inArray(seatNo, reservedSeat) != -1) {
	                            className += ' ' + settings.selectedSeatCss;
	                        }
	                        str.push('<li class="' + className + '"' +
	                                  'style="top:' + (i * settings.seatHeight).toString() + 'px;left:' + (j * settings.seatWidth).toString() + 'px">' +
	                                  '<a title="' + seatNo + '">' + seatNo + '</a>' +
	                                  '</li>');
	                    }
	                }
	                $('#place').html(str.join(''));
	            };
	            //case I: Show from starting
	            //init();
	 
	            //Case II: If already booked
	           /* var bookedSeats = [5, 10, 25];
	            init(bookedSeats);*/



	//selection seats



	$(document).on('click','.' + settings.seatCss,function () {
		
		
	if ($(this).hasClass(settings.selectedSeatCss)){
	    alert('This seat is already reserved');
	}
	else{
		
	    $(this).toggleClass(settings.selectingSeatCss);
	    var seatno=$(this).closest('li').find('a').attr('title');
	    
	    if($(this).hasClass(settings.selectingSeatCss)){
	    	var passdetails=$('#pass-details-table');
	    	$('#pass-details-table').css('display','block');
	    	$('#detail-index').after('<tr id="detail-row"><td class="pass-seat-id">'+seatno+'</td><td><input type="text" class="pass-name" placeholder="Name" /></td><td><input type="text" placeholder="Phone" /></td><td><input type="text" placeholder="email" /></td></tr>');
	    }
	    else{
	    	
	    	$('#pass-details-table').find('td:contains("'+seatno+'")').closest('tr').remove();
	     	if($('#pass-details-table').find('tr').length<4){
	    		$('#pass-details-table').css('display','none');
	    	}
	    }
	    }
	});
	$(document).on('click','#btnShow',function () {
	    var str = [];
	    $.each($('#place li.' + settings.selectedSeatCss + ' a, #place li.'+ settings.selectingSeatCss + ' a'), function (index, value) {
	        str.push($(this).attr('title'));
	    });
	    alert(str.join(','));
	});
	$("a:contains('LOGOUT')").on('click',function(){
		window.location = getContextPath()+"/logout.html";
	});
	$(document).on('click','#btnBook',function () {
	    var str = [], item;
	    $.each($('#place li.' + settings.selectingSeatCss + ' a'), function (index, value) {
	        item = $(this).attr('title');                   
	        str.push(item);                   
	    });
	    if(str.length == 0){
	    	alert('please book seat to continue');return;
	    }
	    alert(str.join(','));
	    var busId=$(this).closest('table').closest('tr').prev().prev().find('td:eq(0)').text();
	    var bookVO =[];
	    $('#pass-details-table tr#detail-row').each(function(){
	    	var ticket={};

	    	ticket["passId"]=parseInt(passid);
	    	ticket["passName"]=$(this).find(".pass-name").val();
	    	ticket["seatNo"]=parseInt($(this).find(".pass-seat-id").text());
	    	ticket["busId"]=parseInt(busId);
	    	bookVO.push(ticket);
	    });
		$.ajax({
		      type: 'POST',
		      contentType: "application/json; charset=utf-8",
		      mimeType: 'application/json',
		      //datatype : "application/json",
		      async : false,
		      dataType: 'html',
		      url: getContextPath()+"/bus/bookSeat.html",
		      data: JSON.stringify(bookVO),
		      success: function(response) {
		    	  bootbox.alert(response);
		             window.location = getContextPath()+"/goto/inbox.html";
		             
		       }       
		});

	});
});


function getContextPath() {
	   return window.location.pathname.substring(0, window.location.pathname.indexOf("/",2));
	}
function validate(obj,obj1){
    obj.css('border-color','red');
               $('<span>please fill this box</span>').appendTo(obj1);
               $('span').css('left','60px').css('position','relative').css('font-size','10px').css('color','red');     
        
}