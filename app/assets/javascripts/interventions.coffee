# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


# $ ->
#   $(document).on 'change', '#customers_select', (evt) ->
#     $.ajax 'update_buildings',
#       type: 'GET'
#       dataType: 'script'
#       data: {
#         customer_id: $("#customers_select option:selected").val()
#       }
#       error: (jqXHR, textStatus, errorThrown) ->
#         console.log("AJAX Error: #{textStatus}")
#       success: (data, textStatus, jqXHR) ->
#         console.log("Dynamic country select OK!")

# $(document).ready ->
#   $(".customer_selection").on "change", ->
#     $.ajax
#       url: "/interventions/get_buildings"
#       type: "GET"
#       dataType: "script"
#       data:
#         customer_id: $('.customer_selection option:selected').val()

# $(document).ready ->
#   $(".customer_selection").on "change", ->
#     $.ajax
#       url: "/interventions/get_buildings"
#       type: "GET"
#       dataType: "script"
#       data:
#         customer_id: $('.customer_selection option:selected').val()
#     $('.building_selection').empty();
#     $('.building_selection').append( $('<option>Select the Contact</option>'));
#     <% @buildings.each do |building| %>
#     $('.building_selection').append($('<option value="<%= building.id %>"><%= building.customer_id %></option>'));
#     <% end %>

# jQuery ->
#     $(document).ready ->
#         $(".form").hide();
#         # $(".employee_selection").show();
#         # $("#customer_selection").show();
#     $(".customer_selection").on "change", ->
#         @customer_id = $(this).find(':selected').text();
#         options = $(buildings).filter("optgroup[label='#{customer}']").html
#         if options
#             $('buildings_id')    

    									
    
        