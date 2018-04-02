// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .
//= require jquery3
//= require materialize-sprockets
//= require select2
//= require cocoon
//= require unobtrusive_flash
//= require unobtrusive_flash_ui


document.addEventListener("turbolinks:load", function() { //fixes having to refresh to get javascript to work cause of turbolinks   
    $(document).ready(function(){ //loads
        $('select').select2({     //select2
            placeholder: function(){ //sets placeholder based on data-placeholder in the field
                $(this).data('placeholder');
            },
            allowClear: true
        });

        $('.datepicker').datepicker({ //datepicker
            format: 'yyyy-mm-dd',
            showDaysInNextAndPreviousMonths: true,
            showClearBtn: true,
        });
        $(".datepicker").datepicker('setDate', new Date()); //defaults current date as default selected

        $(".dropdown-trigger").dropdown(); //dropdown on the navbar

        UnobtrusiveFlash.flashOptions['timeout'] = 5000; //shows and hides flash messagetimeout in milliseconds

        $('.sidenav').sidenav(); //show side navbar on mobile

        $('.modal').modal(); //display modals

    });

    $(document).ready(function(){
        $('ul.tabs').tabs({
            swipeable : false,
            responsiveThreshold : 1500
        });
    });


    $("input[name='suboremp']:radio") //shows/hide divs on assignments for subcontracors or employees
        .change(function() {
            $("#sub").toggle($(this).val() == "button_one");
            $("#emp").toggle($(this).val() == "button_two");
            $("#subbies").select2('val', 'All'); //clears based on radio button pressing
            $("#empies").select2('val', 'All');
    });

})

$(document).on('cocoon:before-insert', function(e, insertedItem) { //adds select2 to cocoon nested fields
    $(document).ready(function() { //select2 drop boxes
        $('select').select2({     //select2
            placeholder: function(){ //sets placeholder based on data-placeholder in the field
                $(this).data('placeholder');
            },
            allowClear: true
        });

        $('.datepicker').datepicker({ //datepicker
            format: 'yyyy-mm-dd',
            showDaysInNextAndPreviousMonths: true,
            showClearBtn: true
        });
    });
});
